Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8714BB5D0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790348435; cv=none; b=gLeoxBBDFMw4zU9gFztZ/R9zKKeFYXG0soYo9VctmwbmmAnnLGBVo8vGGJjOpShsA8dnpaHXSy3Qy7U76dpztwqO3U7kk/tuA5pjkL6q67W4KhEe+wxUuW9Sl2EsZD+B766GFc3YFS5t7/7ZT4QTIsh6zQY+L9HVbyhrjyurpZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790348435; c=relaxed/simple;
	bh=JFOyvV212zfoSPIJSKrWkVZJQRE13/YQUkUMAJAefLM=;
	h=To:Subject:From:Message-Id:Date; b=Ew6D9dhM0PfybN6MCT/EYSKmLA8lAU1mpA4GgrLYvuHfDt3bQdm5GsQg0L0A1tfS9cIDoAU3Svu+Ur09ILwnEhyICRYwQajzjshzj0ou7+Z8ntw+8a5Dz3tlSs/UB+93/BP9eXgpfOc0uU3A2+laaEQMXwngE3NWc9kJtCZLpqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt/E4NdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt/E4NdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7DAC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790348433;
	bh=JFOyvV212zfoSPIJSKrWkVZJQRE13/YQUkUMAJAefLM=;
	h=To:Subject:From:Date:From;
	b=nt/E4NdCaQeGNgnzJ8e+QJbck72ROHdAoNaLTWDNmp8SLdylwEEeCe++T8pu8r1eA
	 LOEVZsyewSo7120ZVd6PJf3MsMfjuuRUMhCa67uIwAdzLQ0EWP+usvNb5ZztGSAmu4
	 hyoFDdxWsu6yp/CeAK704yny5iQtWAQHoeZrSneyQPC2S3RUTVlGTq7NZBuipzaBLx
	 cc9V23i9kuCGpPN/IbgkOuSGdbtLaSBCpFFbPsqRMCRiisPP29fn6a+fW5MwI91amx
	 YFZAWGqsA75/noH9r1S4DeBtF9iUO0KoqC5b2DnzxLHebdtvcWhjpc4BLPzudsSQJA
	 gsNQHQ22dCh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB181C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034843369.14164.3043172637434488974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b691472779a8430af3d031752ebff02739d9e79aabd06482c13352b63643da0
Date: Fri, 25 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790348433
