Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE832D7F8
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770225234; cv=none; b=PZRj1MEGFd6IdMkQ1yLQawg+HgAJsAbcclOlal43tMmuzpK1TXpvE5cuJfKCzWo4EDwjY139XZCN5Zq61URyOhb+f9rpq72pP/ZKyTaERkzL/RZiMpIk3iIUAhPtq1PPidkoSPhWv9VdsMp582dYpaH6iYMrQKNydy8ZsCmC74w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770225234; c=relaxed/simple;
	bh=O4qcIwM6EMTNb8DJfJW/qUmqQiXd6ctY3OlHH6BzPKg=;
	h=To:Subject:From:Message-Id:Date; b=YHci/yMgrTM8ett16qGKJiqGEIL2fBFC5Kz6gWzMEc+W1D2QVMVAZxdt+/8HxMMs3NMaqcg0joEv7DxaAUkxI4vFRk/eZD4oQ6FSGjcmhGyWGs2pQuvhKdL8Sd6Sm/CdNcQtTrU7QdvKmlpwXix7/A0Jn5x5+rZd+Wp9nI+UAao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvSYp3uG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvSYp3uG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CCDC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770225233;
	bh=O4qcIwM6EMTNb8DJfJW/qUmqQiXd6ctY3OlHH6BzPKg=;
	h=To:Subject:From:Date:From;
	b=YvSYp3uGgrv2Qaf2+0yop+JQB/BdsH4zcf6OdZ8AkG1VRaiA+QSCup/1FotDEAiU9
	 TyBfuPg//uNPtBUD+Ki+vcJECnw5tzaXPKvy3IvRokn2j0vDv1y76m9RJtyM9fJrWo
	 ZdA8oncsW4zA51C9QSMCqERdxknXEJDRYvYq9nWuwEhRDNFyW0EFLv9IF1I1LOuygA
	 ELgdEwHjDEJWwu38hO68uowqJ/vLqekpGyoJqflcXT6SN1GhApKBQpysDBTU7SvhsI
	 osmBDGSGBOnhOQomU0j5zbewugXblnSx8+OWSNrCeVHQwyR+mLm6C1mq0TZcCPTgy9
	 1S1EAOT7QGt7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4585E9D41C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022523364.5738.3280950568793380582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802ac50db53b5f0cda94eb93843a935e8fc6d20dd94273559b46b6b76958a29a
Date: Wed, 04 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770225233
