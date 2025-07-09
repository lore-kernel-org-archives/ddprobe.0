Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DAB188596
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752101994; cv=none; b=B6MmdHRg/xHrx8+GnPcBZBSDNeGOAPghfUMC/YiO70IpYA59wUvva0RaAv5iM4w72MILEQ6sU169qfnocKqUYx0HeAnNrXHU3/MBL8uKxWgju4VO2A74JbJnlop91JipBj12s+FS2/EKvW3zDNCF+qsDmt2kqRNK0rzPt3CLkqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752101994; c=relaxed/simple;
	bh=RPYYtDfmueK82H0YODiZ/GOtrrvjcwclH1PiZditJ3o=;
	h=To:Subject:From:Message-Id:Date; b=nlR0wRuzlRPZPqgRNluZq1yI2wO6/FVv/m4Hj0CY092fAq4sxJDaEY7r9pAqefdqyR0O3E385ofxT7jETHvptw27Y9JYwmHiTIOgaRfqXdPnHt5ssJBHenn3AZVE4Fxxl3r0+mCTbGOQ8J6cqzOs2POrLEaUoRb2mzIIRq8wztU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN48uoks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN48uoks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0336C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752101993;
	bh=RPYYtDfmueK82H0YODiZ/GOtrrvjcwclH1PiZditJ3o=;
	h=To:Subject:From:Date:From;
	b=TN48uoksUmXuAyrZALAVNcMMOKCV7YzRHXnftB8hRViDIAdgD1sRPuawyL/Mj7nz0
	 UXUhNf6aOLW21rHbbO5wEPIeyOrTte6ZE7AVBL2MOcQjC8MummMO0iVrkz8zmWVWjg
	 98Tpbo858b1Z08a3EF9gO+XWTankuHuO5xQfHpwyg1OTu2D2TNtKz/hfxMG3tfrxi+
	 fspra684Otzi2C+ZpP79BkcMe+IvQd0j7JTauOWu0SrAXhD/P9FzeQiYJeCvlqU2si
	 8EeRdCCadcz0IQvYRujtZ2LvZJFt5FFchTSQGjzWuBZNj4DYogMnSCBkS+poxZFRd3
	 JgmroXNVEr4uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E20AC83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210199357.31821.11568925163481375906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac419aab5d07a1d424d040c02ae3c4ed66e3d791dff6bc04248a39e8959e6a5
Date: Wed, 09 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752101993
