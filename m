Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A072AD2E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784615314; cv=none; b=f1AyS937bUx09pm6crCRNEjl3wAypmTJPvYx+RNNZPFpfpzhA8Hs3xLrBkPBKEHTi7P6lSDE8sz9HubNIqx1Vsnq2+LxSH21rT12Gp45fAVFWXbBn9uEdwK7/ISt+tCYBgfQ7MARX2j/AtQaG98xdAvd2CFemCevOZWySEGusXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784615314; c=relaxed/simple;
	bh=+Ln+eNrTqNnG5t2uAS1aC7Zd2McBKSj7vzCRvSp1EO8=;
	h=To:Subject:From:Message-Id:Date; b=ke03UJoNaXd208/S95r7kQO58h52LEHwayr9cPKSLSvyKqEHezHbgLnP4BwY4kMZiepj/QFAEEZLxsbouCApae4YUEiIKCfH3vqiQtt4NCNO5+muMvvVqv00X2rEmUqNEzR4GsuMJDP5j5PTmjFj3DkcwuRGUyFPskEcckkpWQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+r1QrAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+r1QrAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7EAC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784615313;
	bh=+Ln+eNrTqNnG5t2uAS1aC7Zd2McBKSj7vzCRvSp1EO8=;
	h=To:Subject:From:Date:From;
	b=u+r1QrAO8HhV17RJFDjKbldsvByrMlbr3x7FcaMMxYIGreyzFdP9oZWGt2CZsC6DC
	 BKSZJjFaiSyaXklxbRxEOu9isGM8ELo2Bab0WEnMkTo5eTnTGkOVI5z02F3iu3GF62
	 R8Ku3mfHyhF9orGbZlSeSLp+9zmmaFpiWtXuQA26rr4vQJDeI6oKbdSMAQa36817L9
	 qAK/KtDG4F28mU0S0sg17q68EuYcibrrmwlCele1KNmAS6079sBA4aj/Z65olSpnDN
	 MqkWTDsRslMXipIKG5Ftut7MI5fjbYjO6r6wmLezylCrBLWQtdSlzIr9HWkzuXo3Ar
	 FGM9ln8xH/ULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B323EC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461531372.13471.13088005028579191113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17fccacb2a04fffe14d0b9fa36182d7b5d9e1762d89ff657a934899171da3e3
Date: Tue, 21 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784615313
