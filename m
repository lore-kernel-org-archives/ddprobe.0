Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434FD222584
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763235654; cv=none; b=Esgl2L9Y99qM9FVumdn64lyW/gSIkPQaxGBfowePvRZlBQyBH9d601m+n9VDXXeQYP6uIZz7X9dLs/LAyyi3ps8pTcnwYX6TyRt7/Q/E9m11erQOwFrGVNz3yFgTg0yDhSZVwMqctv08Nn2tbBLAj7tRlJ5+ynoMdM+eWCaRFew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763235654; c=relaxed/simple;
	bh=BADptz2auZI+woMz+qKK0uHKhtoE5dV7OZLGp02rogU=;
	h=To:Subject:From:Message-Id:Date; b=ig///EO4+rAqzkcihL2r/3OCS8OSUsCIolGvAVG9xOn8AMssnX0TN78VtzRKmq524Rh8SmOdYR7rbOUK3jJj4nyvznxVzl0dB3OtUQQ+59AaEnBcrFOsIJmh343Dhhqqbf3wF9ehLkBnOg2OiGU1JZNbz0tA7AHCWdWvqYa3Z/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXL95pMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXL95pMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763235653;
	bh=BADptz2auZI+woMz+qKK0uHKhtoE5dV7OZLGp02rogU=;
	h=To:Subject:From:Date:From;
	b=QXL95pMDb8sc0yRolU9krb0S8LDKSwlQuJNfqlHkn1z5DA02HO00J1NgU4U650VXP
	 FTn7DhbUvRrurgvoZIjEcvdmkfT3rcO52OwXbcNxJaP7aoPjbIOHvPg0wd2rR459pv
	 NC93SWZyPmTfj/oD/tp+OTqnqNI7BZNrIcqKPl2ESdaSL5qUijvqLavpXm4OZJzv+y
	 iPH2ImxcLksgkKzSFSW7fhCmQoj1QDHbMLm4aEHEgpOwQZe8kcKY1FwfTADZHsJk25
	 F+iSPi8VVvWMTaTxAhHRztTTIBymRuQhAERiGz7xVQviYUUxQcmawVQbJcF1pUA6Av
	 Rq7yuHI2iBOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318BCEBF83
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323565358.4713.10024712516495583919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ee126a91b8781e3388fdb4e6cddb866bd31d9f8f61b9254d640e3fa1334abe
Date: Sat, 15 Nov 2025 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763235653
