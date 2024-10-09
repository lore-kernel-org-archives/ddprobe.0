Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ADF178CC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728462354; cv=none; b=SY18nRfNZBj9ZCDHnXfXHcE1/vnoxs0LqtjfZRdrurkmjeeXx56GJLTpD0td1ESIVJBGS1k2ClEH1+D98noAbjHuk9YmxpHoOop4F22c1Z6Gm1j+xvIrq1RLnjN3iElQyWkTvrt6RRPeDmmBlK1njIgh0eXlkZN4yTXWW2ebeLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728462354; c=relaxed/simple;
	bh=1cM3Ltu20OAl7ljHdlsYXC21D1m2gib5baESPKtyuTI=;
	h=To:Subject:From:Message-Id:Date; b=h4XcJ4ht2IF+GjYY5Tvwbs+QOl8X+/cDQxtY7vKV+xm/60zPbpU6MoZn7Q686cNohZZUWzIY1+34E1SwzrNeokbvLf7ztp6G06JSi3rjThj+qJ8f0dcx7vIv1rwUuDvEAaGvqguMaRbHG0/sQSysQA8Nu1SkANzmlKSLQ5MLBcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBGlqqN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBGlqqN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ABEC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728462353;
	bh=1cM3Ltu20OAl7ljHdlsYXC21D1m2gib5baESPKtyuTI=;
	h=To:Subject:From:Date:From;
	b=WBGlqqN487HYzTAnG6XG3FJintjSfX6ZZjFJoThylCqll8Hrz8hs/neyoLISRPLTK
	 4+x+heY+cTLpLah9LtAvjbICzXODk+nbjgaRJkueHsBG0vle0/hbRvpjfkptNYt40A
	 WgawK3VRQM4qvvZW9OiiggwYKHyJ1H2UEa7LXI5/t5RG0xrqG7W1SuE2EqdajpAqXs
	 GcSe2Iz7p4t0C/yFYWO5TGo7Hn1Eckobhhxj/1LIOLBYcvk/DiqRNcbZ9eM9zkRpVr
	 rRsiiWsxD/DZ4RHs7rEiKHTtAFLPLclmtYo4sWDv741OXApGaKE5O1CVmGRD0eMjJy
	 AkuND9Ka36JHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F9DCED62A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846235365.20862.5882069847197667528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d95b4c614b128cb8904e3adff2c4d4e61460859f209db833798b5612a934765
Date: Wed, 09 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728462353
