Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB1830F803
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785704434; cv=none; b=oZ1S92S1l30PXjymLf4B27K7CHsL30AbA/IzPEp0/rTlm7IbKDB//nV+AwcQJloJdfTrYe6GqSKXmlU9NnCgkAyHuGZQfhxey4T4fQREvV+F8slkwQ6mV/5K/JKDSb3mfkcoaMKOa5/skf8r0+iCcYoFlgRGyR1Vy0XaTnnNhd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785704434; c=relaxed/simple;
	bh=TsoX6lot5ydLzvCJnIfoXlo9w1AFLGlT/Xv1wCjOknQ=;
	h=To:Subject:From:Message-Id:Date; b=b3T8ouo5HiCwypxDfvCPaO+Cpe1zHiIqc/mq37kbR0xffe12paS/eH6X3yzIMCGTxbOCx2hGu9r7aTupQAmy8Ldl4HEduxon/Css9NxmiF+q4xwsS2xB9O61pk79C8qYkXV+MxYV+Jtos57cC8j18uJyN1UJqMA+G4XGDQqE8GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHSPh0gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHSPh0gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA47CC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785704433;
	bh=TsoX6lot5ydLzvCJnIfoXlo9w1AFLGlT/Xv1wCjOknQ=;
	h=To:Subject:From:Date:From;
	b=rHSPh0gWq2mckzh8M2cJpmPDXqcZcoduhqFRG5EoDsrEJ1YcA9Q+bP+SCrTCJGRa0
	 drJlfVbroWvf9VZjrW9KdtUoD7FRB0noSJB3Q8lRAV19Qp+2FXkMofWx9x1mdckCvm
	 0HmZzLBh3A1KRwW/MKuoy8ysEpFuOLkwiUseUvH29hleOffGLMqYnLoToLwKz6ussS
	 WMUhC1ajhlCcrVM8F8nlxWUgk2H/nQeCcvhEmYojSRJePUEikvwYYEo7T9hYtArXZo
	 NniBWH0ttgsVYbAtHEhmF37H5mulldex2JxcUJmny0A4paL/91m+TIQHB6sHkS1p/y
	 kh4lRqWYsl8KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A822CC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570443368.919.4423605962176907232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8d5bc52566e212dbf78ee7f3040648a05b0c6024931879717de1623e5a50fd
Date: Sun, 02 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785704433
