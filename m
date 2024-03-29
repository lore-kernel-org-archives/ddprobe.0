Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E28A923
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711742897; cv=none; b=oVO169uxx0bw3OAVq8d038xS5VQj3znTTjIOkUmYstfMbZ0yKfBR9UOzE1HefASECUhrCmWmGqcWQar6AM8sp+dpGd1bXf4XhMwk0/y8c59mrKBK3I0ZoxTGOpFF360JXHZaFm/11duIcs6Ofniejh6T2jfc2ibrG0vr7n2LpXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711742897; c=relaxed/simple;
	bh=Qbvc7N5gMSpaKml5gcMfhz2TaAbpk7hEZmdjPgtuQ4M=;
	h=To:Subject:From:Message-Id:Date; b=hmZNpuyPrMDQxfvNkG2tuTzClfn4NPhUFltpRO+6rZd9pq4S0u2msWmWfUscb1NsXyRc9gPQiNAzNOq7sU06oGr4RuNWvFECUgVT15Pc1VN2pcTRodxGAHzmOWoJSwu0sqquJrDIQDVpA7imdgEHGIbXdUzeXlHrPZHYLKqGjGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRrnM+70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRrnM+70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3B6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711742896;
	bh=Qbvc7N5gMSpaKml5gcMfhz2TaAbpk7hEZmdjPgtuQ4M=;
	h=To:Subject:From:Date:From;
	b=HRrnM+70QZ/WgIP4UUuXoxgFow0/HP22hp7fGag0YQoxwLLLf/JS/9sHdzgmDNB/D
	 xuX5nXvNBZB+lJvS3HTingrPiCfc8vfQnwU1ipSgpr+t4XNHJaasKMKeb/Cvkhmak8
	 k0gMg9Z/ciFNPqd0tKvNC8y22HIO1c2/WRi0G/ffVEKnjnRh48ATBLCQPZbJwB0P+z
	 S9L88do7tNt5G74IazHypTMDI0A4PcwOx2tR63LhfJ65Gn3CADFjOCVrDvsWW4fp01
	 dij088vOQUN+JyFc0YcQhwZpeALkyMfGjv68HmSgPj625eSDd0VrBHTTypthQEQQkW
	 KhSc+ovibRfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6875FC6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174289641.11252.8511846030928581817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182975c2b5a62fb416fe777ee19231ef9cb6776775d0d9c0af8fea61002b9180
Date: Fri, 29 Mar 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711742896
