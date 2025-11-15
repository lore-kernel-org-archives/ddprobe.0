Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC8191F84
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763243454; cv=none; b=RAAMZltFTsj9Wek0bgiw1yRI/Lwnwkd5QoA6nIOJpkatPTbSpvYVmGpZ+zX9R96A6zCFnB1i++eHMHq1fXfj84ZzIPgWs9GpggaoJY7kDmXOOWcb6CU3DWDh2uwg9pVcMRekipaCQwgCE+BBzNoIrOxyeG7/OhVUB9ltM8qp6dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763243454; c=relaxed/simple;
	bh=hxDgfRsASj92Pvg858fqNEAs/ZbBgV7avE9Hpgptk4s=;
	h=To:Subject:From:Message-Id:Date; b=tXBNoKTacv3w/GAf7VDyjaiRzx3M1WW21NruLaTNYadIV0QsEHSctR6gm1ufGRrzKpwjcjScWgAY6xCc5ZRX8INSDoCXBmJ3iCNP18P69Uowj2+M9L2cmZU3Rws+yRIK/JTFLGcSzdOjEKmI/Ci91Clp5knuXtd6rrrux4wEv5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D72NjchU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D72NjchU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763243453;
	bh=hxDgfRsASj92Pvg858fqNEAs/ZbBgV7avE9Hpgptk4s=;
	h=To:Subject:From:Date:From;
	b=D72NjchUIAya2FPXd8gpZI2ge7zlshm+r7A/3pD53fXT73TcyLS/1Rh/Y2KowWI8F
	 yt0R5e2JCZxcjs60d3RJeX5mqinz1EyjKQmOuslTdXitexCGXteb3THGaDGy8VZUW0
	 6kgxWWj/cUeJ714uB/7Hb2jY7NgijFIcSQ97xNVcWvEBdklaOT6N3sLf8LKp7zYVNZ
	 MGQJsYrNRKp2tgwoIYKGqJwgLBKnP3cjOtl0rShP+01EpmL+5z3D/XSUQRCUrdMlyS
	 +gpkE2r6GUxT8+8JEnSIMZvyO3Q1PrPiFtCSOb2fq1M+bSeXt1QJRD4eT+qmXi0X4q
	 xK9FiNQHI/VzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C2CEB2D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324345358.12321.17818665565170065829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ef5b824a24ae07adbb7456682d88425668d5c719bf1494178eb033b9e25fd7
Date: Sat, 15 Nov 2025 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763243453
