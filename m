Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0F63C5857
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367314; cv=none; b=JAHO0flsjvRrGeKjrwEWOR7uHXmm1caG6fqq4F0RkpLRF8DITtbAqQRo48CLY/iQop/TNQNdna8HwWXnlNQvnGOUHdXqww/g3VGfBtgHOYp0245GFUUvLi75z6KFjiu+NLrugk8Uxb/QXO539Mn21BoYxjvUr2KYdPHTv/DG2n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367314; c=relaxed/simple;
	bh=89QLqBtCXgcR/xMQe2kvPDK6SfQHjjpowCzt6R9zPx0=;
	h=To:Subject:From:Message-Id:Date; b=fJ4RrZJ4REfyhM6PQLC7rcJG93v/bf9stEFA7qWQm8YARIk9EWtRNVu2aXs2YURrF5JaTOwKP5sCUODVhtiFru4cVjQZVdLnAZCuJfIAefiUOwf0oMznsYDKds+h9mzV4jLBDPk4tm5GKr3m67jznSJn+3pbuTAr+7WUDPC4Lnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7d+sTCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7d+sTCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD32DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783367313;
	bh=89QLqBtCXgcR/xMQe2kvPDK6SfQHjjpowCzt6R9zPx0=;
	h=To:Subject:From:Date:From;
	b=p7d+sTCp6ItfWoBqiKqRsNqOeZetBRjAfrd6Ne4jPcRw6NYmuhs6z9QIeTkdeh09Y
	 Wb8cVB0C2hIccrNTBB0OtxFOmGVFKOF19dUvmObJ2K8RLy+AJCXMTrFwiD1Z8lMXB5
	 VNPapp1TxnO9IUHCYUlpo59BQvbeXsDPriJMRv0LwmDFjThkb/Az/NHrvTy0L2FYov
	 9VyIZ/h/+sRxLirRzTc1GkMd/3qukGDuWiGZcjwDe70uqL0XD9swROhxmzGNKbIhFG
	 XBaxpNw1IdT5SR5d6X3PINhdDFSjuW0XujyjQ4MgoXv/2L/soTmMmEADXkC5sBd8jC
	 MUuJ7sfgXho0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B6C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336731368.5141.15560824532625334321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61cff8a49f78eb95dd5ad762e3ea78bd86e8710dc813c37c52dd44e3f122c23
Date: Mon, 06 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783367313
