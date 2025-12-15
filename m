Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1524F271A6D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765761174; cv=none; b=nhdjohhLwxrXKVvpbdkonpKxP0tr7qq5eCq/tcDlHtk59pyaFSaSG1oJQ6QxssbZJ1wlcNsJSmmpXPlepEi+3cg09PEWgeAn+P1okRLrHHANg60qdXDpCaiBJWJePKwvOoXVJA5OiVVgesfRRnixvynf1uqxpt763Jn/SKLz9d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765761174; c=relaxed/simple;
	bh=840kb+Ws8w/uS69KFhzW0X+uO6Ky9rbrPUa8N+2sgMI=;
	h=To:Subject:From:Message-Id:Date; b=TcttHmFvmoZETs5rQ6eqokKGl5V39Gj7fOKfz9erBtlWkKquT07KZkZhYk3O3Ee0cbqFe9VjR0PgojoK6wKy79L3dUTkMa3ykpgzBqhgty9Fi4UHLSWL4GPk1V5cAgVVSBY/K+NXQOJA1gArbNVsvqOTI/lPv+Ss/pMup58a9tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCfRgXSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCfRgXSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E3AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765761173;
	bh=840kb+Ws8w/uS69KFhzW0X+uO6Ky9rbrPUa8N+2sgMI=;
	h=To:Subject:From:Date:From;
	b=eCfRgXSeYybXO6yTlcD7XDyw28LVkVo1FpJ091ZSZ4W0EZBUP2CJULHC24hKM1Z/0
	 m/0iJBvCxcXhmsREOYS+fhbXfiqO5NDxc0F90Bkm9FM9dUwKuF0YCQXnIVFadhFXeu
	 hDU1J4QIl5G31lQ/XHEecw9MxlO5NHQxTmZ89kbdubEwQ8LT+qPbSe2u+6lqV+MJQ1
	 NTTXorsYbvb+opIuL6n1gsoA+4zbBJYpkhi54jVoXES/iQHyNy9w8aDJrCn38I5kH1
	 QkPwirIboaybu+P1ZaMF7Ealskw5SIzUy6q4+8iHPIvrjSp3hrb4wnwZVkAzDMaUo4
	 c8PtNnAeLvxow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B65D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576117360.13012.4754000704029698554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472161020c504355c2b2639b24a6d74e1bc86895afad4f47cca4b74a33be023e
Date: Mon, 15 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765761173
