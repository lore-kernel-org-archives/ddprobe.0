Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73B433AD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727927154; cv=none; b=DpufI9thJWv0RysLH+uxvXwyws5IaIfHrFE573TPDJxEPeyLTjhGyqZ+FamX+qaUS513CT2UDK45SfK8E0Z3CBJWtotuyQdblBxcgPje2pECQetvwRfYC4CqirLzMkfmwWrCFGbT5GI/2BpIdIhB311FZ8kXPGEXVYIq4LoVoIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727927154; c=relaxed/simple;
	bh=cclJslU6S989JU0/S3n6chJ4l23QH5SFCQBm/a/hei4=;
	h=To:Subject:From:Message-Id:Date; b=t/P1Ym3bX9fsv3dtg1iHSnYCjmQkWs3LzJ902BzCOdGmmGgPe7GNheQ2VbGqiym5UpQMudn5WxfnRlvHpQDin+p4GvNM/isn3y18pJV/JugH5qPLiYG+jA3k8Gohfdj7qtFuDtzdifwIdtzlTlrOxyXSOyD0ftG16L4mOwGVRGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqxI8HML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqxI8HML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40EDC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727927153;
	bh=cclJslU6S989JU0/S3n6chJ4l23QH5SFCQBm/a/hei4=;
	h=To:Subject:From:Date:From;
	b=uqxI8HMLNFAEVSHFBTo4NyJlhelQJA9bVvS+qPg7upHkBeVmEGBlq7khnKYjTjATY
	 LpsREFAiBgiha8Lo8BbiTAVtG41Vx2Dh9fLMum80GQmGDwhmoNPDgDI3gcYodHTfx/
	 E5g5HxH7v4asazXztsYWHERyfgPasWMWE2zXTu6an+ktlZG/5IB+bB5+JznV1vBENy
	 iWKe08IBWtsK664L/ly7p680Hazva62OBqUuA9g28jchTtzN7Gz7e3/j2gQkknP5Mo
	 BiK6s5gAOv29OPbOj/9m7VpWRPl+0yj3FgtvwMujn5Oxj9KwU3Sz0cSMbvbRipQkmW
	 pxbevg1xgXOnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420FCF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792715359.28233.5066417547627615901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c345996c9328a1544943cf664bc97e7de8d4c78568e6f25130ee11b6cd3533c6
Date: Thu, 03 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727927153
