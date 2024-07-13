Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7484965B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720865423; cv=none; b=HEojBM5yf/XfzM3LvTdcoLfBTzWHShitd/ie95kpEL92KTJ2qnDDdso5sCXpdMgRq61MZbiP9Fje/MkJRYkr2fCOGhBpUzg40M5vq2gYUBilN0sANiNwcGV8BUPwY1RvPGX2FmiWGqJ7+h2a5edWB6jKef68aC6aKpJEehKoGUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720865423; c=relaxed/simple;
	bh=Ad+JY5AKxYFMHYsnVUmSff71sDyuPleO9DYnYw1VfcU=;
	h=To:Subject:From:Message-Id:Date; b=GEG3kSTCCZhRNNCE/aZnggmTqYwfDAdOzbChhqjx105LrNdyOje1GQ2vUZLWjY4ZclxDHx5Q26I91t1pPXikMApsubnT6HsUxQwbcrkA4qKcisUcDkwqwHs0Be/HwCLVR/rxX1mfmx49ldr4E5G0u7CqmPlNyfvlKTI+iEBNuiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY56IEmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY56IEmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8B7C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720865423;
	bh=Ad+JY5AKxYFMHYsnVUmSff71sDyuPleO9DYnYw1VfcU=;
	h=To:Subject:From:Date:From;
	b=XY56IEmb4B99LkYDKIgVoK+I3lTMv0il6uFFtre970ai69JNalZaWzy+MfMlOmvkj
	 diSkHRbjsDI3UwsMh5C+txhjuPblD4GqdKTHaBi2R9Y9IUCNRVVYo8Uu/ECtyc4xmM
	 WTEZqp54aPWgv6IU/VojubfMoR3M6OjTCP5cjnQ9lcSjoQeAGslvNsjWZKKsON3TPG
	 Z1xZ3Vmuu+jlSUEp9WZkrRl9zUdHja+3/gd05N3jjDr9s2RSQG2ltJuPVMZzjyiIDK
	 pjblArI5yZPFYPMcCL0FODBpl7nzgeQogibZdAhKQvgGK1anVobI636lg4b0zQtXlo
	 Y906hiewyAzzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2D2C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086542280.5472.9124491243922076434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddf15f0b270c71dae3a60cc3730d47e91d8eaba281ba72eb908f4e1e30a3550
Date: Sat, 13 Jul 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720865422
