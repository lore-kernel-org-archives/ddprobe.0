Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56581171B6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720243524; cv=none; b=H2Xqm9itlyqDmkXixo51M/Lq2Mq081ujlJ8Ds6ZaYbeZF9o30D/UFMz+UZGmIFxSYc7DiFOsuE14Y2Ou5CX/oGztXJjF6CKjLVi93TQmcKyFZjmYPLUVuLAO/lklI3hgx/wgO3vKlxrTmH8BdOmUqLRY481/Ux/aXojyDhG1F/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720243524; c=relaxed/simple;
	bh=ZLuUkcG4SCorxoKa/RudQM/P7ym9sFG4f3QFgiVS4nE=;
	h=To:Subject:From:Message-Id:Date; b=jcF2gtw/gs+M8EhrUsr6+NDOMdIvNEeYWSolUSGf6uIUfjQV0/M72fu06voKb2pQlSQT907bF/G9Y6GxJ3PqX+ymYGrM55l2B3c+5Bgdk7dsXc+2+83WX9uRNFu4Wi60M5zQVKIk/whpU1I6+rpn8MMJIFej07s5pBwDi+9cRyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9u7KMi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9u7KMi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7C7C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720243523;
	bh=ZLuUkcG4SCorxoKa/RudQM/P7ym9sFG4f3QFgiVS4nE=;
	h=To:Subject:From:Date:From;
	b=e9u7KMi5yqRQwXhpn/oSg+hQoOMnNTQukkbKJxAN/2705HS24FxCjleoEHySZ2JAz
	 d+9rojLhSTDtiJGccpe+ZqP/W6FvNWRijshOq4o1/Zj4nnmjRHRv/h+WKVihtySKrK
	 6B/5u13XJ7AKUgifAIDXzyH1UcnEXnPU4FbtLIjYC8VCIa1hOjuoypMhrMf0Tr/1a0
	 Pb1g+CjYLPtvk8WKScNsS04Y0r2XtG4KhKkkpd+wimrCmRP+k9OkI1tB1Xa77bqHE5
	 6YwouBtMC7IhtnluAcBBvkJG6Okg9F8cHPT9w0TBMAPB66veFOe5k8ZaIKw76Dkvi+
	 V+nWx0Ai7D+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5922C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024352277.10250.16295015869070497894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610b6280db772387fc6ce8eba73f23419c0fb23fa9c031387f9621fc8308a5d3
Date: Sat, 06 Jul 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720243522
