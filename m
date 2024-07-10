Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F929161
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720574184; cv=none; b=i2LXpE7GXiR2cx0ZaVmnIwt/Mm+BE0/G/xFPzEWODIEQv0G9Pi+J5PfFNXHCR2biiG+AEZ1V9YpWmBB9bMuTnSU863OaKCvqHMnCcz+jZOoNNhy+Q3uEoyt5yr4vk3I8VBFKLqqX5ujgLY3AG2WMlHhXp+VqoRrhsnpQpn33OI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720574184; c=relaxed/simple;
	bh=LPrKbJemmPK7F2oCgYixV3/51BmZ5cKbPyXUbVAQOSA=;
	h=To:Subject:From:Message-Id:Date; b=Z0XYinARikhObLDbYjdirepu/1NAuE5giSkPA5DpDW309sNZfb4mFjfJpDpSKj2ZtNB1BKcuyPtlrQZV7XDs1CTrwGB2m1n3xMR2PianAoL4puowaPvUCV+rquBxF+q7caEvLVLPwwMr7YDEdy5P1C71J1TpoUEkpCkNC5v5Nhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUY2n575; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUY2n575"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D0C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720574183;
	bh=LPrKbJemmPK7F2oCgYixV3/51BmZ5cKbPyXUbVAQOSA=;
	h=To:Subject:From:Date:From;
	b=XUY2n575agvUbRQ5Pvd+U9wbdSEd+18IWwf7txWbwbpA1x0CEEiPghYvi+fm5p3gD
	 +njmjCtA89xBQoWJb5RDTr89m13YdJqFxeaSVtqbqy6Dau7/JkZBGmGnPlqhTkNWNt
	 FDcFz0IaOideoB8KmtERYL1pXDWS7PeiyCOB3MTYRLwui+L935Fv4zza5sXtPSwSUP
	 GEXD/P9n14oxK5uFVJlWbsaChcEHxllTJn3tNya2nUHmvJ+I/sZ8LlpCjDVjSiuJ03
	 wg3OtXKs3jhy3ok5vIBomTBkuG3iH0AIX1DvAlNfIDGAyJv5Ubd+qr7ZyMIQAAglf8
	 yJVAm6LwdA6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17C9C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 01:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057418276.7887.14605694219798725811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f683d0ec6dfdf6165bc59be24e5229bf54bb24f3f0565d7b38ba8ddbffc78ad4
Date: Wed, 10 Jul 2024 01:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720574182
