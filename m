Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336F7847B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722180954; cv=none; b=VwlVU5fVer5eFsrY/BazlRm7JHbYR58nQAy2E+fwHsGOUTtwPmYtdeBPsr5SGHhU4bEeQGSFaLT8nGJxkhtCiJjtLG1ZvLHE+t6TrwNCvIzeP6lVEIL9sOjjcBuZdsPVpx/Nao8sSzH0eYs+Y/9w/rYXr0hagD93nhgDZs8I6bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722180954; c=relaxed/simple;
	bh=uEbFj6r5c5N0F15lKmF28jQwOIB6TL2YlDK8n88DzgE=;
	h=To:Subject:From:Message-Id:Date; b=hjOOWyNXTOZv2UUm2lOpolUU+CiksTxGD2sB6smZCxo1sXA3qycdNytVQhtQJM00ZYufEWebxjg2fKDdaX0F9eS/VducZZTPP7ce/tONHzcCFpTJowb14Zb/YUGD1bhkIb5UTLndHYCGbnQfXZaOqv6zDLTKF6WatXvOHlIZ/8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn3duZBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn3duZBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA00C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722180953;
	bh=uEbFj6r5c5N0F15lKmF28jQwOIB6TL2YlDK8n88DzgE=;
	h=To:Subject:From:Date:From;
	b=Nn3duZBgSMlejXBAkZ5qiWOyH2JxV8bdG2uNCHHvFeEHeqoZR4V476sVndGULQtux
	 yE1e2RagBx8lRhx3lYgLEli9P1vpT6tmaBITWhoRX+tafZe9/K43TqWqyrEZFbtOlc
	 6j/lLs0s/7lVCvacLyENIJfPicZSmEpR+P37KMUEf+Ncf6Vkj7MQZwk/8WweB3G4br
	 EtycZQDO+CtCqIU+kdi9W9EUzalcUWGNv+po801i8KzOskl15owalf6zh2EoCFF6x8
	 Z10agbxTFl8Yly71sKtAMC6ygedTK7I2nwSbsyobLoV+9auwWM/CDRpsB3VdWA/G/3
	 J7cbR555Rvayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983E4C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218095361.19368.17111597518900203402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d79faef3ebd866455cb663f5cdb9c3f79de8c7ea5f7732afab0e1b71942134d
Date: Sun, 28 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722180953
