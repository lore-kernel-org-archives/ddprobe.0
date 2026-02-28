Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EA4407598
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772271893; cv=none; b=rZ3CQl5CrnTH+JUxlIKwB43o2FdZdPTnu0fROwds4Pl2dPtk/VUc4O0xP7f/qNqdskbSK9Qu7gi7ZrSo2aAkj/Y8761qn4oqlgsd2SFWbh34fU7i3ybsFwvFqurXvm6TIKIGJHC4gbUKk2OzrFTvd2MSltjsyaIZK8m8TSmR1q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772271893; c=relaxed/simple;
	bh=Ri7qPPXsXTifan2ej4/SR6xPGR1DCQoONw3KrOMzdKM=;
	h=To:Subject:From:Message-Id:Date; b=L/TPJRZroCTi+LRGVsCvHChNkuHcJStEBdX/CyX8Jsglp8eiC9twOJCuLp/at+bOxh5Mv86jxKamtwHrQ0X+jJFzneM8+/qDnx+oaSlT7cogxMywEjLptZI6Hf1KFrFgugL7Y8GB4CaJfhWarGxS+yhxMqJhIQLf246GJERbPx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwiq//0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwiq//0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE505C19425
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772271893;
	bh=Ri7qPPXsXTifan2ej4/SR6xPGR1DCQoONw3KrOMzdKM=;
	h=To:Subject:From:Date:From;
	b=lwiq//0yzEBgLkfir87COwxYomkGkPHdEyr7Cva6ZEuYUQMLy0E656ZkU1fSF6Wby
	 Wwjj3ZacU0zXjZYJg2pZDYu7qf2E+/3yTiIX+WybPMNiUD9OXWr7aO48YJixQUP0Br
	 GI0V2C6bDa/ozHSssQjgEsoT3fcfRoMj10Wtp32obnaVQ9CCH8MpVZ4CookTPufq7V
	 AiBEPRTPo3EkafRFQNRvc6vmf3ix4L/pqqxiAVlas+3vx6Zi9QA6FIx4za8E5b2u+j
	 TPJYbPZsOdP1J6jJ+yiET2jlfI3mIZCpu3w/XPWo36DkXQUQ9DFFcagVpPUWu1SzEG
	 tVc0BaMKmUk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E842FEE4E6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227189361.6970.7942713330798788042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba53704be239543266c70c6fbce6a96e96b8729a34d668361e72f9a952ef2d4a
Date: Sat, 28 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772271893
