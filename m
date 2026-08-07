Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0AE3F8254
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786096834; cv=none; b=TjNMmRCQnX9LqzFFccurYwa3D2NOYZVWClySMHlZClB1L9hq2sl6MsI7g9EOSGm8Xg/L9nyqBIgPUPvaWAaEk048Z2PZubNa4QGVNgCGvlEnDkGIGvKuCSq1HjM89AycxarXvRKpl3yDKe7+/HvC/O1/JmWbo+gJ0fyYIvviP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786096834; c=relaxed/simple;
	bh=fQrLAEBgo7qTMQxixbSebwd0Z8LHZ4KMh31BBrq9NZs=;
	h=To:Subject:From:Message-Id:Date; b=A7c5AVTVm5kClpVBR+s2tvWejdPtrP0flARzrcYwPoi0FhUz2snHrxsHg4rsiSXcpppAN69dJHfu83jOvDCyTm4ClQEUWmG2FEKqbj+fS3bXNarsRhrHsmCjTdXauDZsxjecSoxZZ8XsyG55RLbfwBCEfc7Zox/7Au2W+ACE23s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmA5G5PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmA5G5PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786096833;
	bh=fQrLAEBgo7qTMQxixbSebwd0Z8LHZ4KMh31BBrq9NZs=;
	h=To:Subject:From:Date:From;
	b=GmA5G5PCSCFOKHEg2u/HLUzVtxWzJzYpFOOnI3l3g2lOdkJ475HQ1Ly06ORBryQkt
	 Kg3PWp6Qah/qGdv2di9QlI59//QfN4ajUxHOGoo2NKulJtmckYVss1bfyyeTPVocmn
	 ovmn1Br90YNdzECg7bHltwiePmoFvqYeMPpaKI+oDJTSVZiYl5dSGhN+PtEFnAsFIP
	 2gCNvr9Ls065M9O/b0plsE5JCJVjgvj3zQ1NHw748KSf9ZzJV2LKCc8kfKCaUOv78m
	 w6Ja6QCXz58qFNhGAZM/sj+MzYt0l6aWy7LFNYoPGZvFLlYsB6aH/iG4V2nbrX7dOI
	 4jJh5sbZsjcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5EFC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609683368.23316.15328801961780771749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cb043b411014c1c1f38570854c8edcc794e745b581f5757b5cfa784c288fcc
Date: Fri, 07 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786096833
