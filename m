Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354D225B080
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779519754; cv=none; b=MbEojAwRjdfFxopAUCRZBGtOmLsc27gm5Vfvdk27QCKu2vE4Ie5idDRQwzlLTflRFT2LQtlusvYPM7lX+uWaQhZz7uk0JJsOVr3fv62RgHZHPcTHYfJvwc14zyvMrrsn8wJtYhW4Qpcxoa0n8k9q2Hdjk0SlBKV1uGtk/Cz+5vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779519754; c=relaxed/simple;
	bh=fRnwca+DXNXI2KkTfl+vcdWZU8iCn1Rm6CGIiP3BxgY=;
	h=To:Subject:From:Message-Id:Date; b=c5fVpXL8ZkZIxhBejSLUxXIkQxqVc+aBRjf9JlROoDyqvVUnszewEi1XIxISQMa/DDiFV85BLkzN/UOmL/HaNW/B4o3ODxxB7CLOo6wcjtW4uypEUGN1F+sadBbz/2MnwNcpxaUlmq5Sni+bQ0KVKLf8BKvG3bzCRQwlub0VySU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBljENrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBljENrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0768C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779519753;
	bh=fRnwca+DXNXI2KkTfl+vcdWZU8iCn1Rm6CGIiP3BxgY=;
	h=To:Subject:From:Date:From;
	b=lBljENrXs95RfhHgSmSWxS85B1yO9O9fdiWxGhFJVQU4Tk2qoaHZIxQWKPfkulIqx
	 rTFD0tAt6ynG6zUUdJiejpL7pF/H0pzPLO2zYlT0898a5DORhaPlh0JTcfz/L8M/Wl
	 frXrZscVTucWcaKCsjFlxyEfO1kmXZB86A7Jl5Me/Itl9yVJ5ZsVPtI8orxHWNpiv0
	 Uf1mCbnJlw5Rx6nx+5OFUWflCaxDoByVCPJc8QPA3AvLIzCLvgSnwICpO9lOwOOswz
	 Rda0dVgojOnXLFpq49FEskwix8FOpUqsDN2R/NeW8CRCN6xHEEMiRG9twVbngNQEsK
	 4FFsyLsMP3D0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9399CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951975368.22644.4152007403102174898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971eb0c18136a4079e8612545242010ff6eee4b072962e4149628b8f300ff0ab
Date: Sat, 23 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779519753
