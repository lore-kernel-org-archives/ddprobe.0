Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F11EB46
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722177354; cv=none; b=eO9j/4DkCUyTZ+7wBRQVKy+eyGbKRY98n3nZtauwVvTuOH7ergPGZyJkcmmYReviaUD6diFbcLldPKN7G4zDtaKlWmVif8zPt8CFS9rUnQYw3sBf7xgZhvSoz66xBfRdOVF0ZlROTHPrrFqpflBQtBc0x65veiADg52fGxw1z6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722177354; c=relaxed/simple;
	bh=rAoQR+3LaC1IfFFfl13oO/FUT64G5TVyR9EaNVaPXow=;
	h=To:Subject:From:Message-Id:Date; b=eLV0cAiAvheSUQSU8HjIBX1t8c/0jy7gbDct3ppCjgp8HwPu9oQYb78nhrfeh0hvXo91tzYWlDDOp7f9EDH65JROqAmHFNTVpyZH1/3fdjH6WePSUX2ObapmS4wnG7AmNZpXORyyM0MHS37veVQ2C5AzLEakpZQSSJDgZ0Y2k5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6R9bpoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6R9bpoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5BCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722177353;
	bh=rAoQR+3LaC1IfFFfl13oO/FUT64G5TVyR9EaNVaPXow=;
	h=To:Subject:From:Date:From;
	b=b6R9bpoqRXg0BrgjWErqRbAFGcmvezz+SyXoQDm6ZgQPUk2tDcbKDeEFqfEkbsLFK
	 FtFwv49uiNON4M8GeCd/CTXUTzrUU8XKA3V0abQEwYlwt7xsTQIl5GffQvDSem3GeO
	 pyYevNRqwYggMR/JdymBQEigiqZ1b0DOY/t9RiEG9RLxh/m/crG1Eib2uAoySoBKd8
	 zsY2gBPmmH2WhCxoqqNyaBoEt8mEhWXU0pMjqWYhoRba4UtBj5gz2+bQbvP+GyjrxM
	 vlmzFgabxBtm2DZdzsFfk3DudwIebhJBEeSSQ5al++LJ8tOylP/k+uxngRG5hgm1fu
	 ww5RAB3LTkJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A417CC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172217735363.5404.13596734594192428610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19566c67775fd385f03754b8fcf18fb59198f33fa7e0f6b4dc1dcc7b1c051f7c
Date: Sun, 28 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722177353
