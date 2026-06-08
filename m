Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA82EAB72
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780899274; cv=none; b=tqZf+VLx4dHPKeRP/Shi+bDT4AdLzlhCUd8UL3jluwMU7eyeg9yKLsqsUH9F5uC3I9HMq3WDPHiZqzkILROLQyPKN6wkZeZp59MPkrxooxddDPFuDZ+3HA1rkwjoZETwYZKseYVFHCM4k8/skYlHuzSDA3nCQZUTcfDers+3Eb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780899274; c=relaxed/simple;
	bh=nZMJCnuF1+2dCBgImFOngl+DtJyxK41SQ3/W0qPpoJc=;
	h=To:Subject:From:Message-Id:Date; b=V1Py7vJIvMVsXXgKg6PFOGzsxK1b1hJTH6jrm4tfl/gdN864Ee84vY0pN1RiwSN5oVboAE/JIZVnv8+g+elELVUaTCdPTKtYs7gNoPftiqtnWghP5UNVwQZdYDJFztFP/qHrv/hspCxCVdeFQcr4YpNE8J2EF1j2aG/5GszM+hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCNfnVLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCNfnVLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC274C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780899273;
	bh=nZMJCnuF1+2dCBgImFOngl+DtJyxK41SQ3/W0qPpoJc=;
	h=To:Subject:From:Date:From;
	b=CCNfnVLf3EuyiTUI2n9TM4HtdRoVx96gRbeWZiPDypWcp1G1ozESuavSQwf+iqx9i
	 faKEfRDfA/os2QJksveBgV5VALQuLpBcdOmSkABcmLseDW+o3hx6yYVJ9rcgKbweak
	 kCnAznlI509q53g+9GN57rAUY6aiCgoYIc7ItvljWAVpM3BrW7PFInuaP0eomt2z5d
	 D7kz9X3qg3jnylEmPHaVLHS4P/cOIPJDcbBGDiMGkWXSV9Qe/+JT7/z7uQ03FmXSBr
	 MO9QH2PtWrRfcHS9w2POD30a06d7mWnvnRGEPBD9ItiUweBn2GAZSj1CWqlaq47FDp
	 JTgkKFXA/91tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EFFCD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089927371.28420.16480346118197904997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd81c87616bc68fd21b5d533bd14af9cc9f604fc2a0e0c3bcd5d80084414a79d
Date: Mon, 08 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780899273
