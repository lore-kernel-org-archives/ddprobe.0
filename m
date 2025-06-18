Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253631C1F22
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750216794; cv=none; b=Bd7kSMWDlfvFH6SpapHnHp9gxRFfxJ0kzE3P1i5TWCkWNb1FwDBc/oxq5MzqCz5fODBoVcGfkD/0JRMO9CI7RsNhfJJsb6OCQ8EdLSXfA6X7MA8jwLxdi8/v3ASjLDuOV690IoIbjSwuVn8vBrXMZMSi4XBxVHQXlSPbJCZB+FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750216794; c=relaxed/simple;
	bh=Gg7F+VC98NDZc1sIDlc7mrATvRZKkq2WVxbACwZ3LoE=;
	h=To:Subject:From:Message-Id:Date; b=OSjZqn6T+I3PvWq/+8PvBhKvaHrK5odOkbha5j9A/lKFqcQ16FtD9JJ6mcYEq9Qkd7YMAOaCDZP/wDIqfM5KMLZVBbph7pWNSc7dTgG4/59G3D7pflMy3WmcrY9FOK+YXHzSGzeitSmqpOi3VUX8hMHPte3cAMd0Clt6BxHdsPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOw7eNsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOw7eNsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E20C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750216793;
	bh=Gg7F+VC98NDZc1sIDlc7mrATvRZKkq2WVxbACwZ3LoE=;
	h=To:Subject:From:Date:From;
	b=iOw7eNsRj0kaWvQ9MHDPXcaRNUM7FudFXHuZJgPipnZTWQrqm28uI7O06qqSoxNb1
	 MRMfpIBSgHno6tp5pvrmyY93E84gCaLaIKOz3qL71fSnHJm06QriWF0lRqWUMeH7Lk
	 59a5y/VoWu/f8kzv5ebrcFG8gpN0gnk6h6M2vta8TpanmxKnk/OtiCNNnxxiYtFhMJ
	 MtVrrMbsFs2LAm2ShSOF6cmr1vR7wP9dEPPPbxqFZ0ddLzNwbEsOD+rdA6hrx6KuuI
	 mvFfuGGlwmszfO5fVqi88LgF5ARd7aSCXlzZ2qPfnMr3YU8gBZpREWLy86948l0eew
	 4bZab75Vz/Jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E432C71155
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021679357.21843.13822401706374254749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dece78f450ed4973aa1750937bac4b91f8805a3c37a98b4c772153372e798b7f
Date: Wed, 18 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750216793
