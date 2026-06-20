Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C7640D58A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781916994; cv=none; b=iq2wpkDlCn6+Da96rBJDq26vddKersltDba688pxfs0N4Bvckx9Ys4X96/wQztBo5/CITJzpdwDqKt5GodG68YD6hU9NyJ3cQ3ZNfc2BGv3auAZEL2n/zOsMpYpvtwmI6TY0z6pWAD2Rc3XX6ymQpEZnujWeI5FEIuzWfpYDE9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781916994; c=relaxed/simple;
	bh=no8NiAPHoSZj6UvmA93ckxj3+EREzXgGMkr0cw+MUyU=;
	h=To:Subject:From:Message-Id:Date; b=DYj3ShlAXN1uyOSIO5EsEWr9jF0JVlTUsdjDOlpfvCMMbpU0p2ANneos5W6IDrsCKhqmhF/V4jP1h0tiCj8DbxfrwaNd7OghQa6tEdSQu1ihl4rd1//36A8iIzRVoI7b6r+3SQmxePjDXGX/NynVqwUeTjPt3s0nE+hnKrpKWzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO+P6Far; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO+P6Far"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39D0C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781916993;
	bh=no8NiAPHoSZj6UvmA93ckxj3+EREzXgGMkr0cw+MUyU=;
	h=To:Subject:From:Date:From;
	b=IO+P6Far2NR9bJznTqH5ijKWrVwdvFVOrtX/8OMu4poDajmRUz4hwgowNtv9449aG
	 ae0awFgwbGUuhTUNbEEZ+4uhZD4enkyWeWu1rBzZOj2xdFYR9mHEbNMzLmmh2pojGo
	 iLexx8PNEW7u5OMWQt8G/JxP2AfnQAWAg7FH++zVGQw8qTa3Pc6Qb0EAOn6Ma1R0p9
	 xzsOPZ0p8WGeFJxPR95P8LvqsnTn6nNqPT4Gp1h4gaAlqFO01XHr0WO7RRA+iFoB0s
	 3no0cJOwbiywd6zJJF7xiARfp5rGnE4X6Pd+ZRNrnru1IhM2hMBRshIhDa/7E/EZnt
	 Q4oS9jUd/VpjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4849CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191699370.6522.10518204326247715893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f714e630b71f125b46d9a9673aa984003b528297fe93c96a53cf4011fc2d28dc
Date: Sat, 20 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781916993
