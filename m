Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C748615A
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743266394; cv=none; b=SnEo7vKp4FX5rrRighILR5Nc+p8Ve6SVnpUAGvgy/Gc8u8lOSzdcJuwMWaBMZ1vXEhabSc2j+9EAU8hOqJZ0kfROeP57wHrcG4ZiLPgyiqaXdgQXfx4WsbjeSs6WlyIfQ9NDvdRGAFO2zUZenHGR1zb1a9I7ciLO+g0B6zx8KTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743266394; c=relaxed/simple;
	bh=9Owsbwg1BVXrTJ4ZYCNbeNzQpEPFF1bBzhdXX7z+NO8=;
	h=To:Subject:From:Message-Id:Date; b=gw4DvcIbFovomXp1uXJgPw2w5OZJwr+KsaQeNtddNvDKtZ/vKQb+43/WgNDgFBd/Tt5+unFyKm1Br7Es9ZJi0H8WQq+ayVeWAZ/A3J7kZdKBcveacDCluXRJK8V14Kuw1po/ZodXe3SjD4YwYqLHZMY10kgVGjzn9hssXBARt/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZsArJ1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZsArJ1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE197C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743266393;
	bh=9Owsbwg1BVXrTJ4ZYCNbeNzQpEPFF1bBzhdXX7z+NO8=;
	h=To:Subject:From:Date:From;
	b=oZsArJ1IwkxJJfawEMjPtzm4eD4WOTjXQJBX9mU3xWzdlS9UvOS8/bBMMGyHz/03F
	 9c3uY3hPlRae5JK17KCRMTFEsf4WlDSXyRoazub8y5Ep/M2YeSc/jD+ViCrdMIWthw
	 tZ19DQV2QP8cbwPkdCeSNe+dI5BF/ehSElXzZYlMtrzdOcS6AHxhonBsOg+NbeMB52
	 a0q0lIEh6a0//ARPI1MJAwDYe5dzvQfnjimjDGvpGwTIIJ27qOLa0gTsFvNjlBmzvO
	 GiL+Gp/rhIa5IXJjnqvZkXXzSyRhqS9ND0kWlAcQHMxBGkfP8SUFZZ9bIMlp+63ql8
	 jtaKVzApcSvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9613AC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326639358.3895.12455072646027302445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b4939b45c4bcdcf4753a1425e23d6a00d2fe704ee4aeea6684edfeb3e07a40
Date: Sat, 29 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743266393
