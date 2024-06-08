Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C691862
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717871843; cv=none; b=tw5habRuoNXu09tY72ZO4lbtprkz6ql65Vf0gbliJEFGnjFHvj8LJHd7ECTEO+8g9m8yngWRlhVN/jT3dD/qo8gOPf3B4hxuVBtQqCinMNn6vzJYZzU5Z1mygfsGu6gqq6rsvbzUf0b1sG+lC1MVdjwD41xY8T2frDC/aQbEg0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717871843; c=relaxed/simple;
	bh=fKgMmFuf4n/HBy/LAQccaYmK+Hz7S3iJ1++m/98a+2M=;
	h=To:Subject:From:Message-Id:Date; b=GBharsJM/hDRrB1e4c66272pUcvmjoEj177R1lsItAckRLQIfcbfYLt6QuLndCgvOFCtDFrja/tIQ5oWv53A7FkSfFtnTIHaM7azIcx56EMRzYBWkZbLXKlqH3pFkA7ZtUBw0g3xIoL7vYo4Q1bwVW7qviK2XIRrxURZr+1e/nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcGaunLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcGaunLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0D8C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717871842;
	bh=fKgMmFuf4n/HBy/LAQccaYmK+Hz7S3iJ1++m/98a+2M=;
	h=To:Subject:From:Date:From;
	b=UcGaunLy36A1/1vxvkZyVvlz9eqNX7hps/8lLuqdDBppYZLAqlFyeRSuFvDwauY3L
	 sEOLCySVjDgdLum5YR+HsUzedQKI61S0qy9horARePY/X+mYDmRmyO8yOUWNsNQDLh
	 H8G78Fmb5zwANJEDrDcs1WzQIaI2ut+z4NKoEjW8Dgwb+SL0xuVThhuHftWphAexea
	 myhCqpdl3stnCQRgPRidPOTryCWcFgGYpJ+4NF6cmlbbt2Qo90B3LUz8AsL/dC8Wtw
	 l/aAYBlSCKNoGtZ10z1bhEfLwVK9etIQFHIoe9AiM/MZke6DEFEQgVcnOj7IAkcsFL
	 lew496re2thsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B9BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787184277.19977.17060794368344965902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ea870cde019d0ca1b864c472f9d04cf08eb786d66053d7466bd71d20234c49
Date: Sat, 08 Jun 2024 18:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717871842
