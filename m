Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAAC28D822
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751303995; cv=none; b=Gh59gWOKt9nJcgkmjfaKgwDKKYeBjIoBsrMU2nWRUi6EROSQADY4F9BbSJyNQsMbp06ur7ml8h7bA+43mdPqo09FyhqaqXRBEDGYk1lBrESBCSLpvrrXM1SiYLsSl+RzEJz+PJmlIKnt3qZIsUaLTIJLpr9rByOIfOCVObPKWfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751303995; c=relaxed/simple;
	bh=UwcFsbjEF6cfS0T4d/6Tmi+gbMtj/aKSuHTJnbaxmzw=;
	h=To:Subject:From:Message-Id:Date; b=Fo+aAEmgjJQerFQj4KDPpUKWp0BAscu9vwI6mqPK2efp/gjIz5V91ILOcA9ePmuXqKV+X5CswJoJaUOm5NQjlpdXFm5LOr08SK/8VPspdoqCnTZ3uTfmFYCj4PE27HnuFr4sAgGzgzdbV64j2+wkNo6mxTOiIN1TmMkk9mgXlhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqU3+V9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqU3+V9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AE6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751303993;
	bh=UwcFsbjEF6cfS0T4d/6Tmi+gbMtj/aKSuHTJnbaxmzw=;
	h=To:Subject:From:Date:From;
	b=hqU3+V9/62elquPbpmcKZNlW1BR3rIhByOKf5y39GFelPR7MY6SKt8lFAWaLyxqWc
	 s6oS/iRZixQbYu+4pLn4GC99o4iN1VWTukXlfABlybEnhfBrRXrfUrPOoyTKENspAg
	 S7kZSSYmNH/dhT99IDFpI7OSDC2PY7baY56GHGhAiqvkEGUmjTnYowP8Bto0BT8so6
	 v6l+D2gAJi2SPcZWnOPFV2wGylJDV+WkJ0hTw19jJuAxe0JfJD9kwgXZBC2JyA65TC
	 ZMRwCCWmOtkLF5icE28Ah1jL5rVXROjN3jJ5oErfmgrv/vRDmJbBjkYj+f7aDoy7B2
	 ZtvsSCniPh1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1785C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130399364.31361.7937912398168921785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805a9c16e0c2750c40632a55d375833cc6d517c97518479a95e07035ee5ea5a2
Date: Mon, 30 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751303993
