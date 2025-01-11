Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C391118E75A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736588153; cv=none; b=QZ22yizwLng6Whn5s8aaglUqm1aalhPtIyM2TlYHLvnpJ9vfGoCsiayBYg6mfw2XmZ4D4aGKQEzh+OhmGHKATo+WkQG/FJXlCnGPKPPkC+1nsjMqfwl9/mEkc46gCN+szBTld8z30fL6fehiac+EyyY4E5ybDli2LsAo+BA3oUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736588153; c=relaxed/simple;
	bh=L59nPCGmH9QfJygCFIEBSSGSX0dQhNB5ZRVFhl6O8Jc=;
	h=To:Subject:From:Message-Id:Date; b=brc04u1FZWgY8ydZa5qhFNQxvGiCj6ml6w8eTG8jgzUWYVliYzZPsb+PtSPBd+6WWfMGNgy5NlUd4G1jujCQ1Nwyn0kl4c0TIDBV15r78ZgnwJ/fSV6eSq06LiTTqJs7JpZW+qDEuLeztVLP3uw501LtM3zBM1FWHYJtL/E+HSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiEr/H+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiEr/H+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2052C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736588153;
	bh=L59nPCGmH9QfJygCFIEBSSGSX0dQhNB5ZRVFhl6O8Jc=;
	h=To:Subject:From:Date:From;
	b=BiEr/H+wAPqyXeitnqFsHk+zy2P/0ntUN+7Cy0mV5ccHROnUu60csm9tNJUEJHq8J
	 hMV6dxN4llEvfpU+n+nPOsr09M71wy6EL8blONQvLY6VYuFFCJPTw5Q4mxm33b8hi/
	 JwQ+PZA4lED5bTIPInwmimfDJuYFnR/v/9uNRZ5ecE1O7lCVxAfUFNelMkgGG7Rcd0
	 VHbt/Tw0sxetyDsGTGoXcJcxegAsQGeyBnpJF+tyY8/p3kxRaZiGYmLwVsjAx65MWW
	 GHQwjFXXbYL9PKcp9FG3m3euU724zOma83DkS79zo/63GBmdlEKKKsfwVKzsq67LR0
	 ql2jgIQUJuxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A2E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658815358.32576.8199395519675572754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b874ab4ad60550a57a8f33bf9853a8ae7cc8066f3b7d8631ac47a88389e66578
Date: Sat, 11 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736588153
