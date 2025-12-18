Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5FD2F0C68
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766069034; cv=none; b=uY3SA/DyZfNQBBGUC9RchLOhk77qB8/7btIY5xL7WVqiPHrIhiE9safw/hMHyJZEChoiTc0sU8o3P19aqbpgtj///ztjvHDuaMo2LX+0t5ObNzZEmcB8MNwuJm9jaacDK2PG6mZiBLfXA6/FKYPl4zD34dPnmKDgtXO9yBWVEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766069034; c=relaxed/simple;
	bh=tueLym+Awq8W77Q9juTzBTb9RGp5L29YRk1l9/jsLH4=;
	h=To:Subject:From:Message-Id:Date; b=q0JQyfF4u7TQHmtSHRkYoeC1KYF7J48U6qsGzhvDhC8jFRr+LIXHmhge6keLDGEFAk/1zxHOXiKQva8VaSYkY6ryA2f4qaHI7SDP80hgU8m8Lk9Vg3cP3fGpNtx7kry/pYvRAggJmBqf67RXatTvsbHugECxFbJxuOJ9NvGa6b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmNJxXtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmNJxXtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BEEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766069033;
	bh=tueLym+Awq8W77Q9juTzBTb9RGp5L29YRk1l9/jsLH4=;
	h=To:Subject:From:Date:From;
	b=gmNJxXtbAqxXNHKg01SqkiAe5RBEszH94zaJ5U0dnDEC2mw6W5jLBynVOWw/5g7hF
	 yzMBbOlGxB8VNqiVvo9MiFUuyWNavC8LdYAoa49WmFhsxrV/xWzLOV2Lzd1EnEsKms
	 HgAd0kGO/VPuIhHOztkQaMfHGjjMuaGzzdnu+H29IRlrsmL7yQ4MfT6aboIUCZqwXj
	 2UtvUOP1SW975aMFiYgvT/o3/D3pnnXp79+z4T+WHxS8M8nSeo+Wn6/nqNoxMP+nyQ
	 Nif4H7nHiaFVvfXXaptLtY5WgQqVbOSnoJoh4bmybHepAYJBDrOCcVR9hhQIS1R2kv
	 NvKblefn0jzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911F8D6D22C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606903358.29391.1368395174880102521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e276e64d48dca72ed88f385517984b1319a4c0cb24a65ca2b7911b9f7fd3e512
Date: Thu, 18 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766069033
