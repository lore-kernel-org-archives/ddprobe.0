Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ED613B58C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791684034; cv=none; b=n7ovdGYB3AvdC9KRywXi6k2aqMuJex+JznSWqqVJfrM5WU7CX7KpggmZ0UJPWva+Pe8W+aD4mgCe+My4sCLncO/3eKLasbeZRRmQZpFLV2fpCoVizKnWSgocOrawe3z+RTQb2jtPjQdroVMNbXc0T34iZ+C2zMiJz08juGC9VX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791684034; c=relaxed/simple;
	bh=BfVAmUkXiI28SKoSWsj+XZFNaOL80NFcjHVyP0NX8YE=;
	h=To:Subject:From:Message-Id:Date; b=nHp8Njf93/JOL1kr4E/jSJTqzQM3ZuAcydINWl5ERk7ckhhdpPqk4yyg/MsiLZThgMMabe5KsY/mOsYS26pyuEgZhAs8u542G4tgMEMF4miSb21pl3bepMMtOT/YjeTpP5fCTBIMeFYjSl9urVtvIeCkUitFDqyq0A85xQFIFnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNvue/Qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNvue/Qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79AAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791684033;
	bh=BfVAmUkXiI28SKoSWsj+XZFNaOL80NFcjHVyP0NX8YE=;
	h=To:Subject:From:Date:From;
	b=KNvue/Qs0jE/4Rau3vGBW09onKwJ73W43TTCTpcPIO0yj7I/ohz5odjWy3hRwhiCO
	 T07rkc6Oc/v0tjxCTfvLntl+4EsVKFqEbVLWHKAzUbfduYT9OTJStw2FR7YVJrHsp5
	 zZddQxsNIU9O/T6FJW+/PeWiqrhJ8CmShR/zTthLjcOhyyrTtEPVJcUT+71F7yGMAy
	 VfV27iFsHDrmNmMnG5N2uYFToasVyrr5rrXV51o79hOhwn/eWqPjhOlK6dkQC7Jj+1
	 1MTEIz6PlX0YWVV5vkmVRWQS3SbGdlV4si6PsJ/0mckR0+eNF0pK2qg+Dxqi6kiZlt
	 Oi/uwgbEIPsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3A0CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168403368.20615.6314958524648331638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665050f7f554cfd5031440987a38aaa1984bc66a7935b5de4f020d923b4d1b9e
Date: Sun, 11 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791684033
