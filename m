Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51086331
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776044254; cv=none; b=OOqmH4hufm9uxx/EP7VNxZp3UN8QVrTyfN9I5NkMvSGjADjzNoAPW/auM66E452HHmjaQL2q5WDMGUJSBh6Y26aZDpq5+2379wC0Mbro6Ngo5i0X4OUKmu5h8AlNQW3RvvVOcgl1Fb2Iy1/1wZLxtQMEqLKg1xMoUA7nSOM6Phs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776044254; c=relaxed/simple;
	bh=neEeJ7iypOdR2boro15je6OeTT2eMkR0EpJpTdzXMsY=;
	h=To:Subject:From:Message-Id:Date; b=YsbnmS+i+TtxfujOEdtrC4qdpaaT2z20oOnmmjduK2vakrycReL2a9ZYAIR5MSxzwVfesd3US5cst1+POUcq80b3M8HnhG9uNecWGMnzd+NZDv/FyaUmrdH8vFaCxn9g9ZX2GzRO7kg6DPHGcvdwLbzvbjhF3p/ikmw/Qf4mACs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc84vCeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc84vCeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7B1C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776044253;
	bh=neEeJ7iypOdR2boro15je6OeTT2eMkR0EpJpTdzXMsY=;
	h=To:Subject:From:Date:From;
	b=lc84vCeAk/EixdmRDrqNeOhQSoUzljVd+DwhY8nK3KNlXhs3x0TTj3YQvBXUOJ1L5
	 SFplau94eLV4vpOACvmunHpxRqVzALAHFjIr1gqRBgziwpDa4+J98jk/HqpfevF1Tr
	 ON823G+riOSNTf83vCOe8u6vPYkomWTIS5FkSt38apTY0xNupk3G6oavRmoZHVY97B
	 qRrn6zXF/Lm0msuDLSAVLSKLyFonrQWp6v/KUbtPmantFxPmSCojjTPzXmfA+tYKNn
	 M6eBz+VmmsodQhYGpl5EepSprirAqHTJY+OXTpKo+B31KCwvO0Vt7ebTVRm9N9wDiT
	 yyTcTrbGej2nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C9E937E0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604425368.10475.11916298945523536996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0beddd35b8a41249fa6e21072e8164b1f3d1c56d4b9db2b5f932d6b50d0e7aef
Date: Mon, 13 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776044253
