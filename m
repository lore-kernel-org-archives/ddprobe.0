Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FDF43154
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728026154; cv=none; b=OXgK7DXNaSID2bj1g91/qKW5ObCotII13QP+AmfvGXkQw91KCA9xVdC5npYFekWuuXXzzxhYz8c3UP+9XR+/okqqN4PsNdytayc3CR8uz38EeZ5hSFyRa3dtYNNSbChHV3DsmAy+0iKYhsffq+ZaKhC+F5zXz0Tgr0GkoDvZiNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728026154; c=relaxed/simple;
	bh=IH30MvS4fa/Pb6PZLK/Tf1KkNeUbsywh2iyoMOzLATs=;
	h=To:Subject:From:Message-Id:Date; b=BSTLBWK7BciX0w6wvcBjlFVkJUbq7kGzNAvzC4yPLNIAarlR8IjmWzMZVyrHAVl7CwjjH7+//QNrj3Dj2BRUPHrG6AG2XUU4MuSqamAR68+Ggxo+xslLOJykKufmDHQqeNJ0WbQJlXGdc2rd7dCDV5O2hdKGBUiOxM3sPwXQxvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd2yieiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd2yieiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEAEC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728026153;
	bh=IH30MvS4fa/Pb6PZLK/Tf1KkNeUbsywh2iyoMOzLATs=;
	h=To:Subject:From:Date:From;
	b=Bd2yieiyz3Solm40m6BVQYw/MVsTjVhbt63s0g6vtOhtLXkUFfdzWdGqZV5vtnfyn
	 JGBOr/7qqObcL0NOc9RI4DXR9xbjHzPD2T829dSAZ/D8GbdSIruoBSVkBWFFC4YLa5
	 w4v5uq1sC2vCpsvO+5VLtF1wLUV8LfYjUeKBlnEhtrMsRJLR8wrY6adusTZ+ANK/Ct
	 gFOreL7QSWK+b79X1VsREKAYuZRM3+JguhIIKwROMrIv15WnakGDp+RMGGe+PKcAZJ
	 KhVUGkGXGpZkldeGTdj8astM2eQcwGcL58pAIXTNGIRqfhdwCGbUUsbyFRLQhNNv99
	 sgLI5emW2P6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97BCFA74D
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802615364.4644.9989037245979479519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d686c94371ff48df3f1068b45f87323555f357b19909c3c6ff635f475a62753
Date: Fri, 04 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728026153
