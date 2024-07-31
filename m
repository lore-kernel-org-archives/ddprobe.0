Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FDFC8C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722389754; cv=none; b=pocRZ3jOawezAemwqqPfYGD9ugeaVeuM600OWEuZzaRKiYWEOI3QYeMQkVVpD6T9K0zI/FZGbtR0n04JnvNcY5VFEOdo3OlibrGutiQYLJA5vvE2T9dFlnwl7zdRgJbIpB9a8B1EqX4Dsoqg65N5uBG3OQELgZW4SkzeRFpbr2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722389754; c=relaxed/simple;
	bh=O8GqVIOeIe15277vF/13H6FFhx3/RUwG4f3p9kjFgS4=;
	h=To:Subject:From:Message-Id:Date; b=QN7xDncq8S4CnyLR2fvaCSUCEcPI7BBjj821tSlrSYac3XdQOmPKrZE+b6+Skv0MBROf8yRaOySkftTcNVbISI8I/nUhQQxePdgVgxcKrIt5wsoLy+Ga0oeoyqytKpKdNB4zLzhsbmBHtCdL8/6utpv7NoM/vliioAWV/prLPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJuZEh3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJuZEh3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3481C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722389753;
	bh=O8GqVIOeIe15277vF/13H6FFhx3/RUwG4f3p9kjFgS4=;
	h=To:Subject:From:Date:From;
	b=qJuZEh3/5GBfAjO2XFW9bDhU+sbZOvP2Ph11pn0npzZgMQqoC19+hJu337+OZBqYk
	 OK0vGj5b6KzdFyOD8rOzCp7IrOSUmNzwKlrPufXYdf6MwCzssEOBhlzPSJw530ig8M
	 Q8ZhVpZ3g02WqBEGFmpyUGhKJAkE9JUB3u+vha3tloa7zTYWL0dJ59Ncx4x92jEyWA
	 xlRJFQphFRItM5FpN4jhM+FtuyQi9WNEphDC2yx1/QGCe5vA/W5tum2bxz0/UPXvbf
	 XQUQkQ5fSkywCGaoILHaCBXwmOuzdZ8S0t2dB/iNOYMWyOqKOpg1PbzvGrcliBuBT2
	 GA1SopSI1d89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F303C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238975357.28116.5560426203934689550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a90099e8249dde6098cc3a209c4d872e28100bb70993dfa3720968bc36c03f6
Date: Wed, 31 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722389753
