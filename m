Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3E32512E6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755685794; cv=none; b=WCYqNnFoMszLn/Y2nN0W1b05k+M72doi/B2m5SnO+uBcJ0Q43cCitp5f2nnFwrNelTyxc3MVXFIXIUFs9WbvOZ/Q1O7djZYznPIRUybeTrZXJmX8DKhU/4p6mWcJNOx+9Pw7NN1D3vc278z/pi+TV8v6N3QzCRiRN9ofXICD89s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755685794; c=relaxed/simple;
	bh=P8bP5XmP/vnckr3p+gy/n/mAOgaPAEzMM7H82FQb490=;
	h=To:Subject:From:Message-Id:Date; b=GXtGmxR7o8uMy/Qf8PGoEkxOMhgvQu+ynHfHK52gB1mf5TyMDEhRnmpie5nGnxDE0L+h+h8fvF+bfslyPVAYami2QgObK0RVHO27nKsMxvhTAL6+7LaNWYHkzOgC5yzvk7Dc0VI/5izfW7z/aP2RgwL3eJtfBgu2UBiw5qwiRTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naNytGhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naNytGhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0349C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755685793;
	bh=P8bP5XmP/vnckr3p+gy/n/mAOgaPAEzMM7H82FQb490=;
	h=To:Subject:From:Date:From;
	b=naNytGhrFdF+OTiFywmKlQmYOv62kYrq1MA6JRM9ne9iacAJN4sCI5UFmpt6PLPmb
	 vt6Wl8J1JtvSeMj+aqOdi63uqLVdx58LHKdG2JVZzQTphFsa6lDQNOYvcaSabBTahP
	 CAotOkhBMzkSnbzUvMJHXUT0u5OZ2jEsq8RsmLbLxW1mKtge4XtJmzHOFX+p6zhMZo
	 R+PZePpR/TLcfbI8nTW0zFCocETAm3WJpeCOVKSCeVisOrBeu4oV/fVCa1hUloDsLm
	 YhaCk+omuACxoJVnBWbIbHrjb5hXdaa/R3G0gZJf131oZzDiXSc/IxbLB/Wkzra4Ck
	 NUGz5Ob+a/wig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B7CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568579357.8904.17215315822840290365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a385f30ccd964648c3570278c0e04f97ba5150f1ddfedc7c342b1b892581ca
Date: Wed, 20 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755685793
