Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A6258CE6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744622394; cv=none; b=Z8e9wZlSHiv/UKp0WpNoCLuLxPGC1dalW/amgfTiJouzUZogsVpj51d7+BevdgSXDBCEV+VVXJ3SWMsjAuUWKWvPyN1bgAqClUYDPIg5ykcdr9xALx6sqYu8WxSgfTjYRJR0dOGyw4MANhbQy2topc3L99wi1Qymf0Of3aJmv98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744622394; c=relaxed/simple;
	bh=QzQc9QS3LenPuNkprmp7tKWqA5hP4pr4ntR+IGmSOvY=;
	h=To:Subject:From:Message-Id:Date; b=hA800gFFc+yoLRYjQqexjL5o+87tLIoSEHK6vPbfjNnW8Men4fqvtZiokYCYO8SCBvAtnzlM6z+lEwK4df6U2ZCrXWo36oYBwlKY5Ejydozc6MDIi484FqkUJeI0tf3wiv2fJ+YSkyAc1VPb/4i4+5ApSJzEEf+a36UvmHpBlzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMSAY1cF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMSAY1cF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91BDC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744622393;
	bh=QzQc9QS3LenPuNkprmp7tKWqA5hP4pr4ntR+IGmSOvY=;
	h=To:Subject:From:Date:From;
	b=sMSAY1cFJYwfNUJUX3WUDDFlksV+6w/2ph1uY+qCSvsGNs3w3dpC26DYHczao1QiJ
	 rtp9M/5u8jGtgSb5cT/FSLC3oJc1sXKVQ3HNK77hZNCaOAiDcnPke01S9H8hTMtzF+
	 7+OTB1590+DRCmut+8XJv8EemENFCchd3zH0sXBzXhVIwlV6z5lzXYkuENdyKQazvC
	 6CsXAf/q4ZEhIJxcdIEsgW1GbNEkyNM/PVt/Vyl0a1ywDXnAwapW/M/Nbdum+LQ9W7
	 Twbl1yMPsXV7GTpafSfSderri08oQfvnR699Xnym0XQ6zUqF1gpt1tul3kD84IYzc1
	 vKk4kwqpaNCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92916C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462239359.1728.9803753304463651272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812a2a4c198ad5eed28c0a32984ccef3cfeee304f1f617a6bc62f370ce9f7eb2
Date: Mon, 14 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744622393
