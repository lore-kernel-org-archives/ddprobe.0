Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B751922FD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791164434; cv=none; b=rX+E1f00j29rASj70qhe9viQ0OLW6YlQz4KiIpEwFwiNQnJVoHZVZ7C/7AapRKwCIl2Hxp8wqo8FpRW4zcMRXqU+p3Y8PSf9RrZ4Fz+bLsQNNfk/PdsGtTDxojwQtCNTlcrAwsRS24T+Fxfe4v9TIBj5HcCxMn5gLwaMfBj0a3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791164434; c=relaxed/simple;
	bh=stFEnyc81d6iEWmXHKmRt6lg/y26KA/b/KLPIDy2RQI=;
	h=To:Subject:From:Message-Id:Date; b=ODH78I8ki+cfFMBD7MI7Z6tdBLGkqz77+E39Lyc/abRl2ZH2A8Hvsj0OGwaregn68xBei5oAwDrE9JZSODiCidigZ2HMqZ9mAigOo+yoVwum63BXO3JiHPEwdt1NprvzFNuvBxa1Hq4pICnqvJLcYI64ie34vvZI4uLKPNCDwZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us+5DANj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us+5DANj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2391C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791164433;
	bh=stFEnyc81d6iEWmXHKmRt6lg/y26KA/b/KLPIDy2RQI=;
	h=To:Subject:From:Date:From;
	b=Us+5DANj0fVew595SPzG1blpwqpV+jcMrPYiRoegVfmbNygz+ao63S5xtR8jlqvv9
	 /vwmcoh7OiDjhqbU4d8exM0/SWL8w5PrkMCRoubc6eYXxTzk/r6+e0hnxsImZFrT5Y
	 lb1Bsi1dyRUYLsgSjpA++RJkztHLEpbG20FdybNobfpywICOe/MKf/g7vaHOSBBfoF
	 ksKftSe3EQNuuJoHAkz0Tcs0HZcdEGe+/OPMi0McWAJuMqr+6v2uATRpf3DJpNddNG
	 nAHrIaXfCDsjR7br1TT3jrnBChBiG4MatfBQrtwLwmsn0faAl/Cs/A+AVSuPPFWJqc
	 NMqnM3i9qWg6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB29CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116443368.12954.8923969400788516269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ba64819cabbdcaae07021eb4611549cd4a8b7b332f0ed37ef5bba8c0221262
Date: Mon, 05 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791164433
