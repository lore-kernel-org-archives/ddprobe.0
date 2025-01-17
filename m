Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF98201031
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737122753; cv=none; b=pGpsTTwRhXUPNH66Ja4CcSJ2HvLQ6nTjDc63blh3Z3+DFwtgJ4J6nUaeNaTIWp8Vtab7rfyTyzUrn4JkwYxotNH29hbXqxyE76R1Al3s0daJB4rwuiJP+y6wrS1SVeynYxFHvpVEPHeonJKGrSmHMuxo7k6UoXLE/pm5KqDjnDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737122753; c=relaxed/simple;
	bh=MtHWGin2UqZMLpnev4wZ8qiQsv9umgaEb5SY7EzR7Ww=;
	h=To:Subject:From:Message-Id:Date; b=trpCa0e1BPl3fEFO3f16heGtiXpDZycqGjsyxFOmXghYP44wfKGzpFQ5e6aZz6DvcvawsjrFTO8uOp3WfBUls52eNR0XpDTAJP6dZCMmS36+EyZU2cqq752PorbJT0N3pAZGOTO5hZTRiHwZt82xbtQ/x95Pek7ZPfF3MKWWV8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqugyt1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqugyt1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ED2C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737122753;
	bh=MtHWGin2UqZMLpnev4wZ8qiQsv9umgaEb5SY7EzR7Ww=;
	h=To:Subject:From:Date:From;
	b=mqugyt1WC/hWVZ1astHAvPw3l61vjM/BrfzX4gK1mA6QUlCo9ol9iUhPKSQIMdawb
	 0fxW7EsjTypluRKZ41p7fNdSuHm5IhJfxZ0Trhm3XP+vO4hTJI59IWuML8b2k8+BlU
	 CnMqZAjvyKIKINGdDWnA/0/2FZ7MIaQQBH5O3r1YFC3cvo1fs5atCVR3KcDSrVTgg9
	 pgWOhamHSgaM/6EGOaeBg+F0TKbMOfpH3eK28iVo29DFC48QNJwsJOSuPnR7itJqOf
	 jkqNWz7qtq+z2E0uKgMw4paCBYV2Is25yMBL6KQslSAUJwDk7NYdemeeF3Kt6+5je+
	 JvoiXPie4YKsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94088C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712275359.16428.1783706051861830373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8a222d3ce4db13cfb2b7023d8e72280e2dd8bd19923993612f073c7e9fec58
Date: Fri, 17 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737122753
