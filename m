Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347381B969
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727964954; cv=none; b=LEk3KOj61p74opztI9KZ+IHHyW56+N0bHQ6KztgEOReZfugE3SloNOkToAWzs5vFnv0AwWU2bVBk2IAUYxvH5X4EFsvFAGuk42VRzGgB/CflwezIVqd82uJiFyfgA05B5xoxP2uWdQYHnO3MvEWTkKaf1tvvLcqsDo4eGJB9lZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727964954; c=relaxed/simple;
	bh=47oL9ncAhPJ6O5BkUc/BIUWKYdeiZK1yIwuRwPq0Obw=;
	h=To:Subject:From:Message-Id:Date; b=ZoawUV+PZrOHskrUZUf+afdUOUCp488UWAjcSgVLZdIYPuIR2M9zXHDUNHcyVeybfEUekTTGsDvMUfU32aMtYH6n8nGu9gPJczCgsEPKMyGj5BqLLsnucO9O/PoBkDxYsXTa2LWKGAkkdah9E411d+ylw03NBgFDw8EIDTyNhHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izOpZF4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izOpZF4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67A2C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727964953;
	bh=47oL9ncAhPJ6O5BkUc/BIUWKYdeiZK1yIwuRwPq0Obw=;
	h=To:Subject:From:Date:From;
	b=izOpZF4UDeCH8wSW3YAaY9+YHOjflhonxMM5sYvmfvVC2f+4EJYnu8X+gkwxXewdf
	 NJHHOlwjSQimSOmEN7rgc1iJXOzlpd9YAiTn3mmThgcvi9N/nRAuSNl3ygiowR+U7q
	 YKY68aD36cA0h3krDVVm9yruUBf6oFdqjuK/mJbyagcd9JLO40gO9ULo5EuG+Rt1+V
	 a/xx8YMDERTTZcW2BgOZ6VPOl2eZP8x+Hglue3SQcuEcapCLUQHfAgciGaiazcCnEP
	 TgfJ3cIbpjWj5TAnjMavBJLhQWTLftJyR4AjDS4cbvovzmP8mf+U2hmfqtIdfvCx0j
	 Wu6l3Md5RtMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F657CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796495363.25590.8368895164635037356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c8dd642aed43ad3389f5f1847e4a66f97331f240c0083e9fad142fc558b1d8
Date: Thu, 03 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727964953
