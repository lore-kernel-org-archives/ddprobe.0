Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7611BBBC4
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728923154; cv=none; b=uwv3JLYb9kXQFZi4Jl25PxC+R+2TBRlx9rXVXvuLvDvNhWyif+x6stilDfLnnD+ywx31CVnRBLU+DbRG6KkP2sYkeQmIt3t5fuVPOsYxS+urPyzoMN7/hxnXfOOAwo7ELezK40/ucFucLSfD1msIsqi2RB3LgLMe/2u8XweSvNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728923154; c=relaxed/simple;
	bh=/VX2GLafUKCEYuNwMBDRI4Lwfw5dWTDaKXvVQAHMJfs=;
	h=To:Subject:From:Message-Id:Date; b=js6Fsm8aMnWrWlbOz3cEiDqshH7dVhdhgeuBCxAgm/60S/nEatv7fylixnMBW2LYrcCGSTgx02/3PppNHO2ONV05woeFH8qCz90o9EKxoQMqoYmvKejbOhu6Ja5ZsFGcwc2ZZ7Sb3ZET44M4+OYwtsCOx3Ja62P1cL7WNWy+BDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAmT1sKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAmT1sKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F2C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728923153;
	bh=/VX2GLafUKCEYuNwMBDRI4Lwfw5dWTDaKXvVQAHMJfs=;
	h=To:Subject:From:Date:From;
	b=CAmT1sKr7qBxNnNRCFaScFtpYLHuztPAuSl/N5HxIy99qxcFcyuXDzqfLDNB1V04U
	 qFqX2093YGTX9LX1gpKISzrKtBD6L8pzPs0yoGZMVqvj1Dz9EoLlsvzdm11tx2A0gS
	 aDpRaclMPTabCOWDrf7u+mk/T3jDg3i5W8b1ospPU87BPdrodapQrM9fqxlt1lJrAU
	 dO2SScaAVLI/QWhUDeMygwskNlHpKkJj/Y0yrcApDoPv4TZnXrfxShIuS12YNevHGt
	 Ae7xy4h1mJ6OB+yjZLBT3pQ7/OU9TECv4Gtu17EeksQKhA4p/7VmbLO8GH4ooqtBga
	 zUrNg+PtQ7Jog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE3D1812E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172892315361.19011.397178517288866982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a8a6e4133d80ad7ab2d014b51ef44a7cfeb7397574fd2c8678b3f82fe1af83
Date: Mon, 14 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728923153
