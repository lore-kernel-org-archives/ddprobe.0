Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A774501B
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716142943; cv=none; b=TwIywIH7YbNCMn7wstTfHCVcJ8Ec8Oec6y6wC0J6ntlIGY830gnb1rpqc9ArvDZGr6MfKd4Q67rfd3z21QIgLO2gW+YbpOVTy8VLWmOah76ISp04F8TJdHh+ztDwdKvx4X0kzZ/oxf058wRu+MPWVrOgjLmw0I0AfxLDj1eU8NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716142943; c=relaxed/simple;
	bh=itahXD7+w+nyZGQGFDwxKffIozlkOlpcAK44qPtvqSw=;
	h=To:Subject:From:Message-Id:Date; b=M1MwnyQE5AuP7zH8CtCnE0PAlomAAFhD3Fex4Jm96vyN3Ej4R/tlaXzTexBPFWZYBx0wVtp9uHYz6GvWEUNtBrSyYZEHkOVGiQTLjQiSIg4+f11aDAkonZhdVoO5X8YYnthmpEjsZfnN0Y0+oJ7unOMmmVWSH042T28CxV7/c60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkDAt3gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkDAt3gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA692C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716142942;
	bh=itahXD7+w+nyZGQGFDwxKffIozlkOlpcAK44qPtvqSw=;
	h=To:Subject:From:Date:From;
	b=HkDAt3gxDvgIOhcTAY82ml0oZHmTAtTya4Sd/T3R81RSCz0sBw5tfcJK3XbjQyKwG
	 Wh3L0EB07e2DbPasKH1Pw/ETz4HwhdC62u0m84/J8Xj/F/URKBNO5Vz/m3oQahrMFW
	 mgxI4WMEHreyumCWkh6vCewLKvLKBEffPF3YB2sZ4MrNn+NCvUe/pyc/7PDBwp/67q
	 jhJiAT3IoWShaDjd8fLDMxuKWJ+AA4DTcbmne0X3W7GC61NbvZEr6MUgfIOIn/I+Ml
	 jurW/v2m7JVPjYwcEq0pqjkAPT73UGp4GrMRCO0HQsLenhnc4IQGHasmTc1DkJxnNt
	 Sf9Yz+n1DYV0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3623C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614294278.23069.14039865128383438245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5586ff5e011eac16fba8e4ed59533d264cd62980c0126ca0e9008e35cdb546
Date: Sun, 19 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716142942
