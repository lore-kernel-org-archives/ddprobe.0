Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199CA2E54C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755848994; cv=none; b=kPnzd3D9r5gXf7rN1QtCNsD8TKwjD275OwFaRN2Emhg25OI7abiO801+vHsugyu2ApFKzGrfPpJIcxPZ+XbzJoHGyT5i0TMYrGhJlMqoj3n3F1DLyRfSmVGqaG+sqLU7LgZGH+n48rE4niQtvmnM2evjyt3D9gk7T5s6pEnCbDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755848994; c=relaxed/simple;
	bh=eYHGoP5eFLfrRKrcMUppWH3CLpFojNuU6ueqWuzWfx8=;
	h=To:Subject:From:Message-Id:Date; b=bCip9yREbWynjEyjJ3e2jWqbWudYsl8p75JzZq5T0O/Zv5Fp1CcfF8BazrWH8vUJ9DDy7xKtIkL8Z+8xNSBOGWDbLX5iC4rMRNakQGekS24DXlg8ERzSmDrze0Z0+xNIUBkVMJpWCbhRF91M8MdfvzvU5m2YKvxBk+KK1IdxsiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enpQaEtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enpQaEtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D076C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755848993;
	bh=eYHGoP5eFLfrRKrcMUppWH3CLpFojNuU6ueqWuzWfx8=;
	h=To:Subject:From:Date:From;
	b=enpQaEtVpqgdtvqbLJVHiTYF9y9DZQJlPnYeJFWCdVvsnKPavWyNtDxZyjw4xrSJf
	 vQI/fIygW7xp6ufGMKnTOJEzuRTaFM0Oo3kxy46LWSUlX7Vzq57/0TdYRtVF1GM2kP
	 HE8FOsEX/yaU2xKNsdnVgC2ak5LzI8Le6yBWzuw+lp9MgsJRUKkuC9fK62V58UsbRo
	 1UODmiDahTYwqIM0yr0nrNExXT0uP3b/EoNXJXxZKmbdM33p977Wy7numdSpWTHTV1
	 bW2AUHDrlB7j1HdVmiPCf10xWdZX2XHxPJ94ffc0OdISXOY+TR5C+PdsD3mFYIDA0m
	 Eh0UaYVqRKw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB2CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584899357.8049.2091953958680618644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23b7a2cc3d196f1fda861abadd04042af15a3a99cb721ebc76628cb6b37d1a2
Date: Fri, 22 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755848993
