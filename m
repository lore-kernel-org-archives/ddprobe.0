Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE6A23C8C4
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739007954; cv=none; b=uNkYjmaaK444NviHzlyPlgeANWkAhOvqSMt5JRSkKff0DFeVB7xd/+QMsyv3uI72/mTo5oY2CweUMhsZFu7BRIlJhr4NGproCsSFiN94e227f3sBQNKKHhpCUVISsRnwqUd6kWgAYVOIwgcX8DaYV2Rox6v6f13pNn0NODxn/Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739007954; c=relaxed/simple;
	bh=z8FJIYJGsyja6icTQo65SVdWOZ5rWkqWvePiFApf9/Q=;
	h=To:Subject:From:Message-Id:Date; b=FE3yKwma8BaPNiBf5mx8Qe9BqmIiIe0BxeuSUENU08mDmtaQd8xKzri+quRYFuTwSTCoJlF4xsaUCwFAmedTz5MovteP2vKDCPCzu9Q+7SKDOJoCxolVN6Wl/i6IxpJ8JrWYc7KwianhdS+iK8OcDcTmlHJjW/DmyrXTfzK9WSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHgdquRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHgdquRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB68CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739007953;
	bh=z8FJIYJGsyja6icTQo65SVdWOZ5rWkqWvePiFApf9/Q=;
	h=To:Subject:From:Date:From;
	b=DHgdquRZj4tWgZjdCePS5noOFtK/g0DhysZ+U15vuQMfFFxokfLyohaeB+3RFnWOR
	 HhWqntCqXlImTp/95/wlqn4KpH5mjsxfyxa7y5ukDVxJPSK6CbzcR9clfwPOArzTuM
	 qHTHSW6F0ySGKd+G9CZ41+UMPbJOIXD8NW/EFCpPpgpbj/LkmDcG20mmKStMWOdh5p
	 AXR9gmjIotauQb88zNmftvmuWgGNl2vfPjLORNH/5b3/p+7MSvCGnfUnq6dJvKqD6B
	 OoozUeWpHxwZZvAUJ8B0qPl6qDifJlaFrIA4pRZrNSNmfA2z07qXRFgz5+wiGkdJ3t
	 AsPTLDUBABiew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A188AC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900795364.14966.11441251076436427577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7187c8bea28a3f1b8ba6b9907a1ac0977cb15b4747c1728c10e546ac3626742f
Date: Sat, 08 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739007953
