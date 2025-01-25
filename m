Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3548A3E47B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737816354; cv=none; b=Z3FUy3pXFk9ruTPOw6Ggpw3Xp/dfTp0ow1GqIx39djJujrEzg5u4h2zx4FPRzK0U0IqoWJzKU9fJgyqlBrTS3jNRjGBTjkARkMiNWT2D/ktoUHoyfJye7eRanfIrZCaqc0XkvNQF9UEIks7BZtC0fhw1cdsim33OPF6hErA+RXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737816354; c=relaxed/simple;
	bh=tSJA0Jr2VDbShof4//6hP95EUrUha3NoJmhBXi37bI0=;
	h=To:Subject:From:Message-Id:Date; b=K2lAVzG68RJ9iVDMfXP+L3+0oK9LnZlaO5UD4bYLGJ1IFZOdlPNC1MwayKH/WSFIaM8OGRbif4jsTJjVwBlcBOkOn6Jg/k62qAIbRQRiSfn4Dm6QfjixnPYbJBKfz//UnPAEtm93Dqy+oYA+9E3Vz6IIWDbLZFHEd9S6BgXDZEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq6bC8c9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq6bC8c9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3777C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737816353;
	bh=tSJA0Jr2VDbShof4//6hP95EUrUha3NoJmhBXi37bI0=;
	h=To:Subject:From:Date:From;
	b=sq6bC8c9U5WrWzYeSxG8LpujkIKuayvwNx1NTwdFHbzUyvofbUU60cfIfJ1GhngLt
	 BKlz1rdEnjfouKhfly00e/bm/zak37M+HjC1rkq6nMJA30Wro4c9qhZTfqswnhLqjz
	 E9HjDR62NuMrYLplmdE/CTvKO3Jbm7Gc3zZn2pmRYv8JWiJHfJdF6g+FIAoTfgbf9W
	 5G/6gbCdI0/2SQ+bp62I+TOd3ecmVGxpMAPzqljWo5ojm9BmVYBWPHDgMavqi6lHav
	 /sw2OqnE81lOYW4Ou8aFFkXQ/vI9t2QEXTALpy8pelU4i6uB6H8EBRN72fexxmIUkW
	 aIx74u9rIP7ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90058C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781635358.11363.1042567915546744245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6970f8c53c6b365b3a2b873db671ba485114a3503439b2b99c0079229518f8
Date: Sat, 25 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737816353
