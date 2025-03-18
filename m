Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C02C3209
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742258994; cv=none; b=jgw31i8ujRIcBUYcfgAiflzqS4oNujbUUJKgmPSOUzMoNB7t8XNUR0Ql5T6A2jizToCH1NoR+kQMvpG6SYbxy9WbcztCBG6zmaRLf8lkujIUts6Ai3Wf897YvQ6vvK0vXTIKs0qWxxplgE52LQgl1tVkbaVbNh6w5hqBbX8Aw4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742258994; c=relaxed/simple;
	bh=BrND+lceTEaA4itbdVYopytlFokOLGt2PZOySYd5STU=;
	h=To:Subject:From:Message-Id:Date; b=ZIUOdMlkxDWs3LbYZfHAJkha6D8tlQT7mlnmtEbjSQNrXNXHKibDdx7GmL1acDpHyhai3+tNzUUiaU3lqBSLaOgMwww22Evs2MSNMSP+zYZAzYDqC2G9cmhiRryyA2/gnzvmPsB6iDaxjQNIr7K1q+U3pQcTFU9OdZJ7HKursnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO43VNT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO43VNT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B880BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742258993;
	bh=BrND+lceTEaA4itbdVYopytlFokOLGt2PZOySYd5STU=;
	h=To:Subject:From:Date:From;
	b=iO43VNT34WbzcfObRqPSpMJxpH/DEyvM2A9Kbe8L5omi/o9OpUFSWDXBwDItQqGWr
	 2+7PMnHwpixADvsOpAQ5in33kUHAs4eIHQl5Qvx58UCq64Os7MYSeA3zNhYLCGFF4U
	 QIG13N3/89zfzIjoPRkI3RaSEbESFIp4JAcalAKEMExwnIPC0JV6Mwl5wbGBGA9JIF
	 yWzZ9DmsVbLRyCVWmQfG70jfcZyeO8IQ2e1tzIVaaI8F7QED3VzZCVd08lmeIAzIf9
	 GM+6TCsMo2K2eRm55l60YtaQLBOLZVOMy528tDOUM3sBb2kyQtQ/8RV54hD7qChsXC
	 HFgR4nGedS0Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B63DC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225899361.14014.489220519429426258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1403d456d99123a7e039a7f6f0e017afd31b0043177df87d383ce371f2e8fd6
Date: Tue, 18 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742258993
