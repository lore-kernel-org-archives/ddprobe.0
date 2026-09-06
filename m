Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBC245000
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788672634; cv=none; b=uFf3HrWN8JcDwnc9Ms3swP3qchCjA7aGsoOno2mCz8wQ4jmER49Dg0jBajazkjspm2kYuDxnmTzWmu/PXlifMQh8FK24TVXLj53t1LvnhUzNRdhKJPuQ9/o0zcF48L2ZYN82cbG0ZE0EcZSGAbarwGaY8tqWL8q7NoF4L94Innc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788672634; c=relaxed/simple;
	bh=tFNGH34ZqnBHx+6wtwc2RuJltS5Xlzb/SNaE6s8ghOM=;
	h=To:Subject:From:Message-Id:Date; b=uXt3nnZaMpdDY+zn5Pn045Nnug+8KS2IYzgEBScQMWdqtMgTK0tSIrSAaxkCivv5xanDteK2/V33cIDnzjKNXCS7shu4/9P20CRduMfEDbFRAl249U5dU7PwVN55/5ukdCOEqKDe+WqfAdWfWxrKbDU4eQ39cR/sckdX2V7woQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVNGSJjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVNGSJjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5677C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788672633;
	bh=tFNGH34ZqnBHx+6wtwc2RuJltS5Xlzb/SNaE6s8ghOM=;
	h=To:Subject:From:Date:From;
	b=pVNGSJjGBGHbrUYnME2OgqrTZu29yUrt++kJAebpTTXL92gpe1f4rMoLFpXekdoIK
	 dej75WfJ1HURqrvd0IQ/N/3OxCbtygmr2Xg5uPGhCm7Cp40RsaOod628ilRwW28MRF
	 MmppujrM17ax40BFlcnJ211VycTl1KoCY+EjiknMmphYrgHL4TSXo6FvBtDlx3giLN
	 SnyYy7L4qfWr3tZJ8I2+je4+VBCqC16V5dzOuuUTlQAoE8DQP0ryyB+vV169Q45TpZ
	 qtqi0OCReFhH89p8SZsgsbqTdbc+TOoN1wXwPTY6TJrKTMcXdcXaIK3YhxQhwEqYEz
	 9MYnLbeRhuzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD936C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867263368.25951.17503461740966414057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6bbd05d6c21d52e221d4fb25ee6ce789676ffa9fa55ec81ce797c9b4fd7ce2
Date: Sun, 06 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788672633
