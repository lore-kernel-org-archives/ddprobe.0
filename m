Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409333D75A1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783462714; cv=none; b=gHbdpA3daW/Iw9FtOmDWRkwR55OuTPTsz8Dbz6sX5oVpo9/Y7qIXPj17JlIRub1ebpFM2fKxURWfTSeJetlRoOPXAegkg9I6DYUSPGgyLa9cf9zlIbGW9y7d9dp7l04kS+w6664L6HPIWN/fiYSdG7M6EsZNuC3qOTasVGZ/tHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783462714; c=relaxed/simple;
	bh=F1o6DDvMm0EJoldqmcd7El5e1qUJvOJmXQDbqUM6y3E=;
	h=To:Subject:From:Message-Id:Date; b=a2K0OWwr9PozQi70rDtgnaL8lRYzYGsmHMrxFezoLncJnse98LBW77Z1BjJpNbBOfmy5Y194aRE7NCYSwhHAOVAo909Vki15joDNqEptf5DUSIKuKbraRaLo/D0OxKSyOv+KD7qoDoQHkYa7FpiJyAu+evOfajgIjYiLMJwZhyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ75mzuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ75mzuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB1CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783462713;
	bh=F1o6DDvMm0EJoldqmcd7El5e1qUJvOJmXQDbqUM6y3E=;
	h=To:Subject:From:Date:From;
	b=VQ75mzuB60moo+U/69+9XQNYgHtH4NOUMcuQlUuv3HPGai6FkDeTMzUdLJSXr13bQ
	 mIEucP0ABOAPDuzTn7g7HFZQ0/bbUcEYVrnHOmC67Wp7rs0t9OFraoO5epfbEynsUR
	 vRBttFiSKHbCC468hY0UJ7u5a6x3np6gcJdwNe5Ql5FrNEHA/IINQC9QbOMHIVnzha
	 +ZkGoHtl62X2N5rjbzlXtjVzSVI3EkWcE1ysDDjBo5N6Ot6zcy7LW+q8xlnurcG+yF
	 HCMOSkmAwccAF+vztuNVvS2jKpIKg4osND4+Hk4ofzPBWotmNxTeQMhM2S0mA3ReP3
	 vRm0rTYrPZsfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346271368.31013.7943818326346188010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7707ffbd96faa4aba73ce10fb0a3998a4dca9efb34226ab96c945ad92bd681ce
Date: Tue, 07 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783462713
