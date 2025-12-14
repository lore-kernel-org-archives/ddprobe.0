Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE59632
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765746774; cv=none; b=XdjHKTx1xQE4I9qGDnnBn0Hm9J1bsFR3ZPhpTrcLcm7L9QzDItlXXXlI9acg66vK81a+mIdtu84QndVYrC4PdW7JHbHDy9yqeSKh4zYjaC6XSh8odeYvPc8GWmMMQRe06v0VJ6OL6nDrvXpOf0GTBEE1HmRZdc5y3hdgiG5+HfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765746774; c=relaxed/simple;
	bh=iCykMap1xySeSlLmBaKOMp71p2XJhD/amNGbf++dC2w=;
	h=To:Subject:From:Message-Id:Date; b=Vm52UiwDktOQK1G5sNKfA0z0W7JFu74YkveliBk9HaOiIKD4kUX9v8OL526czF1+hTIVKJa3AUzz3PRhLG8QNmtfX/anl7PJZusT7TdXHP9ENhOOV/NgwFtF4GttjRdEaF1AaEB2Djk4hoRBDixkCLIZimxUYslqzc/hGDEeeyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvBLmuoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvBLmuoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4882C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765746773;
	bh=iCykMap1xySeSlLmBaKOMp71p2XJhD/amNGbf++dC2w=;
	h=To:Subject:From:Date:From;
	b=UvBLmuoM2s1SW+9l938+zCJI0aTYWpf/CKM2kk/cjoxV9kt7vzyT26NpcHrrzkHs0
	 BqXQqXd68ENBpxsSdWXHvsHpw/lVBnzdsTHZVgtxjBFBrSnwZfeP4z2xWqZjFDXTUt
	 kxudP8LavczFhbY+UO1vpPaJu9NC7xaQSpdJIFauXvax55x2ISBHwChWv37qqcZKgj
	 ercnCymtel9JJNG6AdR+lmuOeWBQdwWIHCI8dPPhDWJnO7ZQbyuamuHSPC9SZ9mcBl
	 UN7gid/9ZTaFLnpx081VGHi1nkTytNehKihXAU2+H4p4RIyDLP6BsHLcCvJ3Nrf1ld
	 6amNtMHRcU8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FC9D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574677362.11239.5907120476778868413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151e22662462709c34069934f3d62323b68679e5486ff227bb8026b5175767b8
Date: Sun, 14 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765746773
