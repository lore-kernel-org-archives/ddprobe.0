Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20C738886E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778589037; cv=none; b=cHtXCSGaOOf+ZfDv4W11waY93ht5CZIrth/B8ckquWReAEmaPCfDTRlCO/kfvi6ylyf08GHI6/JrOc67MEWDea57ZS4T7QJy+qqkglsGv4scr9fCMtOkY3UkvmWtPVDbZ5QYIkTLXIRLQqvfrvCR2C4n3WBGNEcYiRxcC4g93ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778589037; c=relaxed/simple;
	bh=pDTRUfDtC+V5s/MSuWyzFNt/pBMSoQCVBIbxWkaGznw=;
	h=To:Subject:From:Message-Id:Date; b=H0hffLIuWOcJJ2opOMv3Y0JprcxMWKl6fCHHbYB2+thSvuM2AVovN+nPFH/6x6HhL+SeLWjQs0o+V2oYKDtKmLaGRigneVuWaH0hYy9Jfne5zcgjMbl1sfJrOR5dYxXxK1T1AEVMDQNYWouZYgZGfSLodQVWyOknq/UjqV2xDHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9kf1Ngj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9kf1Ngj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8539C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778589033;
	bh=pDTRUfDtC+V5s/MSuWyzFNt/pBMSoQCVBIbxWkaGznw=;
	h=To:Subject:From:Date:From;
	b=c9kf1NgjheWdYPpkS+DKdEqs/dafpF/btQ3j1xGPiu5+XPRBtV9dr3JOkrQB2lhRO
	 N7MLTU4/nk6u2rurbN0b7EKheRFqzT/ZEPOwfuf2LF0elejID/WMqex160Cb8SCVtJ
	 ciF9gcqX03IlFqov4svsf9JCQhXIxcc+WE1jye7VZMSwTb2QLNh/wK+8tpebPXwbT2
	 UmfjE8/MjeTaCZ1UG1n0O0DIMMJetCjj2ivnvtjen80x3xIk4fJyYCPSea+va/TrKr
	 y2zKB6FFPQw+huJ6CDfODyBhjObib8lfpGAgMfB4YWt3CRnOz9r+CPVjQE4BBA0DN4
	 QKN/MrIrbCB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D3CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858903368.9349.8182157190989753401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d389c38b9a93a2086a92796e1dc582ba4f4f5170e5177fb678a1c9d9451b71a
Date: Tue, 12 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778589033
