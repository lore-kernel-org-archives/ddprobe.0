Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206BC1E4B2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736692554; cv=none; b=Vz5kOJ5yOT2e/RnFXGESvZ2kp//uYmlAwtN2zZH5/rFxNBnhhJ9JmX/Pno3PLQc2It2L5VUmdSh4z+ZRelQTRA1rO+3DqS01WNl5eD8gtLnC56ty77bJmvCtTukwqbp3paW38etggUxuqR4qKxURxzkx1TuE06UyNNAOa0s8w84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736692554; c=relaxed/simple;
	bh=OydH3xk29kL8YElgaCv/IMPp/E8/BbggO+r4+j5/3t0=;
	h=To:Subject:From:Message-Id:Date; b=omxnsYJgq+xyuokJvtUDGQfeEpICtNvkKNfMhkYVHvavXVu/Xj9V5XPmYiPugCq1q5oBUFaGNRWXhwp8svmf+Ari5OdrDXSGmVEFNpBKR3UQBiUr9az+Mc1Dd7CZO9fiO/joFXXSTE+kWBDziaLhOIeYdqdPISlVy/7JgIn0xd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt/HwS5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt/HwS5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE61C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736692553;
	bh=OydH3xk29kL8YElgaCv/IMPp/E8/BbggO+r4+j5/3t0=;
	h=To:Subject:From:Date:From;
	b=rt/HwS5/A6JkjOSzsGBmBvL0QexV62fZNTuKZv20G/WgFOqg2sVee0Y/DeYka5Gwu
	 V8E1ht1waTM45bMQoIdR/PbWddVgLgSq0UE4makYYJkILOHssA3caFMJrr/OlfEw+6
	 T+nwCW3ZADBpF00pLSUWkeJB3P352vfuWogmWso5b+NVKdGhjjiixVDUz9jGOs/3TE
	 DIKze4H833segNsVY62HV6eiYuoO4oF8Mdu8Br3r1LAbEvcV7ixT0G84STtrnFkNX5
	 RhJhqJbhxNp06IVlCej0mIHjfO1bsS6xNT09axzK9i7dG2DB3KRaLwvP4k1AAVS1L7
	 X+Mi5m1EqJtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8DE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669255361.30883.10440066273741207409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8136156eb4567a0819cf2bd292ea6957bde6e0cba55e9a8876f05aa1cbcd944
Date: Sun, 12 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736692553
