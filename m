Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4161922C4
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752802196; cv=none; b=SzpqaS8Q3z80p1sx62JXIPsJ++PSVpnL1ZfHEeXGpTZERHo4fF25uwMggN3Q2UgK0l5EQd1neiOnDmdcWqpXH05WT5fGsOUUNwsX9d5Rw4h/qRh9rW0Cm3FHQbDYTvX/svxMS+uP6u+HZDOh5JEZ+ErLcXjYCBSBxM41EUzHhcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752802196; c=relaxed/simple;
	bh=MAzw8UGEG/LqGDr29P2oPg2eZQOL52fCurZidjTFcVU=;
	h=To:Subject:From:Message-Id:Date; b=oX8K4uxUZ1NA6GJfjGkqqcdL9+IglvaD2Uzx3Ox6aBNpiCawSLaqbg6csmj/V7puGYwzQmaKnHyjIoeiee7vjv209eV9GVp/friaG5Tf/jDW40fSoa+lhamjNHz4iodKEzBt1/ngiaObHpWuMeOrplBPGj9o62t23z3zCOhPzNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoAbmsIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoAbmsIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5831C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752802193;
	bh=MAzw8UGEG/LqGDr29P2oPg2eZQOL52fCurZidjTFcVU=;
	h=To:Subject:From:Date:From;
	b=WoAbmsITS1jcwnXaDVzYezTAY6l13S44T5MO26e5IyVLvb8fZibjr3RWoxjY8T7bX
	 GFOsC/4qm5hI7RV5ro+9Z5nGyUdKDlDPQZgl0AJvuBDUbb78sU4zKV50uAWmQm/e+4
	 e3CBCWn1Uj4Jmg2GHAj7G4zjC852+GiYAal1rSYTMHtPh/ienBkzL7z3H5K1Ce2dsk
	 Bl7iSURN/L63ImKPVzUTrA5ipaV/jM4RvOMhBNrYCil7sM2FI1b9xLUGommxNA/igI
	 LI06oWpZ/fOp3qTBEG9WIKVN9kPWTd3i7zxu0I+PtJQ2OVfPnKuioy8qhck/4YsdoJ
	 VBmj8D7pohxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFEC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280219358.21245.10683388978373367716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfce31d7da2c411f0bdd2b14c8462f2fc54bd309d25a1f6f4c6e684e4221451
Date: Fri, 18 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752802193
