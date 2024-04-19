Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCFD129A68
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713532823; cv=none; b=JnHQC4tcMFumfhJXfbk/xgujq6VAR4MFK6f9kdw80xDNQ6v+YD/cermbB5KOnPcxRY16U4famOQuxUVxFPonBdTePKUKB9ZeUU637OV4XK+lhu7mbU0ZcO4imM4E2n4enDFnI23cncz686itWM/yCuRQYNIjdtgcm49eZXDAhlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713532823; c=relaxed/simple;
	bh=ILLyr0THmFpC5o9h0ID/M4bsrfEWbS+vY8WaH2IQL1U=;
	h=To:Subject:From:Message-Id:Date; b=MQ4r0n/e+dc25AcRJFL/p6evMupfuuZZw+XQrMxrYsiBo/uSs15BiWkUZfHU+fz+cFnd6Zfs9eHFdzFhIGfDjX/6OeeIR5znwyS4ZmAlFJP8M2501hgV5BJgsR6iKJacKaEpzGNBws8KZWBrKm68339s6sRw+kqKHJ81nsbSBnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWqmwt/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWqmwt/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3387C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713532822;
	bh=ILLyr0THmFpC5o9h0ID/M4bsrfEWbS+vY8WaH2IQL1U=;
	h=To:Subject:From:Date:From;
	b=pWqmwt/xRUDW31Gd8x7QgkSTnU+QAYDeCnTnJIcHQuFcKEKqeEx5XNKT4n26jsutC
	 Huf4JRusc15xM+OQuwt+k6JQyExJRYRztjyp/LoHnpLzIxRutvZdAXNeBPA5YEXaTt
	 +EhBSVd+9rDclhKUEzqeJyJ5KKOt5/cDF3o2DEQE3a1mz6upjfv/N9ZUdbXopHnvJa
	 TA6iyfcFRLFDJ1qJ3NKdrCnuah+EZFkFej1vBHbXMOd6zpENJcuKtZA9hAQXMLycu3
	 R2u53dkhEjVB7Ri4FzRaBsCAtw0BnVIqxVgmSPgWSmSKuAN5j7hRclRWT4wWfHZciB
	 6vbWkp91/qMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0603C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353282277.9367.8972170056095207838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec92b07663be2e3d2c571af8206be058061888a9b861fd26b234d4fad8c581f
Date: Fri, 19 Apr 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713532822
