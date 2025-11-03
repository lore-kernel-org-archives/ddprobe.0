Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B0138FA3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762140594; cv=none; b=ILK42vqT3HkMtucZw/FwU8gPBxEPRvnI8BeHUAW1sSc78XKAV/skrO/WnJXqTxjQRo4LqyPb6+TJGqbApf1sRykfnosmwnOwAJqi8/VoFpIIfk0F7HisHPyXUUv7KKVeWSRmOsqMmEEVm8+FuODRKlP9Q+uiJNQ5M2kLlnuZ5po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762140594; c=relaxed/simple;
	bh=QTtzo+237klywl5KckYWYzaxAB98dhwOUHqnPo3VjZ4=;
	h=To:Subject:From:Message-Id:Date; b=UBaY0xybh7PZqvTu23OnGjKsy61KF3D8SAkf5dmLAm7KjIbTDcLNUO1AlJG0GUr0PbbWJpHK7ciVtzZ+WMRWIeYriqjHuAxxyFhLsg0Y7NwfCXXKngLD2FjUHmCHQPDfr0iRwHsdez2Ionl3ZdoxED3WcqYL+GubVjUU1feFwZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUVpXP2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUVpXP2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762140593;
	bh=QTtzo+237klywl5KckYWYzaxAB98dhwOUHqnPo3VjZ4=;
	h=To:Subject:From:Date:From;
	b=KUVpXP2WrxEDxgqan984ccSCynSH30fP4SzieraSm0QYG4Jnn46TeZRgN9fV9woI9
	 IGZ4+98eG71jTHJ/MF21koZ1Mdv0zJ/2Ea+Hw1ll1cC/Z9+SrIqO9Ncf0CQC4zIyX4
	 Qk1muAIElo7jukbKHcqei++i1X9/dvSKtq5UPjkjPz6aFaaDTDKPGlAWdgWNt/U+CD
	 GTpS+kZ0RJpZFJf3fv3GNYH8qG4ZnOoh9lQQiUCESr8+kGyJpllnu47+T6iCemD4td
	 wfzrevSgCJLgsIKPf28CewxStZZ7qmDML5qNy+5weFnXdVGm4HzEC7JGHdni3NfiOF
	 u2ko9QogEhazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915FACCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214059358.23801.10380294671631192899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df6e6f76f709173ea01a1c0b8bde0e15472012a872d9494a3de833f2668b867
Date: Mon, 03 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762140593
