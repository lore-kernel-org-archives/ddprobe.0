Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B79D1FD4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783735714; cv=none; b=DT1b03aAB45K4jlrQTXz79kiVyneDuSApNMcW0vFweaxnoK8GH4pB/k+SmvPkTELRpMjuABFlDeaDerstgh6c3XLYFADNZfT97uYdmBgsnIMtrBJcICAyC+LUctkn7mvAX0v+hkWuOljnGXYlmbHTo01eFfC9EafcboR7kVhz10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783735714; c=relaxed/simple;
	bh=cWFDzld3PQ/cekEiFJj049qd8DB9zAzyMfFJlwuruuE=;
	h=To:Subject:From:Message-Id:Date; b=MjquNlRlm+M/xk/7p7a1fPdvn/zjbSZsZaYADkm4tPQQrWQR3gSlLHb/VCMs9HK/TGogqNuMGm2BpVBvkrN5DGHp7Lq1xiNU9ric7lD31VPKYrMcJ+zq7THfiBQmT67wqtDaCOVxGf6IMY5SxnAosPem+N6+ZOk6l+s4Zl0T2po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXYN638c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXYN638c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0760C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783735713;
	bh=cWFDzld3PQ/cekEiFJj049qd8DB9zAzyMfFJlwuruuE=;
	h=To:Subject:From:Date:From;
	b=EXYN638cjYaZTCnUrlkqXlpmvb4/9XIHXaqQ8Nv+6d22VW2eXjpylTog1WfX9tcXo
	 mgxbWw40sIviF9R49/fdWWGqp7D640Ktxthrffq5z1QOVLGmmp1CQhvQ0uG1yTCugU
	 L1G200vn/KImbWxopmNazDyj7hXbXnBcR0QRNkMH+8r4HJ/rl5y3ZDwgz/ptxNye18
	 YTEkyYow4B9Yy5Lpr4WoB34I3F91Lh4VOQJnm4cc8CQZEbxDsgyjDisFD9qVhcH3pK
	 wGtTYcoJq7apjq5oJC7eCpFI9R/leY/dyCZ0TrAGVk5n0EyZKA05ZKmQijpXymA1Hb
	 SsdkJ70KmGfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA30C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373571368.25191.14658942897138073167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e7363e1c1e24b0418211900cc194b73c75aa81ea84633898aba4d83e920f5f
Date: Sat, 11 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783735713
