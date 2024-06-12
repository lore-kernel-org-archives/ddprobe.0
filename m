Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D2116FF4B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718197103; cv=none; b=bKBLI6QXKO4ADZ9Chq+xKKVYJ+9L8QXG/wo4P8vSN6UlGqED7G0L9yHriPzMqOq4s6YPnpAGuw0r31YJZwi0Widrki/WBsSk9ErO1JzuXx7b4Arz6w941CXBowFTkQqCOUCtcAn1kfhZG/62Ib2it5V8fcImyBoLDRRgVGyPyFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718197103; c=relaxed/simple;
	bh=Mqd/tQ7qVM/yyhKoEEQ7RrFm0xF2iCfiDgs8CzUwxno=;
	h=To:Subject:From:Message-Id:Date; b=MGtZgjnWDLVwCgQHaAhc5RgXc/fMJF+VbtKPBzfZIZxwh+F5umsgzgsBw/wC0A6HksPV9xeOJJ8bbjJRSndz+cok/cVaqXLlrsoh6nWcJUbLDLOe0DzqrL4R5/NfXfnsWVRXLS2ExcnCgmtbJaSC7pMoYlrEctv51bK6OlJI6C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCd7Ekpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCd7Ekpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19662C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718197103;
	bh=Mqd/tQ7qVM/yyhKoEEQ7RrFm0xF2iCfiDgs8CzUwxno=;
	h=To:Subject:From:Date:From;
	b=sCd7EkpzaOLFtPba0pnp+34L6uiGCspgi2In7EZvYHNagfrvVOfUOzt5PkRyYy/C9
	 7/DfZKtFQnZ+YxS4i4j0x1hpvTIq12vrO2Cl7CWCHUb9nnkXLICcz4UNBVN2HyH5NC
	 Vtp5aU7qCK+kszHGh42ak7U60PWnHv463I7wg/BlIsUw6y1NYzjLVapxk3np0uOCUJ
	 gdYaK1QtdeUHWVn6CEKDH7DQOzjRWdc9nfOafykT/gUS4FZH2FFaKE8PaLuEeEv55h
	 kN1QQUP/hTUSbVuuP6mlE5sd928qL3Xw3w5MmjEKjSdGNbzwtEyQBr9ZVmkIr3jo7A
	 En2I8H5Y+Uzkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E389EC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819710292.18716.11526409393287844778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200e3398ca7479bcbdec29ce7c5fedb02863638fbf7abbc252c8b9ee025d8e66
Date: Wed, 12 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718197102
