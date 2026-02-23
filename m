Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0320433C51D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771886694; cv=none; b=n5T9BJox5ia/vZG8bDpdTzxiLFVZWuAZnzggFPmZcaWHKXluw+hf2B+JT8zIsCDFe5VAq4fmU1EO+3x5J3SMVl6Se1euafYch5Kx31/tvHpNwkhKWRM2d+zOcBNZvxv7s4iW1GQvnruCis57qT3e48DiTprZlyhSJyFmlytjgzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771886694; c=relaxed/simple;
	bh=DCHSgJ/jEmP9aI2TLQwi9AKwzK/rTctCp4kusdxlH3k=;
	h=To:Subject:From:Message-Id:Date; b=AF5coL9i4hN9n5LfTfREtxilMa8s3s42I+mpxatNYDZ5b50q/UTRlQm+KdD6lQvPrmEaOLonANeRCNKD6Gie42mC8qsMF5we6kbDl4E8qs9cNgxQYMq4QjpoTkXokWF+SPOgg75qsyJz5idPfdaX/OajIz8c866UcQRBkzvvj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui4BExi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui4BExi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771886693;
	bh=DCHSgJ/jEmP9aI2TLQwi9AKwzK/rTctCp4kusdxlH3k=;
	h=To:Subject:From:Date:From;
	b=Ui4BExi6jB1JV7WHyawAhAym2BJuHqe9cN9/PSmn7f7nS7eJYFeonIBkX5NsOOeVb
	 aooSDOCkoXJO1lN8irUAirPKJMQjujVTHSYmyutUO6M3/E4k3ZJkzhT8vsjO5H93Q/
	 iN1cG/ce1HDJbZcNtACBdMc3VJ0Oi84rsq5dBB0mm9jlhlUgiTyd+1mjOQ8MwwelBe
	 PzeAWiTQy3FUBoEx8gWLkm/64Nvum2eRPv2QMbc4EEfalPMG7HRrW29OivlH6Umbdd
	 IJ/zcXp540vZ4WoKNIEan3IEvsUmGuwnxd8jzwi3XQzHO3Tjylam1C/nrmb4rgugcH
	 kNsbRaKSmMvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E5EEC2A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188669358.5592.1535870844002690305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bf93143d3ab3cea14ab02621928fe1e8c84084f80ab53a0f9b0cedb0307f5d
Date: Mon, 23 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771886693
