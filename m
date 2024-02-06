Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F4CDF56
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707237497; cv=none; b=eb+Ie9kJ0ODNiOdqgJ1d1mebkYuth1XS76k3KErgh9rHHR/QwRc0tWJ3BTAP9GlW4rZbKe2vm3mHIHlG94vlGBw9IWxfhMYq767WZFW3ydD3MYPoW91M0PBa50jpNqV3ev9kp1YKR5kniuYXwG5TUOK+vu2GBn43z1iD1+x7ot0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707237497; c=relaxed/simple;
	bh=S+LRCfZ612WeZ498NUHO7KquoaHLwcUEnnNCS5E34W8=;
	h=To:Subject:From:Message-Id:Date; b=ajsxCEAjFb0Lahj8iyRF7agtRyqtkyFZJSJUnZp/zlKVKhlbyaeHSUx9prBxgwmPPpjNtgn8Iee4HEvI/PQliBOUDXqS/g+Trjt1h3oalHgTRRXFB/DoeqA70zHTxOgh4VQqYocj4/+AP58C/hcnahitIKExwqag32d9zXjWHY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIgB2S/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIgB2S/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EB65C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707237496;
	bh=S+LRCfZ612WeZ498NUHO7KquoaHLwcUEnnNCS5E34W8=;
	h=To:Subject:From:Date:From;
	b=BIgB2S/FvOFSKqFM6E2EDiyHqy0yqRICXhHUb71fTvrAN3aLRyk384Yow/C6tB9MO
	 O96us4L+p/dxP99QFAa/BJwNE7m4n40pllJx6a1uK1ondn3xYufHw9aHi6AknM8Rh3
	 tsCyL+w1cKkOH0nDHvCXqaovPPoShYFhjEhPTN2J44IhUNJrkcmB3DOKOsq6OgF1+V
	 nmMedCySQjy4IMw9gCcy1agNWt45pQgOjb9hpMd5CHymBe08H09Tv3yIbJ9tttkQuG
	 OXi/+OjQTJJySfwmFtcuPnF+OjnQv8XyX1k2JtsZKmdkixlmCm/xhs8mLGg1EcknGW
	 W3uuQmpBSjq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BF5C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723749642.888.87888906697905250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740782d5f1184291f15e8c005095066972c2bca6df60e5a38f86adb453b47d3f
Date: Tue, 06 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707237496
