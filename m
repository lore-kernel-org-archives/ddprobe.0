Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F2C3909B9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787496034; cv=none; b=Da6B1bJyYji+3SkdIc7xP3WtN92rwcMQ/RuPkqXTuRj5gKCmgGYdThDMgZaOYKAkuTnb9lHWnQ/5/y6UzD80qzDl98SoZfelOY4QzxMPOdLdlbmGvO0OQ7nYZUpL49Cc1Cq8W2oRXKcsX9tmMY/xXcsHRD+J8672FNOAr5iVvc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787496034; c=relaxed/simple;
	bh=QHzDqIWqrE3o7Dmdqma3osEnsqrQgyz7Qe61h2o+nQ8=;
	h=To:Subject:From:Message-Id:Date; b=fL0YjO4I0BLvapT/ZBUYcemFxbNZhjHCiq65xMzv4S985G3UwTmcWZ67KF2u5x3Tzv/nBpd2DCq6rR9sAlOepSf0mwx3fks9kMGXL35+4f0zDAiYtE0R4D++JSn9/YmlLEoYsL39Gp4KWIjfewkHCLRAXlafaaj0iQ0xfRRd6VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwP7uMPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwP7uMPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4796C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787496033;
	bh=QHzDqIWqrE3o7Dmdqma3osEnsqrQgyz7Qe61h2o+nQ8=;
	h=To:Subject:From:Date:From;
	b=MwP7uMPynmmJsAJwUO36HJSyxJgbk81UvqYqE5Z+mnSFSv7SHBwiE+1Z9UKXnaKZ/
	 xMMuxHmtoyDHxpQjWZk0ktvpGfL04a+k/TCa7MJ9sXshN3L9IMnpF2UUy+eYNW2H2V
	 PeAdXQHp/oPK/VtWEVFE0tDxil3DbUKdnBVCtR5X8Wjg9INLWW/qp+/RsrL5LOftjy
	 6psaXgzhlly+h7de9eZyMt4sVSsZUfvKwfsdU2LmdIsK9d3YlX1p2QPoFOTibbg0b3
	 q3pvMI8WZGHrMLBQi9bW8lTmqkCdoXOq9XPjPfVmmdPDGJw1jCn/Xp/UqJSYU7nyT0
	 358N7auy6mHcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B3C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749603370.19047.5217174012336191204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fd27c50036f3230845a8ac90206bb389401ee942876d194d165e821d732b32
Date: Sun, 23 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787496033
