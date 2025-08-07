Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299B1204583
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754558994; cv=none; b=uTCLfGOE/XgaO2I2aTCMShDfw6GEs52fY5Hg7zRtXSLoYMsv+T/IuOdXEBBMU+WshlQOXRX+aa7hIkha6WUVaHjSndnBC499FWrT3x9erHjdrZm5hPABSTaYRj5HBOnmt4zbbCzUjH02vO8ZXLyC/0gYk6eZ8xuSOKTz9mII/Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754558994; c=relaxed/simple;
	bh=9GH0VfSWs9wT/POvgNNngvq1xeGkysk/Id3UNkI9aV4=;
	h=To:Subject:From:Message-Id:Date; b=FXc+1PXyVtAOZd2z/ymEA1tcCih/DHpOVOVk3HzixHQyGprlmV5yb3sm41F9Lr7ACT7MTvY5lF20SxwTDJqdZRvFcyUmoYU62hSAMYBVjbWf3y14+ewuCn45x7YpwOOObl+RREXkJ+9Q7jrbLil9ok/Sc2j0qOu7MmRx8ZR+ifc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYMve3Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYMve3Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754558993;
	bh=9GH0VfSWs9wT/POvgNNngvq1xeGkysk/Id3UNkI9aV4=;
	h=To:Subject:From:Date:From;
	b=UYMve3RsZcRjt9lJyXIq+1BTpWfOdacklRQ72ZjXhz1o791XDY1SCg+3EFdDP88Ex
	 OOIcLERz4NbV1MluZFWciI4B9X8ogxauHsl8jMDRc93WlD0SikAAvTVNzfp6bjFQ+4
	 EvSAqSjv0QvCtAGn+2uJnv/KP5Cav/2Vnaq9j9lQLMZtqtRFFF+5cZZhAVZiRbQ8pl
	 3XmO1GBBKNT6O0srZdDEckt50QkXU4LiEn+cIZF0xgQo+e6rPZAnfVgCTmRXw1BYdt
	 2FHpXd9WEd5cWSGW3D7Z2h7Sgyd1uE6QiZGaPiG8IdqLRlvG1tTHcrtAUXjMfaEjeF
	 nsT4D55GgIaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A19C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455899358.14660.6935638754206483362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7f7b4f7d4fd38083c6df2c30de486f76f33c1d58928a5ecfde15dac1595e89
Date: Thu, 07 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754558993
