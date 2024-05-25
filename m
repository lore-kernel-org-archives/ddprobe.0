Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690514AEF8
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716662663; cv=none; b=l0cGBw6og99HAlWl7IDrPDbOYwN/V2Sx6/LUzPvd9xJsrznvlKDy18bIf1bqlJ3r8cvGBYe2r4ejPUmpmQuKijKDTsuMG3ZlJ5IfBxN/m2MqerQjQHLyo2OpjOZxbhM+5MpalCelSCBZprhUNw81WiQMNYtJ6oMTyUaiO46HDJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716662663; c=relaxed/simple;
	bh=aSGwvShY1X9I1UmFFo6j50dVMl9A0j2OlGgVsuj9SRg=;
	h=To:Subject:From:Message-Id:Date; b=ayA66IACbpf/iLj/WDQwtNCQiOlymB8NvJaqUC+kPa/hTGcUVc1wH/0/ta7uP+9FDcTpyZuTKx2d6QiLJkGQbWQJiqX9R2llq9x8MdedZ4cc1RwsN5uLGXGEm31VmstvqZjgFVdPWNOgMWCvCsBPBXAOwx4HBR/bPjN968J4nhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7LkF3Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7LkF3Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC990C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716662663;
	bh=aSGwvShY1X9I1UmFFo6j50dVMl9A0j2OlGgVsuj9SRg=;
	h=To:Subject:From:Date:From;
	b=B7LkF3MgZ9b6EKRmTcx+0KqMdy/jZ6YoL3/WeULC7irJuJJIx1ebR6bkFhCKrdXfl
	 64rD8HguAyhhohvuQq4d//UEub/UNkgLRp1wEoa1wkroFb0J2cQUrAt/ICQuq4qWaL
	 zCdomHR62bruXht+mYzkXR22yLuKPSKAwgSsVQHeHHKr7AGTfFd2cqfVb0GopjTuDW
	 aYgAEUliFcCo8cYI6QS9QRbCGQk0az7sWKMisL00ABu5auIuAjtpD3wMxd+3AAEx7w
	 WCvoVFksKuCnohvz3lfZzJKJ1krMcBKHtSWS84KKKUqhJYSFU2hMC8+YyRcKeBsj2z
	 tEGVY9ZINepFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9667C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666266279.9767.18324260146648320633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7f9b9fa75f47695f0d1894feaa9e015e379914c76b34c952d5e6c86b23f45b
Date: Sat, 25 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716662662
