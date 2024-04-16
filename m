Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A6E3A27B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713244163; cv=none; b=JuAc3fN35jFH8Yh4PZdGOlYXYrcdsRk/yJO6WGn+MFetLC0Mce+uacdBlZe/SH4cwhLvZHIS74QbrT9Wozk/6W5sROnAAbg+q3xSHWMJk3JVWTNPkPDj5m/DGljx7xyTDZgunefLtGqg0tvJyKkSk+Rd2XRqUB0hs+6UUI9TCl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713244163; c=relaxed/simple;
	bh=2vYr3AVwnwi5X1BQ3EPhOGgbLDmXPX5aUbhFqZ7z3ik=;
	h=To:Subject:From:Message-Id:Date; b=UHgmUgJBOvBQzQlrC28wTGozkR7wC7ufSFZ1zpsYWcSuQuNleiIDPod++1zfhRXToXTHIlWo+S6NIMhKee+jFidt3VS5t+xMweE6KI+Je1lzgRo2dx7D7WjOnmxc4kPnaPfIiDIoyCSuCjEgmAMacVZqoWgwPjEdAtn8sK+Lkik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeBzIgL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeBzIgL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64E2C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713244162;
	bh=2vYr3AVwnwi5X1BQ3EPhOGgbLDmXPX5aUbhFqZ7z3ik=;
	h=To:Subject:From:Date:From;
	b=IeBzIgL5x42uzNeB+3qEM6czJl0/hSacujK/BooLwtzWGJ9Ofqr1FXb8kdN1TWlfY
	 iob2lTTyjNonNPzRIONz5LRopNNZg97oH9gFoATSJ6WmTDrlt+sT9ciqHenuto/gG/
	 kwR9oxSBcmTew1YQD6f7k7XAr8Tp3xKLSRgjy8J2ztHEV5VS/b7oYwphQCGMrsvMNK
	 T7rjMwlSYiTI4/mrfnxrcHHcHulQgH73nwzAxWIJHRfQPLessf3fmjeyFSyfeQzps4
	 Coiq3VSHapytM31fopUpN9e5IjytdgF0951U7BNqECNkT3NfDLuyoGytS8gID9+3SP
	 vsQc+DS74q6JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1F0C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 05:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324416275.6979.633552881726988644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa674cc62a3ea491b635c222d29eb669644419d63895742e081e10755bc184b5
Date: Tue, 16 Apr 2024 05:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713244162
