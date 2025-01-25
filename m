Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3211754B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737820554; cv=none; b=IvJ2aHUxbtcAOlBXJdj77BsAkLfjtBD6yuS2UZdPOD0XMfMW7vgKPw45pIg7UBTA0Pndb+eziP9W/TC0MX/Lnmhwt0e+2dqSs3/c/n3GBmS+1ZF+y2SESqF85/L1IoNmVhaLtHCPPQZnAZGLKaN3tjVlqOEETfIdARD1Ds2SKsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737820554; c=relaxed/simple;
	bh=kEFiFPM3y/asIxpgQnhdSH0ovCNsIoXdsQljKCCWGX4=;
	h=To:Subject:From:Message-Id:Date; b=Qd6CfCPVZgRysTUnvDc/lJPreITm7tMi0qGXNxCADUXda46gUEQccGxuisKHD93LLr6CjnJKXaUhqHZyIf//LIywROpAehw/bf9ntxMvIXRnKPqHymJB+vSn+04M3kYI+cNtKwaJaQv4nvkzaUl+g0bHhAemnQNtPQapGXUm2bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lf6sgWsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lf6sgWsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E4B5C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737820554;
	bh=kEFiFPM3y/asIxpgQnhdSH0ovCNsIoXdsQljKCCWGX4=;
	h=To:Subject:From:Date:From;
	b=Lf6sgWsc/VHZAFttdGtyjI8R4/gE1l0wzKwEXZNBxXo1uiReUyCyl9XoCRbiJUY7A
	 mAS02riV/3ZQ7wRl4x2iqgB5I0/mKN3RbaOZv5CO77q5y3/qNC+fd45uR4VFF/dc+1
	 qI1BiwcVFXeDEwN5P4B4xIwYHByeKsVN01/HbTTi0UIihdHfOgLnUSlQVHGnL/tkAs
	 TCi4tIvH2rUZrgTg6AnZfLIQsAWbGM+KkZjM42i8w2rRNr+HSdiKAnI8W9GOvgJKVI
	 obz7UGjWdVRXFFPT12M8Gyv9IltF4r/nBTyZjKst6hihj5N9xONT+4iExgg0KFf6ne
	 GUkw/A4UmKJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA29EC0218D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782055385.16663.10378899105210969383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d332cc58b4878f0099bd03946bd5b2b98639a72b30321986b4a32a1a43e90911
Date: Sat, 25 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737820553
