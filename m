Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232F148CFC
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762669194; cv=none; b=ganvQV34dS8AWqi5KKHXEEHza+bv0W+a8pTzQDNrDj0zqb61K3fHAv/liVpGHN8ZGavpRYnKPLvTO14Tx/TEUZVPnu255unfd4USnIy1PntzUdycD5cZywvNXBBdDuPQECnLJQllHOngQD1uzf2S2oZ+Z8uvf6urepL4WLXO6zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762669194; c=relaxed/simple;
	bh=MmlJILtf07LWdY+4aW/htIU5Ocgz5NiioOoGGP9wiqo=;
	h=To:Subject:From:Message-Id:Date; b=ngyK1cyrHvtO83jjyi9E3oodQU/cNSARUi6zEVMWKtPwKFVHM7uJDQzquuNUv4WSY8biAL/fq5a919NO0hXPHo+S4uccRqSsTghkdQQjAWO9JXEgfmfMZLvbsG/+wVL1T3LPmxXEa9Rn32RDDZmAXYk6P5fHSNXxo4pCxFEXCkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ufk/wMkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ufk/wMkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F3C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762669193;
	bh=MmlJILtf07LWdY+4aW/htIU5Ocgz5NiioOoGGP9wiqo=;
	h=To:Subject:From:Date:From;
	b=Ufk/wMkIhZfGzGc1DuVlCxvTc//2fk45+XrGWXsHPHfCB00poRzvyzZMXNuQ+PepW
	 8XdJr3BgzdJjL+dNzKiwHCPdt3f+rwe9pmoSRD/S0CpJCtsuo0BLbxMZkhe+4GXohf
	 RfCrOmjFGWq6szYmEeVDdOV/DqphT97RNJM++snJPQnPUfL63aBsH1sPZmuZ9mWTT+
	 bz3Fb0vf+p27nlThr3WdMyTkP8cHG+dCc7JqCFKRYKa0XN8PYXV5Q/qQ7kMYXgZmGm
	 nrfV2VIp1EpY8+P66vdwNxmfrqjyeW4QHrRrt6SG36EfyGg3lOELZv/jwit3Kl6jAY
	 dL1ERToXsqRyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3ACCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266919358.5651.7738540274774912508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcb02f990102c185514dcff7aed565b7f1f58629fd627bc1566a5bffebdb663
Date: Sun, 09 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762669193
