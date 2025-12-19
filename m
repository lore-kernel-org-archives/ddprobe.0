Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0AB1E1C02
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766164434; cv=none; b=EbiFnnYOwIc2v50VyRLMw3LSW3bV7HPx3D7D9IpISchPbQVJxaGXIeaootaYM0Ek+JKdxW/ys7OMi+EWM7YPRNinUPbNMQJjmPiglFpTOeE3NpBwIZGSySoxyeCu/QTJnNteyyiEx1CkH37zrUaWCu3JZ/9fdFok1M38OCZBOWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766164434; c=relaxed/simple;
	bh=iK7a7r+cik8OpRYa2kJUIgILbv1NIkzQSksOIT+nt/M=;
	h=To:Subject:From:Message-Id:Date; b=PBfLRjEscY3LrdtPA5zQjw4HwVLJCF0d2/oP7sPZiJm6NGdIyIYcUkCcAVO68RZF1w4fQy6Az4g/8biaoa3Een7FiMZJkpQmE+RP4C6mWDrZq57B7E1dR1NYa9PWmlXjiP97JtdYMK145z9HiPl+CwD7cA06/0n6D5Qp09tZ3mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El8e/N2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El8e/N2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6647C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766164433;
	bh=iK7a7r+cik8OpRYa2kJUIgILbv1NIkzQSksOIT+nt/M=;
	h=To:Subject:From:Date:From;
	b=El8e/N2+9m81GvVJ26BFse9CN0fA+Qgh6EzhN2cfze20wiGrVS/ywtvUoWKKguAqE
	 T8O447uYMwk62Rt14FOCDVNrugAwBfV05YgcSkHMWlkiqqMJekPnbprFqs3Tpf2Pqb
	 MY7TTKVP6bHXDeQQnek54CJVG1qHhOUiBhJr4tYrmZiQD8shwfQ/nEbYYUfwmlzKq3
	 zZNbA/3/ksPjL3IwiTegyirjxpzzp4K2/9i54dwrZfJQIPSFkq8fOFBi+lipRvTwTD
	 H69MHIn1EZ8kaobzYwGFd61FEbuLcmYAASbbQcEJkUKaZ+3vp1MDyop+OnuRTi0OIT
	 niTxrc4MnJr1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCCD7879C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616443358.26427.1317549498782829316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2cd622a9c6e26fe70e19a9c178664fc67a115215ba7f954b2d41f38ff36d88
Date: Fri, 19 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766164433
