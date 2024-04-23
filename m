Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E60F13B590
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713881423; cv=none; b=UbGS+ImjCXzK1uHVPN2zWjvKrrYUJhkqvOE78I+ZdKS+KjOciEfodg2+r8XhTr6gslnqnzAqOC3c0hHyFSe3tvBkMKTc7AKPK/ysTMHRkO8UIGEECdZle0PMLnguyFJlqOyK15cawmx/Wu0QBILehEGHiwFUHwQmR9Y5qcYT3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713881423; c=relaxed/simple;
	bh=Ur5vbRbGFCCFTgtH2Xz2gG2nEaN8Lv+GVyOcGlVokd8=;
	h=To:Subject:From:Message-Id:Date; b=ZskU9kXqaXmy6ducSOnrAVdUE1wFaSop5jiedK1jk1Bp6MNpDMPkt37n3be8xb00oK7CvTF+euzePXuGxtBZPSDO9I6mII2M1yaxRHnLChhyCGalKQqMhfOmqdljA174PFHQuovZDxM5DmqSVd+hLytzwk3jUbkjheHFt5TFpvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q60mujJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q60mujJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E63C32782
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713881422;
	bh=Ur5vbRbGFCCFTgtH2Xz2gG2nEaN8Lv+GVyOcGlVokd8=;
	h=To:Subject:From:Date:From;
	b=Q60mujJwVaxDXohm4vlngm2PcBISUE4PdRZq3UOkhn5orTG6hjl/1CCapdUCqSIvD
	 XxIdw1Ki5w5VxIsE+g1t7wlm4e52kDQznUsj53MkUcLCCTbtuG0LQvNP8zV4h31EDL
	 CiaTWACEK7zvoZch+VuqyeNERJ49DOZz/m0YOH+W/9lPfaO2JAjV+YKwz6BNIyZjzZ
	 7Y+oorVawVp/GJ+ag5Cyrm2/sMRnTl0q/EKqyzAB4QQ8UcoMRB8bElgldjtfTfYQXT
	 HzxlsVVwdOcKqez79DcMsA8ZKsDJ8VOY3kvupRQN/hLPyIpicJnOI0xPRwEA8xGhKu
	 n4SkMfal75czQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D38C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388142278.16613.1305632297473241072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d929672268545885b98972793f99e7047f627fff93011635651f88e6a1116dc6
Date: Tue, 23 Apr 2024 14:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713881422
