Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75E2C0268
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760988594; cv=none; b=CKi7eIyGRuTFg5nuQkwS+InajTBl23E00s2VNZpEveTr5XycSBOIiBwlqUbCAdtILYACrvvTMWC5bAxSKqJeSQS7USdlBosl77hJRnmSa2Vd0XQriaD9nhxkQ7QR9P6qLoTtyaDCwf01+PY4xlpZfVdUOAka51wz4S43Ptlk4po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760988594; c=relaxed/simple;
	bh=1l8FV2cBmNh/G0cTUdUSpKW/7GrBsz5svwcM0YOZBGo=;
	h=To:Subject:From:Message-Id:Date; b=PRuUqVrhJlSgce6Lwlc7SnRWdS4Vg897rLPFhZp+xXBFwIzvP2A4IIlFhaMcfkzj3l6WzVWUEyLlBa0dvgv33nSaHPUjr5y5CvwwD9RoE4tAvIjdHpozXFIP6JpZU+8KiseCx+gvMvl49pf/8lT/ZPXP4FjDI4NCy5d3ECWQ+kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAwH1U2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAwH1U2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9063C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760988593;
	bh=1l8FV2cBmNh/G0cTUdUSpKW/7GrBsz5svwcM0YOZBGo=;
	h=To:Subject:From:Date:From;
	b=nAwH1U2u22o76h4pLog2SsFX2UJ8AJROYrr815QuPz1LZn1lppuddWaShxO11Iopm
	 PYoz+dDXgXP1Ca3DY0XjcP21CHvWa9ikHFVncZha3iIdRONhwQ1uJFyeWbh1/vxxxA
	 iHoHOv9fSDbGm4gvGymSA/yhZ1bhHdsupzEDpt870779qlvtQitdMrrStmhII6VLd0
	 qOzDVH2i9GLwFIHnlGKMcSloo2YbNPsL9wsOpfBaOYmPm3+mI8xCZSkPcMIl0hizyA
	 IcfUjmLrNqGhsSJ0D7RyE3o17iyiyRyAy+vwmSBSax9GQ9wPcn+wR6IgauFbkeAtFk
	 x0iDYNtTulQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBACCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098859358.11219.2447158223855319685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc0a0e1770e549212941cf589a2438f4356095e9ab6d4de0de603cb26a6b797
Date: Mon, 20 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760988593
