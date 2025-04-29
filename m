Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1EA1C6B4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745955594; cv=none; b=YOGfI3qvU/OhpKUcM1GCzuC2CnQDW4Syx/RsWIIwGrD1HP3Ty32MfX50vD9wW0itYygD0OQiCMBoQAYLv+qTPXUGE9G/GfIYrxpl3Rrum9tAwNoCyfJejysJu9P38lHdunDyrz3C3NccpMJvhmyQmfKCXzYxJWxOQeecpD/xs5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745955594; c=relaxed/simple;
	bh=VJAcgtTu/yM9nM25cSNwEIWwBOlcVvCv1vQp62DFvuE=;
	h=To:Subject:From:Message-Id:Date; b=OoFDj/aWBa+uvwyXVMCFXURQUfSySoaFigCDPmq6ZvVI3e0e99pAjHLMtlDq11ZDeU11Vy5620/TQreEiyIzH2cYx7bh+xpTRlV4QigKZQ7X0pQj4BMzDZlobHmPs8FfdqTG/8U1nC7DRtYc05POtdG6LgRAIhJrj1SVIccNpKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecwxKE0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecwxKE0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C328C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745955593;
	bh=VJAcgtTu/yM9nM25cSNwEIWwBOlcVvCv1vQp62DFvuE=;
	h=To:Subject:From:Date:From;
	b=ecwxKE0dMMBVbG1LUVEAYaPB6NsaKTfU11xiBzIetEQhIhCvNLuKEORHxFSfsZiWD
	 oDaKrPrwoMQ+zaDKX/45+EpYnOcc8eayX/6q+gxX0RPdT6ARmTOTeXeGdqidpIQeIh
	 Gxooi/Qnnc5h66CREL7ej5lXjOHZCWj2Z4mzRp/cJAuO/y4c6CfBXbxIWqkQGH9eCo
	 R2yeiZlOeHelcUx3+qZuSLFzrF1HPp4aG3gV1vn9KItl7zkHtLb+htMHXaPDNfoSm0
	 ESMX/6yQYKClRLLURR1bMpRmjj19bEY52I4Ruk/HPrjdqpLttAO+rBzzQgzaQr4+oW
	 7oulWL8YTb5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDA2C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595559357.9952.8883207025850238364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cbe35116bb9f2f11690903018eb08be63fca723e014b54e9879eac6e16a4b5
Date: Tue, 29 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745955593
