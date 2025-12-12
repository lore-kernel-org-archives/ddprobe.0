Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4AC31B11D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765553574; cv=none; b=swe7pMj2evalOcb+fBJ/LoCTqDGjgKRpQyN+QoHzTAaxXmxW0vK+heFD7f8tsFKMIO0a3nG7noxr8mtu0c3QpJOYP2j379zZfLAjbjQr18yYTDWawC+I5bzN98jtWQvVS1vBriOfwN3UXrbfSc7gk8IGPAjB1bP1ri7PNQbU4hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765553574; c=relaxed/simple;
	bh=s5i2h9+KWvb965NjTbgAE6KETv6S/eHA69vWFiT9ft0=;
	h=To:Subject:From:Message-Id:Date; b=HtRYTy/F4P80IEWOrPo9ueLGkk+wYwzuAGWoq8F/Zrnm+7FrvQcL3go/U8o9JW2afepJ6EU7gAm5sb7M1xinOJ6YQVhfRyXbd94PGsKNRlEIiabtUpc7AX4KjfYzfI8kkZR8tuUnPDVU6cKwl/2nvghcWLrmWhbtPkDSXwd4yHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/69h/j6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/69h/j6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CE4C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765553573;
	bh=s5i2h9+KWvb965NjTbgAE6KETv6S/eHA69vWFiT9ft0=;
	h=To:Subject:From:Date:From;
	b=M/69h/j6KO/450XaXXXdoIciZRyMWqOI3y4sd3KFkVUo1CYgZ5u4rXIOWGhPd7vvL
	 jC9yhP6CRv8RlCEtqdYQ74pJFh5WL1za2Rcs8oOjjFn+2uDZO+yu+oddIbTzr0d5D5
	 VcdM/OipR4OQW457AoXd2CcUtLATCVBGTSHT3QbIT5j8K2CMBkdpu9C/TdrYmislfR
	 tX66TK1nuDfXulR4OL20YQyVO6THy2EhwVVFW7MJq8aAnLgnRu5tSQcdVJppBzIYUp
	 nvuREmWIXPQ1JMgXEGnhwcoKfq28enRukp9J/f+IjZHStQNrRRFfmYmbAqGS9xlmtW
	 NHBrsBPCpUDRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91721D59D66
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555357358.12600.4314755641929018979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1eabf8d58d6916105e964df759aa7782a29515a29dae642dac26bbb52c57a7
Date: Fri, 12 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765553573
