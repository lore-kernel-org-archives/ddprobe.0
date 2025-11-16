Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E22264C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763307714; cv=none; b=PYbx1kV00/2rZYisKbwq+3IrhgviAmNys15WnTklsPCY2xSgdw15Lby0bbMmO3K+IOkMgOG628QkGnMTomziVtgu7qcxEAdnCJ+4/zm+jAZFMd4ZVfaHav/H5K/YjnNglFrnTAspctSz3cecEx/fBbowQ6EVgQXDlAFRyQJQjKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763307714; c=relaxed/simple;
	bh=CuS/HeBqxQ+efddufI4I5qxtwVPM47vSse6LtwdDMh8=;
	h=To:Subject:From:Message-Id:Date; b=DVF0greuxh3ITUiiDEBrllb1GnbnJEkZYSx842DMXOgIMAZ5AL4WibSpAN8nOckS0el04xRr/Ny3szYS4JGjt4OZ897Nonia1L8zDcPzCwo1G+sTONe6kKPmleG+eOVw0DIdVjPKkHyLELuOql6cowIaOdrkDJO323saRDld0lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESctmBD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESctmBD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4137C19423
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763307713;
	bh=CuS/HeBqxQ+efddufI4I5qxtwVPM47vSse6LtwdDMh8=;
	h=To:Subject:From:Date:From;
	b=ESctmBD4h2aNqHF+CbxX7CmtLXw6pMwLdlzRuq4RV0Zxb9KbN1akgQbo5mRlsU7Yi
	 QEvNSBSlH6LzYYvlAsHK4JHbFmOv25GGp43XU6Rdq4XvVPaKRR4ot4HLb4K/m0wRHS
	 /y/8dLrQapbiu7fzf7gWYsPWtRCv80wXQR2igF7zeBZa79oDc+cXZlclqkdKwYY3/4
	 i+tkT+IiNmbE3G/KvS3uyfOpuI2ff+OnNekYNKuFgJZAJMDsBukwcbWmBFDjr6Yc5y
	 974wh59sLYhRyC0h3bCsYxf4niSSETyqrD3dV9+W7oMIC7NllaXvC71lnN6qxPzVKE
	 nMSCMFAAE6DHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A887ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330771362.25731.11346962160699616782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dc58169d620185481093ea2efdcf0c6da7b911a3390946b458335b5a69f444
Date: Sun, 16 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763307713
