Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099A41C11
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708898297; cv=none; b=Fkj3sMyJZgl8PadgUrnOgudgnGY8Rp56DjgjyauNB83mUgpGz0mHbcydIqwdJajkivVLACLpRRpIi4lq50cexeNeeSl/ewYrJslXX4P6UJ9Rn0a8Ac0D+vqhqUPC7HH0kjlC6+pG517/jyaZBnk8FMqAX38YMFv1uoX+f6Ge06Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708898297; c=relaxed/simple;
	bh=fFRXIjqy2nTKgxdA4sba9l7EHmBrPyCj3fMptxXbVSU=;
	h=To:Subject:From:Message-Id:Date; b=Qpq9ohPEsLW9aLZJUykuXBuzOamnDwx81mOhW+CX/SaBQpvB1GnmmxZx867oeSl4D2i99RXgik4WP4ESN8HX9Vzje6tYRcmJwY1UgPZHjUr+UtxwqYJ+GFDuvXcZv8VtQiXuonhurB0IwXz6lILGXkCMJ/8fJhRHPRdapEAXH1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCxo3igm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCxo3igm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CC6C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708898296;
	bh=fFRXIjqy2nTKgxdA4sba9l7EHmBrPyCj3fMptxXbVSU=;
	h=To:Subject:From:Date:From;
	b=sCxo3igmI+k1XKKs3Ahiqu1s4XrAEgwCD9mmxQ+I9TmYIOIRa4l8SedxBfiq9K7Vn
	 K4WYuCoeI5neN17Rio3U+gAeMPEzIGDv60YH1zAH28TH/WsfOPHzpVtwRJuG5uzsHG
	 vtT7mpYxmcjdo4J6t6Z1Rzvz7ap0a7FjrGwr+doQ29YLcmKggDPwCsfL4wCHDleCwS
	 adzTmKzmHMxdu4ieqMlSc3HoGDeyJsG5bpdRDwy5md8ja58mBYBZ/Jt/4brRxufz6m
	 vg5HWDcyhnjgTkvUJSSHXqC0OLREK1h2AFSLgRDGXTpvLbZS7pyJrsVJLPoroKxecY
	 78qgMNnBsO80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6697DC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170889829638.14757.211348026862224033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a79c47242c47902773b1c421a63adab16c0971b3d7b2c6e68b5fc232fd95fef
Date: Sun, 25 Feb 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708898296
