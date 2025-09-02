Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB37A34AAFB
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756847393; cv=none; b=VqTUr/Xd0tZfslBgy+qA8Y4kk0suylsVqfAe5IfGrvrGc8k1ShqdxampLTelW+RpN54AGS0pg2ZX9P3SVCUvXWGAepYmE65yfTpQ/mlMnxN+te076R7SYz60Lq6CC59ov5T/BtI9FrZW6Hb4b/8zU8hoJeeIdq//7EWQXwRab5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756847393; c=relaxed/simple;
	bh=T1tWgGc0GtqR+t+EO5YHrpIzk30CrAkbCkf/na/5raM=;
	h=To:Subject:From:Message-Id:Date; b=FsdfNU80yx/nHeAcUeuRy9BbzC8+kVg0ROSrmmHd1iHif2gZiD+2PhsO8G5SB2Zf5sMt/eseA00ROFxxL+B5M+TBwaylA7zIf9pz1B8XTKtOMWiHmEx1nCeqzT6uRJqHyecqToFMRHLnqDb3zo1cvDMqEHC4cSHur4XOF+qAiyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFZWJA5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFZWJA5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756847393;
	bh=T1tWgGc0GtqR+t+EO5YHrpIzk30CrAkbCkf/na/5raM=;
	h=To:Subject:From:Date:From;
	b=jFZWJA5WwH64Wu8UXALqyIL1nyMI4zFb/Br2j7UDp/yzCtV1WCLIK23qgmdy3aptJ
	 iBN49Cb5RhSpwghdtYINXOUQKhV45Pd6Eg6SQDC+LRcG5mjEoakoYIihIRdkhVpiUy
	 v1xAKtOIRIJ4Xf7r11goFauLsWNqWj4kQPZ7Tz81OUEPM9SWI/MkviXg9z1HQ8ZsDP
	 gM94jLkD9SHjBPS12iegXMq6W0vtkWS2s4+X7nb3wtQTq6F9u80GsU3uJozFL1QjIi
	 B+O6CbUOhZX+XvfduuRvcD4t7jvCOltmvpM20SY5XFDTgEFa9BpdjDmXhTOw1NcyUr
	 t8RvcE19U2Qtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3BCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684739357.6929.11914037155019722688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d47adfb3dc5e721a8a7b3419ffc08ebab7456c8a7627b4e7509b7b4cb0dc73
Date: Tue, 02 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756847393
