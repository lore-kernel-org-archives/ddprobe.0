Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6A4189B95
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724929554; cv=none; b=jumyeYhV77lNQJB9lmQitUkq+MobRYPU8mLKLQAKzOeSaYOTJ2kMNU2tsEFIOeWrfNgJCIJ+R7LInS6x5E5QcBkYt7jQ9WRzBrTZcZkjBjXsS6noQOk2BgviL5Rbk8gtpiEkhLxjoKdR0OoM+zwL1zKwHNv/I9cVIaeMAew1cn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724929554; c=relaxed/simple;
	bh=9hX+kXDTQ75obhPLaHF7s9YNRLyr7AD+gegbfF6o618=;
	h=To:Subject:From:Message-Id:Date; b=bj81C+c+FQGYLrXCpDKyceb2rAxO610olz7FxYoC1tGrp6mlglpQPiuQQtbSBfiAkRJUZg/6ldsiT9wU6WQj3xK06QfXnLpi0tJ5WJ1bjKH3ExwVfMArqp9vbFEqDRtEv+41QUAxDx1CmrKDe8h5so8wH+CzcYaOThHWU7iiZuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukjP/YTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukjP/YTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD218C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724929553;
	bh=9hX+kXDTQ75obhPLaHF7s9YNRLyr7AD+gegbfF6o618=;
	h=To:Subject:From:Date:From;
	b=ukjP/YTCkRMqiPo1l4KMD+mb4kFf52YQO/d92Y6Cv6moyiy6YRAeS5A0Q9fJuKzht
	 +G68FGFIIdv77USmZkGnOs3yr/GJYL6vyYgzmm9JsJmiINrTx/0X72cunOzTOvCprS
	 E3oDmCsQD1pOhnlSoZxHdCuDt9G3A0MXNyaLd7BCUMOBF1uYxTVjXQ02TnNVXBDC9y
	 ahQ6HTevGOc6ibpPPqJQuzBj2vE5wXRYNsnvNkiJ0sHmgGpPEoQ7PdX0il7YD2PF3s
	 S0/NM5YQZb2vEJUnRfs5LFvlfDhfCVxooAsblTGa+K8DWac2XprVmWpOVCU/RpCIQN
	 9IgvboMV6Isdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE0C8303F
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492955361.20610.1369482164885515412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d5bcc71e62fda7135045473ae6d2bb5ea83a8bc0cf77029cf8be84f35324c0
Date: Thu, 29 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724929553
