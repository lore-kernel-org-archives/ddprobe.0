Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1B2D3756
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756926594; cv=none; b=fSVRXF2FvzsKeY7OUVeYgZBTnkvWwtPpHKVAXJO0FSm3phLEKyh1y7mwho4bYh8dEI9tlZasjTUcnUQbid705lNl1y3QkqvIOf+a+vOxzoUiERi8rV490ScEkFDwZRcce4ksdCaGVZsT5CAEmTWQ2bxbPQq6WhLaAkgoHKK2HZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756926594; c=relaxed/simple;
	bh=f41PwIyXzo/fpsiJIRkShIWO+57uFReyFNT7Rff5Ogg=;
	h=To:Subject:From:Message-Id:Date; b=S9BPR6b1PJ13shZv8NsId0PMdQFOsjBBolmpaoq0kR4oLglRrWhfQKnAaBVMHy4Zq617VmVRIbWIe3Ti1xxtl5mQJAgl+t68WqliAl/gEvWtxiIIqf47Yo8FymnS8jX39Wqd6MupSaVSUuJNa1TeaBVvUeEhLeG3eFnWD3mx+xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anf0PW6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anf0PW6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756926593;
	bh=f41PwIyXzo/fpsiJIRkShIWO+57uFReyFNT7Rff5Ogg=;
	h=To:Subject:From:Date:From;
	b=anf0PW6iO/acOS+fD+kUIyZcCUPgc0CRO/liIsl2tvSGa5sb4vUiq2hPpLLiT0D/I
	 WkSmZtF0AH0gGTHZ+DwPv5wYfhgjbV9af89L8L6dcu0nQDOr6y7mX2PcTUVqaI//Mm
	 SkBKZeOqbj1ChRqxAczr+UmEPVgak2c+iV7Po8PpWneTEVYlLxG9yIPNMDSZwmUu0A
	 knTCdaBVXYrVnjUuwk3a0cMIVTcuxwe0w++7OwRln0hezne7Shdfy6UdWuUfIM7urO
	 qMRpyqDtFFD5u2tD3fp7crfVSyLmWTFTOU4hbn1LlL4+6xtNRluMxu3MXZ9bxHZTGj
	 FLJZIxt4lfn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BABCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692659358.2457.3577250016362049489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a557153629bcb60fdf694d8cee8df02a3a5a0de3d8e39a31aff3ff612bdac45
Date: Wed, 03 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756926593
