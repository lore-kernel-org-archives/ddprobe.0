Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995FD79DA
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786986034; cv=none; b=aDB2A6eeSbEKvafP76hJyEI/m3BHZtLZE8jUa+Ddaiqfm4r6WUCRGa/jDzHVe8gp6NU0QLVdhhXE4HDAYF752N8o6DrtwEBSzroUOkfxKmyyojH/jD08r5bc+b606/YwqQb5UiZIxK/NVDX2voOEkalVlX5ioHL7x7wCLglRStQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786986034; c=relaxed/simple;
	bh=mMma/xBSyQRlRjEkOaaOa+Y3NPdQzpPc1A5hkjwT3L4=;
	h=To:Subject:From:Message-Id:Date; b=U7MWtMzBvtCcSOYx4tQrQREYjYjissY705EzZRIcsQ+GhV7KTbSob+642m7elEXLS2POB+qWj5LI7n/ucTjXswcnVg8pFV1oinOK2gUUdknV6PnFH34aYqcDwXEktwNeiy2ifRC7BMKpU+9zFDDA0/bqKMopyYZx4E8yFsVYBHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6IawtLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6IawtLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF77FC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786986033;
	bh=mMma/xBSyQRlRjEkOaaOa+Y3NPdQzpPc1A5hkjwT3L4=;
	h=To:Subject:From:Date:From;
	b=J6IawtLGHL2dFKwHU9Phf4mHcv9UGnrqs6p81Nrh0tgcRP9uW982/TszJ7UgacOSW
	 aOMVn+t6wwSRDpsoMJXdBcdFg0dYS4vLfpsKuGX3Fj22pntCHM0JFf2qjqH8cI3+Oy
	 im51eCvJEtsMv1py9vXj8dx7ktSAHkaXUEIx6Ly9R4Wd8yG6vMoPpgx+ilMYq58CUS
	 HA8zHyJPIaAWKplPJPfYIWM6TdD5m+/9pwys+Hpe0TDRXYonptJ62nV6JyrEasXlxZ
	 +5YBkhFnkjQ40g9ad1uNTBbq2D7mqmIKssAR9C5V1FSxhwyAzjr96qBQ5PZnCFaLit
	 b+TFs4anutGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FF3C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698603374.12583.11853258043865479128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934dc4ea32d152677d2ce05e10c264f8d43a0794c7faddc28c1fa1337436512d
Date: Mon, 17 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786986033
