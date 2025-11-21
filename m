Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D15A225762
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763713914; cv=none; b=EKwnTO3RfmIZAHUjedJmLgebWfA558NB2DEVhPe9WVU6lD0t4sBRxGI8rxKy0lnlaCOrK2o+it8nW8TMXQHnTmp8LTLT+4HxIykYVky2ZE9o9ukWbqf61qDqrUryop72prvz/f0QtbdP6d26T5cLgRXKs3A90cgein9h6LvF7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763713914; c=relaxed/simple;
	bh=O4k6nL7zudME2iJuEj56SpdzDzFyca+1vUsGeXpvnME=;
	h=To:Subject:From:Message-Id:Date; b=h061oDB74ekFtW3AhhZQywcg+uaNqkKmYNISQqNydCWrlRzKRxazS4PbjVnB/X96EqOLqeTbIzgWWgYNp7dHSpFPioMoToHcJmKXlN0Ryc0pkr/pMKxX4djAC4ksEVdP1FZcsU+w8JFDAvSBPCWfrViHQjAO/6YbgtF6ejVQolc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtMuTFjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtMuTFjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240BC113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763713913;
	bh=O4k6nL7zudME2iJuEj56SpdzDzFyca+1vUsGeXpvnME=;
	h=To:Subject:From:Date:From;
	b=mtMuTFjpMaXbY8fXtxl81xYtWtfnh1ibSGgX9m4fTHSOkQWVdexHOD9os4utQoO8+
	 Cp9usPqPTMuGMtWGZ1XkF0bPQ2jG5A7PVNSQ+TzFk81E7558TMS6lqbBtZrEsCZF83
	 J4h+unhfAMSiKllnameV08TdxUU98QWGlcf9o059UieScuOm6ttaNAqYNyGAleKEL2
	 p+UAw6nKT0S0BPQUrYp7mY4RWs4M3UR5/MTNqOfNwCIGY215thNqk1J/pZXvFw3u17
	 QrMDriAZu7/ddyoMr/eCohqXYdxpFOuRVAb3VBOjQZUtJzHe6q/FcUl87qKXNO6V2A
	 Nbg/QNdO4rqRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073BCFA74A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371391358.32215.803712310518789971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf51562b2d79f05a55a46fccee7450cfe05e8297e931fdd12d881b2020f59f43
Date: Fri, 21 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763713913
