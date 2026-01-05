Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA89533A9C0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614033; cv=none; b=SaIzaLYMLA1dkiS6ClX/Qb/MwpyDNHsJ1fdghWfm24EKFlfd27x2puV6S/vpmc+MUbudga/Avpupuq1gUwB4SeXFGa/JtPQtENtqEJAI0i6gj2CbvmiShN9sH87OpFw3noZTkzpiyo/wt6ZPBvzTswlexBJyv+esq3JF67dfpJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614033; c=relaxed/simple;
	bh=VKCo95sbKAiNF+N4MgpkYpqzTxgoPLD7kiRuC8mdJbg=;
	h=To:Subject:From:Message-Id:Date; b=b5AzhrASBJDFjPAB8zkVXNtq+J3DWKCngTbUHa0UDxgc7FdRwjuY+90Y4KODrvsU8FE+p1GhGVfcYA8oGfMZ7ILIky3RWzH7C2XVuy9DEfl+at/eSmORmOOOtK/t2UMO7jFe+Bijj/4+6IMqUvotJaBY2O/lbGDXSbU5ChHYuxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI41o9FC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI41o9FC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2844C19423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767614033;
	bh=VKCo95sbKAiNF+N4MgpkYpqzTxgoPLD7kiRuC8mdJbg=;
	h=To:Subject:From:Date:From;
	b=iI41o9FCj5QUDjIjTMXeQMeOuazLa0b1jMGtb+W3bLTRQqY1uj82wMvPW00yA3B7R
	 qD19smvLpJqQVdvdJPmHh6vL/xHKXMTVbrs69FIKADd4Bw5pcj1dFF5JvrZzfk8oP+
	 bzUcv+YxB3AD9QGpKT2tPEgOrGEGPDy6/FbZFQsDCqp4PQCdoXTskqOLHvZvd1L7lJ
	 j/R8TZWqxq0y5kmGfHtBYWLmANVnsByfBgkNVMqiUyUaORAxyIi5iechAt/Fg77GG9
	 vongLOiIi3D2J9rqyi6tNwAr3aLdbcjXBhTSoVhx2e93QdXDkrhbr0LszGm0HbYxLK
	 1NNzfH1edmv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B20FC617D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761403359.28020.17182999365579800689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7540c4596bb03d634ed651d39f7c170c40e0e90b968b4990a2f1e6b8b588d5a
Date: Mon, 05 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767614033
