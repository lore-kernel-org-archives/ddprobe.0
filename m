Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9939DBCF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782354454; cv=none; b=YC/u6QxFtjw9daXo32TcvHRbDFjQs8bmkUY/gLLw4HuMD+0fqn3H07F644SR2fAD6P8xUj6hhii9CsrfE29zXPRHMyZjfF5KniT+pV0ZRUzv5qUlqP1jrQhA3alyZlGjTYhNbmyYWSUQ8FmFPuygeNbPKnMuPjCHqiX8yux0lok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782354454; c=relaxed/simple;
	bh=E9hpP58gN2gLlm28yYULdYaWCTIaoLR+s4OlBfeC220=;
	h=To:Subject:From:Message-Id:Date; b=ZbBISv4Rdcb8iH0ce2x27Un9zy6Z+g+FBsG8VWpw7G3TmFnG7levrffm+6AP0ASF59IBi4qx/tVwgyVi0A9/Riz+ulo1gicfqz+xvbzabKfA9ZK+My62Fq9BNYbE+tnjwW8kSUMIStb+EWYy9G8rdncsZfMJGFRrZWidrSFwWoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFDDNa76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFDDNa76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B0EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782354453;
	bh=E9hpP58gN2gLlm28yYULdYaWCTIaoLR+s4OlBfeC220=;
	h=To:Subject:From:Date:From;
	b=SFDDNa76xaDw7if4RHGthHSIVt+z59Dzjnq06udB4utSIAdmOM77Srj283D+iXmdN
	 gBMOIQTK4N4a9fKox5dannLE5ab0eYd/oxdpXyEAPRJHGozZ/SNEWuwxIQLsohRBEt
	 Dv+4D8tTfdXSJi+pLgxUpLbJximfELncrbfwIbKxdIp+gQLGs3zcOgkVIHN2naPXLS
	 Tl0EBf/Vq77ZaBKdCCG7yfPCURSG8vw3zM8Rh4zqQ05OhO9JshooaT7aa8ltcKBhZ0
	 eMO07gsdfl3mgTf9+6cE2I4Eg3G4afuXrGyfbSLRf+TbDsmfd5KrETDuSclSesAOYX
	 0vtg1wEJ14rTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EBCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235445370.2498.1173875705722319974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216a6fc9d255da604d12bf258a7b3129f6e67566f76a46ad5f9b8497b384697d
Date: Thu, 25 Jun 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782354453
