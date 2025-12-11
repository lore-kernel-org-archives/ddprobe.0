Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432F303A0F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765443174; cv=none; b=OoyrEskehJTA3Tg+qIGUaX7Sw7niBvkv72S0QpLISVoyBaaEhhKlaUYhyVtJs9YExrSyjScfdQA5SGFuxB4+rjz3bSZTcWzi4mbHx6VMIEMcpzNsha1jVakjMqwN3wx8e8pELcScOCzgWLiClJy81gmUUZJMkTURWhtLxjazWNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765443174; c=relaxed/simple;
	bh=VzxKAV9gqQb3ucsne1cn50ai+Jtjwr6fXAluUv2r5YI=;
	h=To:Subject:From:Message-Id:Date; b=jrGEGOxKapNQrNN9FQK2IkZLjDpmkb/Z9ISwitaMb7Mw5BqvaFXqK4B+5Ma3AqobmdLb2tdfqDnnZkmIUgjYj+3e3149H0G5+Z+kGJjMto+UddBWG6J+yNB2dvkDGnu4IyW1RTGBS7OPkch8DCL18UPcpZHa0TA9MnXfgSpSiuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKLtS1KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKLtS1KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE35CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765443173;
	bh=VzxKAV9gqQb3ucsne1cn50ai+Jtjwr6fXAluUv2r5YI=;
	h=To:Subject:From:Date:From;
	b=cKLtS1KIIbQfG2jhMRASsg9CnBxdNknntVoZwt/JQ43HcW/6m93UxkXj7TstERJLn
	 DvD/y5qrQp9bkKzN0PGe7npEMhHw7Un4lGJFEb8x5LCg4kg/q7l3yz++Xey6YeeuSW
	 HwiqCW9BoJe7KhIVdfqQR+naZYmOntMno72JteCIuBa+US1FXZJJbcaqOg4Vizk8vk
	 vE4TcAeh0Aj/JWijUyWL3PVIZGg20UGHASM2sCwy5hPPHHVbCGTWENy7nYI9Oa/w/x
	 d1DcZLPmmRvcussTZZD1TIMj5lF93naogYPj+QMHRjaSrE6CB58r9ixBGJc9dm9chE
	 kGedPwEZ+651g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DBD3E786
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544317360.19285.7470214997587515904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e949d4f92b08b71dcb8399d886737d2efcf5b7afa67910cdc1727e74d33f490f
Date: Thu, 11 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765443173
