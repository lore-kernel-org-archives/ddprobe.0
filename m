Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DBA1422A8
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730740554; cv=none; b=dQkUZZOHV2EM1zdQCnTdGdgSD0JEXUoz6L1wNMrtIZP7M7WxjlBH7XptdqA7kpcjOezBhQhEJkY5DPhsBTxm+mgAHzDsD/FhNw6X7vPR8uKIvmuGJi2kv8RmV8ykivNPMV24Pye8dPxHbYViJ4Ccaxtp071DT+expxvG9hx8OM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730740554; c=relaxed/simple;
	bh=IGWjEsUMy/G7xt7moIHHTwUXRMVSV1Lwr+4Lp7CF3U8=;
	h=To:Subject:From:Message-Id:Date; b=gsgsaJ6lLZ6LAenVtZUuMPSmIWDtqgUXRYQOmwQwcOWHXd6RDdP0LTrR8cYqN8XuhZbElzDtfmWt8CuQFV3GiQ6bEOLNTZgfml7+ria2kEg38qJ0x+4pbZiEtgH8psDg4E61DpY9a5qUjbXJ/Ce75btwWpZgr2WixXvpucNcdoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/AwYo6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/AwYo6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FE7C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730740553;
	bh=IGWjEsUMy/G7xt7moIHHTwUXRMVSV1Lwr+4Lp7CF3U8=;
	h=To:Subject:From:Date:From;
	b=t/AwYo6yX/hbxcT7aoHqY1bfF+tj2FGESdGM+qht8WgDoIyStjtf6jmHbFfJj2jTy
	 MFSFpy/jCtfqUAX5Gg8hvSSnA2RWBsLYys4l/2Mrdo2AE6oURT3+vqOTNJ0nd8Vplp
	 necwrG1v2dyYptU8B4jtaJUMCDtAQH5CR6TpEOWCofy3teCOUWTOVNxxFYGfdjdTEh
	 WuF1FbkR58g84MwBHe99I7BQu88/7ccuaVAysEVcEGMJL5sDdzjTF+cbLQGsXYc1oZ
	 8NrmBUoqlknCMeg2OC7i0kPkhTlpnckGdbdJAomtNlhNotFYUxuPV9otGyILygJTLK
	 GQDdy0O8x16GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D20D1BDCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173074055361.32181.10341573156111848301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a9d16d3574ce1265d3d8765f568c13f1273f3d57332836880ee5fc07d03870
Date: Mon, 04 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730740553
