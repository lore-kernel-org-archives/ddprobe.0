Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E0330E82D
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791735034; cv=none; b=JVV7DO2NP8OfY9ItO3IOZjAS2B4jdFelwycw2pmF2eL0cTpnPn6RQJa6+qxEZj5/KvN/Ts+Mrfn8GDF/IMEUeEnlc8l38CLGp5LBpuJbLI/o6jNJIgafD+hxASfK48UdFggf3utFOTT6DxVrsbTuYMjBK02oBQWsJmrA5qoPLqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791735034; c=relaxed/simple;
	bh=yqjFJU9esSqhZMU4pCisFGxfjklQX/L9ztwptCTpgM0=;
	h=To:Subject:From:Message-Id:Date; b=oBB+84KQhiG0tPZ1sJEesxsg7qs2EY22kdr6wKx/LMo73EksuOV7dbS5JCJC0nTgiQd/6j4HbYAldb9ZYs3ppTf41mpCJZoco5wkUOWD5JTiU38PUG9jEBTKtfPOF69uvHf6PhhVBiv744r07H2H5NK7OwZoXOTHN2lrlCEsJX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFh/pneQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFh/pneQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB43FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791735033;
	bh=yqjFJU9esSqhZMU4pCisFGxfjklQX/L9ztwptCTpgM0=;
	h=To:Subject:From:Date:From;
	b=rFh/pneQvia+b3mw/LMvB/SzYKeEcyRSEd6qB6ZtuSKoV6pOGHCrjvFmZMOQ4dxL5
	 TDw+z0QOKGeSgJ2zGHSrpKzVyMNl2IP+bUu+z4OzxrfUZY98XdixgWrmJACG/1JImY
	 bmcyFKPwRm5LVfn+PaD6Me7MuoqFRYT9wVOAp7witueNb82FGyp0qsiG9DzirN5dZy
	 t1a+NOPWs+xKVbPqdm+B4efyXXc1tSeiaD+Xzf1dVOdE7Xc1t53laRokoT49XoufAn
	 ilKsA47WAtsOXO0jNCq6az+kLoq4Wxb0fxjtC081AAHlorkh4+BhJCa0FYFUvBmJ+A
	 taaSKYNiAVXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90DBCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173503368.9915.2247905813249444694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a5085428becde143fccf8e850f5d715a34813af55293b374a8366d4e26824b
Date: Sun, 11 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791735033
