Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A82F4317
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749691794; cv=none; b=tFksf0eOMJzQrak5FHUJKhrMxGO3nWewfwUBjVDAFJuhVUmSuc2NWSJ9IlpQQFMQ2VhwRUuTtE3/Fm7XD8nmSaymVqN5z0pVr3o51CTX4dFM0+1Ej9IahQuoQ7hWO11C2HmUuPcBmPo0UR1JpdSRvKoqAR6unRNgc43kby6ii1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749691794; c=relaxed/simple;
	bh=gWMn3Das0m09S3/JIFkFsRSxNYwNNhqh8I+O41fNhGk=;
	h=To:Subject:From:Message-Id:Date; b=AEFFXWUJZYLo5LAcuTwo2v8PduflLOD/kJkdGCFQ1phrfeAtPdPNcnyW+3FUs3aZ++jJSp79FZnK6RydwxpJTI9BhTyXyMsp5MPqIO82H+vtFO2Q/EnC3gAm3+B86+Lu+5+5mSCqR6g87PeTMFX2LHfCiboac9VyB+F6Z4lG1yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDGmOcAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDGmOcAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B362DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749691793;
	bh=gWMn3Das0m09S3/JIFkFsRSxNYwNNhqh8I+O41fNhGk=;
	h=To:Subject:From:Date:From;
	b=cDGmOcAKi42g/Z6wzab96kBJsmlClBYxHoVTGEi93GBDI7kTzUtYgJeNyfBL/dEhZ
	 a/MaRsdcDFc+D1O2CV8Jupdz3GMk96DHR+a2zgqgSptjNQ+faBAatWkfts9JizAS3g
	 ajJnV9/rjlsLedhJvKuNQ0jWXRaIPfSGLp1bOciKqhZ8Lqfv2g6biMvVGxWjBn3ZjW
	 o9dPbCVPIP9Y9P0uCtroSvRms2aTZtV0RX8g0gz7EXE4qMLvbGzhmrIRINWWkfL/Ii
	 8pEj2RUuOJhSV/k3pdycDhj3OdsI+DRXJDMzIUsV3c2zcYzsm9aSRYOoBoLzwhjUXd
	 HKdqlmibZzbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF7C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969179361.13085.2389928813900490590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497f22f2dfe897b489139ed3ce3ec7d7075124dbf590633802953e275653368e
Date: Thu, 12 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749691793
