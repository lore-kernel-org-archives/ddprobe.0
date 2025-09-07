Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270FC1E51F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757231394; cv=none; b=DRcllb8Wc6HdCXPFXEpJSe6eQT8A6SF8MwC4MwI/GONjSL5A/tPklQRi0xdMWZW4Leg8evY9aqMyAxLqMaZokZ51uBmtIwVwOTR9WWPl/e1uPn9+L9yywUEUOGXuRLlAzAT02DOdApKqew1a1M2NCj2EQAOhBJzyrY4wTPBHmGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757231394; c=relaxed/simple;
	bh=G45w00tQCUqa2ynKSmIN/KSVfxiffR8WfeMTdY1d5H8=;
	h=To:Subject:From:Message-Id:Date; b=Uk9ER+zdFak3uJr3pm1MuuB1ePcJX7Yc8IdHK1wPSBrWsM9XPGP3r1hBCiii7ekyRXw6kI9iEt3TNAa+GBzsAbxBgvlm+HTfcxmk7Cq40K//Y4sQrGeme05rXwxf7oUghNHHFSTirpdX8AW7jNdCTtkdqQR0USG+3VJht3wIgeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGmQsdVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGmQsdVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757231393;
	bh=G45w00tQCUqa2ynKSmIN/KSVfxiffR8WfeMTdY1d5H8=;
	h=To:Subject:From:Date:From;
	b=VGmQsdVWpMD3Hk2vPHkzjdm0ji6inG4dqlVNKbgCyaiqzGtxM949ZVz7+8bkjm4pI
	 O8TWkTEfjtkRl+fRu5tk0jlYwEjoWlWAV+5tREwFcJhRaYNRgu60qulSusz6OLUGkj
	 CzailfAIjn12tHB5KeRCTB//B0zJvFSgwoygaA02mFVSAwT9if0ZeYzpFzmnodKai5
	 SQvpsEbXbY0iGuMAjDX4l39ZGGa8DBwgENhv/0lq1xk/WDJL7p7Z6AIucVAtsd30XT
	 Xj0EXYFw9/+/DKvsUVR2DhYUo1Ws3+xlFEPBXQdiBuso6SMAC723Nv4qzJARjx9Hpu
	 1Biei22t4Ynlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF07CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723139357.12880.2197039164768251272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e42b270ac5a3425d36708a93d04fb83c3ae5c55541e85df55514a84db7fc40c
Date: Sun, 07 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757231393
