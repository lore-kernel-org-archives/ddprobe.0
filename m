Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4652EAEA
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722677754; cv=none; b=UaW0ozYq8rjEsrWaPvhozjNMYQiXan296UR15CVPn28mSwGRQfi4a1DOcXo3bCuXcO1HzLirsQ+8thbUJT3nXemTeIo5UerCUjfyUoJp6xRD5ZWZud99iNji88qnqYU0uCQBMgIL8e9JV+CYPCZ7if9JfUemPpoDJuV8skJAnfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722677754; c=relaxed/simple;
	bh=Ji24nprHA01L3i0K7fS9t8VlIIH4OHfkCk+Z5EiNit0=;
	h=To:Subject:From:Message-Id:Date; b=ABQ6OMysEtRYW6uwdiScrvBqJH9zfO3WDjTprq1CBH87fkiH3xkyQNUdi3Jc177JTWLNcGCcop0XJLNhqy9NfcoLgpWglfQS3wujrtQqB4PueWwostGjTdh166CrVqgqQvJEis7TpRz4g4ezg8vtv1I6eXb3bJcbOYObshRQslY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAgvgqnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAgvgqnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C0DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722677753;
	bh=Ji24nprHA01L3i0K7fS9t8VlIIH4OHfkCk+Z5EiNit0=;
	h=To:Subject:From:Date:From;
	b=LAgvgqnXOU1f8qvEE5nup+A9P3u0IGFdSyHkmKcCm8GnQk008zG68pr/jaSYRm2nf
	 gwmXcwCI0ESy0QiJm9YwPtEu2UQo9DUE5/pdLCvjFXQP0r867UgSa3c+o3KdRCiMCH
	 FFOvFbVqWjaWy+nWwyVsioJkz/PnTrMtKfgxgqJPGoPj32cjlmLCit1Kj+sZ59sYoQ
	 nbcExkcEj5SyNzx5Xl/eBr5bNeEhYdzl0dCQ8/Ku/ssvv4VyGYZPIeq0MRbRm4GAWm
	 mtL7JBpodNc9wYapyZwsfAEgGTfXJpCoMCwX8k9VrB3QxU35h0VBT6MC8lISsG4CaI
	 ZbmuJHWhAbAmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90553C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172267775358.608.9514929128103234845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd5178c646f5acbf697ec8edc47741151356252db1a01dd3125af80ad5857dc
Date: Sat, 03 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722677753
