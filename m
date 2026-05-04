Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347EEE571
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777854454; cv=none; b=gZHXt8baV6/kjUlCiAO+fm5t+J/NVwSemsvJhyvZOPKBs//SlFsHp9QIYWS+wpcD27rp+YH2uiPyuxyHER2cFdEyG4Kvxa+IyucVwo0wYuyogQZu82NFwzbmtppxgl86cAKbDMoS+YxcNu65CFVCCWBgtgeEMqilQpCpyKW6Qpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777854454; c=relaxed/simple;
	bh=0ofbL9bXhNJl8y9RGNGkP3efckTEOTOD6LtlSldmDHo=;
	h=To:Subject:From:Message-Id:Date; b=rI6liL4BUoReCgUxQYFqdMlVbPpK+xEtg33fT2VbCz245rOoPbztA+vngbi2FaPNMIrVGI3zKUjUgdRYv2jq9QyRlBeLjYmuisAuMK7EmPSLrkbCsGWbyEKlGmKaB28FBz94dCC/7q0jeOBRAlS+wVarcoI9Y6OfrDQKcuQnevI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYHfV1Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYHfV1Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06BAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777854453;
	bh=0ofbL9bXhNJl8y9RGNGkP3efckTEOTOD6LtlSldmDHo=;
	h=To:Subject:From:Date:From;
	b=oYHfV1GpKVrDmOd2QaEzs0zKACv/MpvKQhKsfpZNx2bvMVwhmzZ9pCt7cdmhwNuUi
	 dqrRHVeejoXohC0PcbWt8OLmSQgSE42W/QN7QFk/fphQ+yPsyWFv/+ixikHZcLvp4x
	 SJngz8RZFyT3LfYoRy3oeYddi0/VYaQU7AQTeko+sKbbknhfbRERDvIhOfdMllP6+0
	 xcYstn7uF8RU8mDgZv14BEZffoQwSFScXRbfK9cQnagimY+aa3GkjjCL/jj+9vrhrC
	 SqNuaS16HytExFsBGYACbxzsrDFhCZzmpKF/h7vhhs2VvbjapUgQFOLfWgN6xmuBi/
	 HB0PDbqH9xX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF04CFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785445368.11790.2587648594478688719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cd32102f1fa77a27ae04d9aefae3f7fd9ff24ebc9bda2614ddad0568c0573a
Date: Mon, 04 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777854453
