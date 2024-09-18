Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFAAF9E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726650954; cv=none; b=fUZC02zeFlBonsIq2kCNB0FLz/fWBc55ilamWhmuCYtkdnqirlJ+u+d1l4mhPfKNTP9lMyo1woOLZVRzgMdG6DJpjCU9PLsQoJBMtG0QP35hmAQfbiTifrcOZngHrFn1JQibc2XXx3GSUkt7JPxwyx1rgZtAXs2mkJlXXbr9OIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726650954; c=relaxed/simple;
	bh=I7J8Bc66b4EaZmkITittATDk8mfDVubY9wpbHounkn0=;
	h=To:Subject:From:Message-Id:Date; b=u7ELB2/6tIZr9XvKziQ+Donw5C47/IdyFubAqpVGlsR3pABAtWTTWXCb6J6ApId9rfVC5T+dFPbH3QkxrPzw7C+QNFVLkaSMQIjNvGoVC288uPnb3Vs5S0LLN0CEsZgw22ViH6crQ66TF2L4Yz2U40jpSuzg4LAUin3BewO58hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1Oz4r+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1Oz4r+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2940C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726650953;
	bh=I7J8Bc66b4EaZmkITittATDk8mfDVubY9wpbHounkn0=;
	h=To:Subject:From:Date:From;
	b=i1Oz4r+3alztmjbx9WP1ydqVaJnlyyHmqb+HhjBRlBe3PD/UeAIZwE/kDR5D+iYKB
	 zNMl4XssTJk82gwC2JoNv08YYaJ/Sc1jZgoY7daQ6sX7S7r4PQjGm0/7xMJv5PjzEw
	 HFhLPEUM2bjyDE8gWlWpAPxEHPXwk9JamQ3fzsf91hItkYBtag4BmJVsX+/X2G/7QT
	 Xo8zuYSk44K7GTtyZzccopjorsdmPLHCFj5BF+QV3hf9TbjjOWzdPXOMGFkDhhYYD5
	 spbn/cXSQbuLxbBaSIaRefywcQ7CfTXbNyuvlbz71c1sto+e1PK9S7FBNt7wnmFytG
	 GLBqKgg5eybUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3FCCD191
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665095359.19294.9743541117225360004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbdff9a215f642ea2df610eba54a43b0aa02288824cf71227e522fe133558c0
Date: Wed, 18 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726650953
