Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBF01C5F18
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740785334; cv=none; b=J9OIyp4/25kG6f+meIkRsi/zMxmb6ue82FijWfB1dAXJnhBdHDlSx4yus0Cuca0YGBvEYBMSF9lhZ8LvoLl7jt/83nP/li3BLKnmSJXDomEdLgjDfSGAyTkoxDrmB4shOYlLQU7InfXpCzgwnfuM28DN/Sh279f9q5vB1ha4viU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740785334; c=relaxed/simple;
	bh=s2R+6CqmTy2JlUwX0TxXyMOQb2P36liEeUwhH8Fta7w=;
	h=To:Subject:From:Message-Id:Date; b=S2KVVqBh/BDVdNHQaoWYt8L8xFgRAfnRucsizxWzvlSxEB0IWaJDpkdBWJYhWJ6yCwBYXwDoxsFxW2tNHyX68gZ4VJiE3Lj7FpIcL5WYTd/5ytnh0yuPS1+BYAoGHF6ht2f/Wmo6q6ooiQt4i+5uon5F1NBtM4BAmMpkuMlzsPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI2dyAaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI2dyAaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0174C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740785333;
	bh=s2R+6CqmTy2JlUwX0TxXyMOQb2P36liEeUwhH8Fta7w=;
	h=To:Subject:From:Date:From;
	b=nI2dyAaAW3aWTc2bIoj9ff2cKyvMHbHiSQn2xYe4ZFIfh2U0L0mxPJSe3ralPd8Qn
	 bz0RMmptDGTeCWbMuEUP31H3uri3kkV3a+rZx1CDBNvIB4nATIB3RbJh4hFFZJkZkZ
	 iVhJzUmM+pk72QKfTQFs51aYVGQ5Y7wFulzu2gC4O61zUwwAs9WKFxOYegX806lA6n
	 fuaWA/N6U/jbil97RybjM1pCyngXZSKLM67sek0+AHMDSpIIwhPg/Qf7oL3nRPZ1we
	 uG1WMfPFBd+/77ZPMud6ekTmnHEUiD0w4c/fKw/7KYDo4MKp9nHGjgus42UNZtYeq4
	 1yqYV/naJnLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C7C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174078533358.14764.5536056412798888329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f136472e87fd65e8dae60170748e2769a7695c458d3be0d56c8c51d3e900a0ab
Date: Fri, 28 Feb 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740785333
