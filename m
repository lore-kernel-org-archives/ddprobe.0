Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC302010F6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743787194; cv=none; b=BgQOjk9SXOvkR41t7XacQBPGK0kIMMlAW28Vh8ZNx21FpYQTZLU7WhVR6S6x36xSStLYurPWrt/2CTMjuoDE8pPuSnTLBZ9xjhr/nFXaCPwslqsL0mnL5XM2CSPTnoWpFMJve86r+H7ZnylS8VXpMp9NplevNRunm8EZvEXbz08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743787194; c=relaxed/simple;
	bh=ksV7ELJ++Lyo46LMNwT175uISqR4NSaKkGr9iFvHd+8=;
	h=To:Subject:From:Message-Id:Date; b=U8Lt/cTh2gpR0yKN6HgOUzKVuBKl5bfCz/Kl3ZUbp1LqW0y/EjN6iZVNrRWa9YJXfXOrjvJJRLv7unMusLisiELxue+qjW/2++iIp/9pTDonVo3PCREWL4+ouHx1bowBSNNCJnsx9G6dNL0N4eIz3enHNT2EALp0aypXOfBJlOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5OQHo2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5OQHo2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19A2C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743787193;
	bh=ksV7ELJ++Lyo46LMNwT175uISqR4NSaKkGr9iFvHd+8=;
	h=To:Subject:From:Date:From;
	b=A5OQHo2Nf210c/xI2DwnHosoLXVGf6fFZbFMBXsVu42FnxinuLLfd8YzhmbsXrzw0
	 D8YDFSNvrL3j6uQ3ltrF0aQq/CToZR7xWZgMNviZiLhx1O8kB1arvxZV9gZ4w0vUWO
	 nxiFjpYz5PNH+eveEG7Ou0Rcvbd4jtYoUq7oP1uuKLOGJracGoSXuvhsPKlPnUykGr
	 DE1pcLpagRPXZ7V0hsiSvROJCmZ+5g6+T3ye/TRyX0RUyyZcPDSk7us7xPw1r42Tg0
	 frt4848QJGFQdgPY6AIZ57LB1rPVmOmN4Cc2qR/UF0hSVAjj3l1QzhPXLSPFMceAt7
	 J3JLxAGl5GT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F19C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378719368.12388.10602215511568442021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef2c0a5919e430831688ee68a8d1098e990a634f0ae10582206879cba0e7d21
Date: Fri, 04 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743787193
