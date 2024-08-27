Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0C91A072D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724771154; cv=none; b=sndrHeEgWq30+1Q0F200kbi1pI6FErD8TL5pvVsQPSDo/d5syom015emTh7+OxJsT2O5Qxj6zlc/KbsuPttgVH7bVEAIXr3ZNO2x7tI6aJcpO/+/+XC13iLLKKL+yysBHBlPFifK8ml7FfVjSlwyO/4PZyqFF2XhgX2wcFyDx6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724771154; c=relaxed/simple;
	bh=SDWPDs9t7RqU1B8LmXJyqdymvwxBAw8PcHLU/EvbA70=;
	h=To:Subject:From:Message-Id:Date; b=b6vgbpHaCIuQEOIUOu63g1ijp8HO9BgLx3T5T/J9i2BOx57Bn7k7dvm2VcDd0rl2i68jy/AKK3+tRUE99rzAMnSNFeOvp3c4VfodA7JyzjT/mNUOQLSLOut9dDslq5VqnhmaTw5amjofxBhEx3Q4GoEwsObhRLdpcPo513GMjgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcKpdrpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcKpdrpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B014DC61073
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724771153;
	bh=SDWPDs9t7RqU1B8LmXJyqdymvwxBAw8PcHLU/EvbA70=;
	h=To:Subject:From:Date:From;
	b=DcKpdrpSBwPCi4x1taLOKde/C40p0zbGLtOOaB/WKlEKxW5dFhnVevemZXN/2W6n1
	 300gUCp5U6IDb54NL2arG4N2H9Ln1u8zRKbnZsSIAYP7bzKMfK9RJEMUmaVnEVoNxk
	 /arCvHHmINWKqqQV6ERpAggvB23c7HdfhAl9Xem/JMADo5i+MW4MHfZzDnQA3Fy+4z
	 LOEgEh0pLw8TnXW6Ut+uapBl5u7ml9I2opAQ5VNGEhvOcsvADt5lROe9AJR29quduB
	 PU/2jY8mLSs+6o/DmmqO+9qc04qkpli2KPm+tqGCKpULDIGj7OQmDHzhdVfqSKwPTi
	 Y5xgEwXSuVyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFFBC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477115363.26652.12023157262627216680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fe0751026567afc9b968d24bc76fd51403e0c9f4988f711e5229035bb66931
Date: Tue, 27 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724771153
