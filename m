Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BD71D131B
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725110754; cv=none; b=R7cpbDikOPIp4kc5tBepRTYZOsENzpmk0+G+FMTycmDiajnsughdclZT0Wym9tqgALwoqBDxkdx+pV8TFJZqmSTn/d02XexOKztTxWVilYrGKcgHVl+iiILoMPZ1MyTyDgK+jYQpaIdbN3VVV2ie3rlj02wyp/KjanFCf2+JgQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725110754; c=relaxed/simple;
	bh=1XdmUxu7Uqyjx6Ri2HzKU/8WqqVvkQOd7g6/O4+kg5k=;
	h=To:Subject:From:Message-Id:Date; b=cEJNzVyORj0In3HOg96F9NNuw9zK+afTX+KfSbT+VLwlf38ds3yVexowZjhapZ4O2swoJ1k6le+daAOxOr7NYJ54JboVOo2X8rPWXZHSpHtlGa7hqmgnz2I/tWfVJNwBeCXnJGlft0Z77wtH+eGKpWPsRzBkRCWUwzYTzeJ3G0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha4kgo0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha4kgo0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE32C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725110753;
	bh=1XdmUxu7Uqyjx6Ri2HzKU/8WqqVvkQOd7g6/O4+kg5k=;
	h=To:Subject:From:Date:From;
	b=Ha4kgo0/L++w5xqe0iNlv1N1cINHSOG+EwM52TsjtbaHez/PdRlGAotRA/oxKrl1u
	 eUsunhroEgQvqD/oJEUqUWGP/+cQ4O8JMYFArKmSWlQThYBcRTJ7HJZIeCVzAKqUKr
	 hzkE84kahOdhAlutngjICikKLYz2551cIJeQdp5ImWI99u86AuLGWAtixqBu0rENnq
	 3B/s9m4mgub3ylonPh9FzyR4XufVuHuq9k3u25ASqESV4MP7QR1jl7LxZcmCm6KqGS
	 3r+Uacv1DLEGj5rtOZ+T4ZjfOwmwffX26eDPvU4PIv0DqLL9t8oemiUHrsIjWR4w8a
	 ohIA5Od2DzDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F177CD13D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511075357.31675.8244638091600428519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893d0291ae493546bdd7f36206f3e7b3c0a5dc64ac15f4400122ce5727069350
Date: Sat, 31 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725110753
