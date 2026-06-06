Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552964071D9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780733074; cv=none; b=eOBpGDZiPtowWDMOY3UrBc6ZYLW3vKaDND05/rB/TLLaDtlqiIUz+3/BHevA6+W9aiAT3Z9ipmjt9rHRyeXB0uK61QJr93EOwQXwAJgj6IsVdU0bMB/CbE3XJ6AKGRp8o1U8z4WfJLZsgmFMbvrmCfl04tVcSN2YtZZ/aErqsps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780733074; c=relaxed/simple;
	bh=E8f4MLHJweT7fylIBbrzabYISb31EM0Aqjk8Ctbc+7Q=;
	h=To:Subject:From:Message-Id:Date; b=Yc2BbviDsQVlAOv3JCshbv+ytYiolURxgbc45+/Zf6UODL2vc/xzXGRXRl3seYEYWeEghz/12Xbx+iYNTxroPjq+PDQaqqABdfXwfy7XH6l1JSJWQ6M7FSCVRi0PCoQrC5wb5ZzMgey4Ti8rnKLBj4fW2P/7w0vdmCtH3NzsmeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwal/S70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwal/S70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBD9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780733073;
	bh=E8f4MLHJweT7fylIBbrzabYISb31EM0Aqjk8Ctbc+7Q=;
	h=To:Subject:From:Date:From;
	b=fwal/S70atDra+sYbWfZmZiUf3AEa6XwthIfn4xQr53LzHurJokUW/5DcvZf/24av
	 iI+IdU2vCOZGqqS7Z0pFB3/zJJ337fYodsyKpDwXoa2Fllj6wSjBYyg80GxgdTHET6
	 TMDF77x2HsxEByPSBEepJb081z9rQtLeif5wtx62KzhIrWYfQJo4FK8AjiosPzDDQo
	 inMc7SPOqfFlFP3JvPkdoyeoPYhEyb6Ev6hX1HOZjXVvI75kdErWWAtss6umPUa1Tl
	 XnBhoqetGukcXwVGgzOC7BtdvPvfG7mxOFs/TjEqCCtv1lL6cdMlZY6opGm7NOazdr
	 uHPIg2Zfb1NkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AE5CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073307368.26649.5574589759623231888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9552e89c73d53624760cda56bbcf4fbc5267c4909a9435d50de6cbac84a600
Date: Sat, 06 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780733073
