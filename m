Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147EB1CDFAC
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757171394; cv=none; b=Enpx79v+bEyMCOc5dxkn90QfttvNRNOviUrrq8Xe0tDXtdYjLsI0nUH4AtGeXijne1Ezw/E7fnldHLl/vW9XQwMIw7hOenRbxZht4myKGiI4QokJyNhtnzMVBOar42kgxC/1GQKQI7X779IjEnVQ+T+JaE8JML1I+yMc0hyhm/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757171394; c=relaxed/simple;
	bh=E0T7a2PQJ9jqVbv8FLg/LegxBpgRAAosM2Jxtej3U1k=;
	h=To:Subject:From:Message-Id:Date; b=eLRhk9HwHarWQtZEhGXefBpfxxCfMJLS9bnLez2loW+I4J5DUGh2hRLYsLxMpcJYHp7izLuVsjrqfidBTIBVgxIQNJkIYAlva6f+HSWw2HRkJ3a5Oi8lAZx343DwHuijQs0bHJlGdpu6lIax0VS0AM23TGfgRPMQMLERSa8fds8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhAbCDGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhAbCDGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757171393;
	bh=E0T7a2PQJ9jqVbv8FLg/LegxBpgRAAosM2Jxtej3U1k=;
	h=To:Subject:From:Date:From;
	b=DhAbCDGt2ThH0/Cl/Yp5HCYw0QEEsR2zhanMpzVJQPdlU2zjJbCgm9i8XRmJRnCy8
	 geLNJhfrKDA9GVqF6T8yXCwe3yNeU+NPPE38dWD1679REFKreM8iY7Yk9zWacpPtuy
	 yUwubzUjTRkfocv3S+mtiTcwML9j9nNGV/ccqJY418BEELsyqfh7+I+Ic+2Jk1b+Hp
	 rYgmTiotNj2y4zYNNfrRSNRk6NVcgetdvLMeeWSxs/lXgq2fq83AymRWV+NGA511Yi
	 w7TOpbm4hMtm3ZZPPGhOy8FiFGseP8Dlt9OvJU1l+i5ejmE/Dm0Tu3iivxEKe9OBYB
	 jouQmygGR5v4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95986CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717139358.14424.1786945826468983624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de004b9e27c9b1e9a9821eadbea5a2e5c1a1d4d14561db5bb546e5307ade6578
Date: Sat, 06 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757171393
