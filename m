Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350978F66
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727948754; cv=none; b=Yd7XS360Nc1b860T17KurnvOobz5Um/CzsFYITpCEkVloPxF76qrMA5vFcbZBB7gaDUwVT+/DRbRbRxNsUKO5p3RUlyfba2FGwSoHScxShkfulLBvCuaocx8yYmsIhqY3FRU+2SLwL+cJYWgBnVVP25mmP3Fz7vj8uG0BSPZNIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727948754; c=relaxed/simple;
	bh=4wgxj5jrftLkiUcmoma+Pv2nB8TM0QNKH/uCykCv3fw=;
	h=To:Subject:From:Message-Id:Date; b=lfDCu1FxL8oOfNBbXA7IqkBeMLDMqqyp1gd76qnkYPytkRQtU5pJEP5j6QAVI7REnQVHinnu52gxwAVinKQli8FuRxXV9yRmGOo/c5jKbogOaaAwyYAAO3CjGgrrbX8PdDP646XTrpxKvCG/S7XaFB0wB48rzWxvaNAzb0BAdSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peYrC5lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peYrC5lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181DC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727948753;
	bh=4wgxj5jrftLkiUcmoma+Pv2nB8TM0QNKH/uCykCv3fw=;
	h=To:Subject:From:Date:From;
	b=peYrC5lp+lkfrR4VGFmcMH65Fk5calyLyT8bJ2vAdTnGhGjYsf+/NQEaY+eMGqKFc
	 8OiPdOc3Ge2GSlredYXkJErNSPdQ6eqPOpvpzRjS7S2dmik64j32MJbIp3/3FOuZ4F
	 Cxq8nXRndR/LsVPCsRh4tVOULUuABD3odZ4oalGXUjLuwsloPdbMNpVIPyz2utWbfc
	 sYFaDzkM+d7oaKIMVsfy5W9U+0UZiVss6qgDI3P7sK07yeHxqE6wUXA4V27QMiZoNv
	 Flz1IxCfC8zd3rewECrDRMkLlo26EQDHGeZNQCx/L9AWJmU/86aE/djSWJEfc86BXp
	 +RQ2Bq8dPTceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE97CF8572
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794875360.21772.6711955301196857107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddbf1763ccfb92a80aa357b9015a3d9490eee46476c0b24b074850ec2424df5
Date: Thu, 03 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727948753
