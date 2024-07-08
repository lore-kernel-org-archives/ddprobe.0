Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0BF3FB94
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720442183; cv=none; b=OcFCLZKL72DUsaz+az/iBTOioPLwzuvTeDCYvFEVCyaP7hiDCzeNVsqt9PEreH8NqNP51NiOFke1CmhppXnoRM8TSvUFxNk4QAej1QDhni0N26cZpZONZ6kFGoymBSBfQ1lsPHf2Yj7dC1wqyDnqoiL27ykOrh1f4Got1OXG5Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720442183; c=relaxed/simple;
	bh=vnFsHHPP4db3iabrScnYLXMrwenSQEqJUgF99ScZiMc=;
	h=To:Subject:From:Message-Id:Date; b=OaaZ04GH/6KXkPchvUSPTSmxsuK8/6kL6IpAURvAeAConGgWBgPjCS8+ZZaR5pCY/ZJnrEPk71qLWz1b9+/PHOsVKv6GOhbl87wDExHNNTojPOPUkSTyxisdPWsTUMJqKpB/LFmifJurIOWqIiFeWm13OBq8cghqpDucEKTb2VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJOfdxrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJOfdxrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A95C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720442182;
	bh=vnFsHHPP4db3iabrScnYLXMrwenSQEqJUgF99ScZiMc=;
	h=To:Subject:From:Date:From;
	b=cJOfdxrAdaxV7LIUKjp1kd5NoBd3E1uYFTiYMgnw7jIYF05jkpKuw0BIekOugGVeR
	 AU/zQHF692m2HhiSu5QnNTMY7C6aNaOTFBYpzqQoRFbD+3gFCYV7AHpkHf/XA3jJ6Q
	 2X4fIcTfeIODd6RAv1W2AnhpWNSMQW3gjQXF/2oz+42blLEuq02ri/+VCjbY2ZBVKC
	 /vTg7VNiNm7ZNT+MhGNJmWWaXU0IqJAuk1Wc4FUxktyGowxZzj1ic3n3h0RP2sd7yX
	 by4nVKIq/awC24pt80WH2EjoK7+A3LtsrA50w2+Nvkylq9nAj7+IFkJLRpiMCER1Dh
	 t/FHDDcGAbNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AD7C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044218278.8029.13381718520215078430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fd5e9a47b80a403d11452da85f296d2dc51ff410b21e472daa8b43cef3de90
Date: Mon, 08 Jul 2024 12:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720442182
