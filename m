Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054F1D618A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736961954; cv=none; b=axDxU0uz+9m8/qEd+S1KKvPLDs2Tq8oYontp6XNYWNIsM8vgCdcGvuXf6V7CW54eTA4Kj0i9TSQKQFzac5QmacarzS49G+Upk384YRfM3WyUDP4h1awDqXR3iRgN5wS30E6b3ZoArIpiaWxVbmze0ECoNPXSMTTzpSjeND0NVss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736961954; c=relaxed/simple;
	bh=QuhFHOkOKbrYe15UXA4z3gVeBLKlp1UmcfAr24wSs0E=;
	h=To:Subject:From:Message-Id:Date; b=IXsapVXRbZQhcJGy2oFu9W7sJzrCqvcysdUD26zAZky5/eHbZSpIacMadGZ/+kWzM0nxCkbcBzs8yiqD0uENyhniZas3b8SkPKcb6yhjB9yDXzib1L2TNxvslB1LseB9v/C6+yhlQ/J3kkmViAGruBNqd2LwgVcIEjRZo8MnKc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXh7x86M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXh7x86M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBE7C4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736961953;
	bh=QuhFHOkOKbrYe15UXA4z3gVeBLKlp1UmcfAr24wSs0E=;
	h=To:Subject:From:Date:From;
	b=sXh7x86MwYO/Bbwst6RfNdvIOkcA2O4aYbFZv0uXS+Ij2qxiK0FyNAgKNEBMOshbG
	 HD/fZO5SGjXAq31hBLcaoQQnVvqKFaYfzMHUDk2bNM7UPCeIFrskjFTjNyS+A/ZiBI
	 EbqcqfE2aH8TKrQ0LMhn4PGHxraOPSX2T5Aehu5QbNgzj8EOS0/cgfJXknzf03rOK9
	 zQfhGeQa8rlhYnbMKS7urqPvWn+mZ0LA3HZ7fw+LgAFNmpHRZsOB32LdinudP6Ec9e
	 ygsgxF+wOS/HdS5zC0n7OT4hZy6D9EMETOmZb0EIkvfG6J56tFvp341tbwgCEAPPHS
	 Sa+Wh27sOVe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9E7C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696195362.7401.8514826689357533188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3d860366eaa39a46997b0a6c60b0942e141323f585d82b1e0d86aa17906bc0
Date: Wed, 15 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736961953
