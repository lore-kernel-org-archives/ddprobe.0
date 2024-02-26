Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F293D13248B
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708966697; cv=none; b=fOPYzTwg+jBONRFWaHMgTatc6phn7k2IQ66L/nhn5nEge8/ddfaOY6GDHS8Oj+JTRiPbPFpGfxq7UxUUBdBZOLNV5saFq1YA87vEfwCZoDQGIF3MDg03vjk8RFaBIGxRDus+VdV9OEikoy8Dm1YxQzn9WIBLhLlCi0AO28beR0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708966697; c=relaxed/simple;
	bh=HuQeBdeyNQOvsiw2fBg1ANpX5yYbYHwhLFDnhm7BNR8=;
	h=To:Subject:From:Message-Id:Date; b=RHDxXgNZitPuKFiQ55WF7bCjwoYX2PqOVmhuI5y9y2LEigH5NJRsxCVZUSwYx2sgaQCNIwj3LmUuqIZ+VKr+BoZN/HlgCao+qBTtnQOt6IYy3DANHHFTK505/3TMia67ak2XyKFk40NnDg8hZI7kd3MIbIETcC8aWqEKwfgtwlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URYed1s0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URYed1s0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F6CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708966696;
	bh=HuQeBdeyNQOvsiw2fBg1ANpX5yYbYHwhLFDnhm7BNR8=;
	h=To:Subject:From:Date:From;
	b=URYed1s0AWz3WCFhZB0ZoyNuu5ao9vmLTwNwjk6Xf2CXbQy43XUOA/a3PICCajLRu
	 glXDCr+8eEwSaH8jeoT5PU4Q/H+pg10GVnqlydU4i990MmlpGVbyb6YIEgwHrGA8oX
	 pWTK3WYweKj/Xo2SdQFC5lC0bM9DpVxF4YPK2N0krmcrlRODfiBKy5/pugLhvHEQ1I
	 qh6o2I5V1AWNV7h97uK/ahUFw55q6Wre7KmAmQylKmF07F60fHiooM5KG4kZmALIJe
	 KOgFEh4OGZCxRFdmIyfN0gghKczInNeF8+xZKaBoyIGfxMymi/NqiugIaSXCAlLvmI
	 aoLZQF7D/ywNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E01C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170896669639.4209.9220207826983744496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022c003679f07c218bd89f7ca953937e1922792377e7649d1c66b621f18a6cc
Date: Mon, 26 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708966696
