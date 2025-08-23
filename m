Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27383212548
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755975595; cv=none; b=AC2TR6LUcizkVEr+58FJMHD6yBVYX63F+Iwl6aelTKr83JDdtZ0qaRzRu8s56NdmYMcMHk7dtoKy4tfE4v2k4EBR9SQa+qQSVOKSs3CWrzlNxInsskaptK5xPAVTmIWvTExNWKh/5V7VJMRRpSKgKWAbAq6lwOFr+etAP7uwhGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755975595; c=relaxed/simple;
	bh=1bbsah5+XX/+tATxqP40TNTvZ+r91pNkvtTRwYhqnNc=;
	h=To:Subject:From:Message-Id:Date; b=q88sNY7dBJ3H28Sd1uUzlgD2Gge7Z3D1U6HG8G1exwo31/MrNoNfHzffw8E2yYK08Fxf5N/kr1dRbfyoI2ZexBWhksvF7CCtre/kvs9Sil/kvkoOx/moGr5qPS8MTqzdOGn97ke6h9hIRdIMXj+1/lz8WynvQnEgfSabF894eGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSOmgufS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSOmgufS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF868C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755975593;
	bh=1bbsah5+XX/+tATxqP40TNTvZ+r91pNkvtTRwYhqnNc=;
	h=To:Subject:From:Date:From;
	b=aSOmgufSvKBZXn1wO5ffN7jbUgzjT1t9wbekbfMK1fHEHEBU/bfYQ8FstCRYk8UwV
	 OsF6pxfDi/JynLSWskaGahBPOafGttBX6EfO2HH1QJyYDYY/aE807SlRBFNNN3FTu1
	 nA4sbl2ZTNbJ3JdLAOgZ0FVJTT+8IZJSvutuaF4OT+sQ3UIcow+eh7jbUr3X6EenMB
	 f5lEzTlRkbyreaP2Sna0TIByIhM9dk3VU8Y/aDCMVWHT+nw1ezUVyHMLd8eRA6viFu
	 4khb1BITQFFI1Q8hVZUasbkIgaO/Yycln3ArxOilAjMUao/jbfaAkTHVsp2eBllhKR
	 nKSk1/WD26jSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE4CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597559357.17722.12221511911447363628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379d3f17860014a648e8f19a82a4f3f4ccc44aebbfc9b83238883b1058e02e35
Date: Sat, 23 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755975593
