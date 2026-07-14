Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF622F9D82
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784058514; cv=none; b=YGqIOBzQFGz1hqpHmYdxgKan87MS59TTYlkRAPmhG7p94z9EM73vFCU/5eTqyl/ZaqUAa3IqURGQaFH4r8fsNaafn+2xZhki9/GmDE0tvboLti+cpHZO/vMfXLjuJZUSNSkileHtDdxlqNaCCdrM+y60d348JJTOGHb5ZjhcyYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784058514; c=relaxed/simple;
	bh=uGjTWvlRyCZIY6AVrgJEblRAq1eWW+ZEbxCkcTlmlpk=;
	h=To:Subject:From:Message-Id:Date; b=CE0Y0zPhK/wDlRRFu6koOYkjtXti7xpVp+myBSRBgIqfq0+gq/ps0XBZz1CRpvQLkmy1QfDThmEGXaBN1Pv2wsw4yJoZX5RDt/8Dzepf8QLlEgjhNaoolApi3m7D/L26MnlsPsHy8TI3+denjahGBisAACEA64DM14autYBMg2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9d3FA0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9d3FA0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F38C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784058513;
	bh=uGjTWvlRyCZIY6AVrgJEblRAq1eWW+ZEbxCkcTlmlpk=;
	h=To:Subject:From:Date:From;
	b=q9d3FA0zCTtleuhMlLLZOgJZYHcNeoSlwj81gDc/c9+7kX2G4aOLUcgMdniFg1vYd
	 M+f2EETmsZt5g2Ok3BOmikgL0Vf5BpfH8SrcB1mdEV1NfztaaMehgBgNajEI3NZ90P
	 3r8IKrHLm764GdcIlQX5YQ//JLnbjo0yBqkMYufpzT90q0ZrvB3jUk4klAdWLHgosi
	 3hTWOb9NZmhQ6/fPrmZIGE7WveyXj3ppPw+rfcxEiWTkeZDY5+PxMMUsh2BcklAwIH
	 6OsfLNvTXpy2QAdv/olxarmmg0d9bilvL0P7wyfRzXGye/+SYIdEi7kF7Cq8OzkqNe
	 VodwLXFosBYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F0FC4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405851372.6150.18196376994042831039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb91bd571768ebe99815e1f9e4b0090f2597fc4676beb982643534d435233232
Date: Tue, 14 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784058513
