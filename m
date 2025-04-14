Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622652563
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744591794; cv=none; b=MMIyqD89fn5P0dlcMv23gJTmpp+D3vXh3CI8s5WLa797bm440y+P1sWvhgDYrqRtFAGYPcu1Gk+SMHqhePKKSsF1Jrm7iio7Tvo7c+ocV22rA+fIBcRnuvogT3FYqc0sypWf8ziCuSZHjS5isjBpbejJe8QbZhHA5b9FvXhM12g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744591794; c=relaxed/simple;
	bh=CaMhRhcr9pb7ovq54giQfQ8yclUy/Ulw1Azc4Rf1QDE=;
	h=To:Subject:From:Message-Id:Date; b=TmeD4jHkOQUNgNqt2eEJIB4NrU2GxHV06+NjoDAg1vyyCxBl+sskoPdQADOQ8nb20DjEqIFDVWPO3YhZP95+mAafO3u3xMatD+PzdWRgsTsptHfyWndqM5RX59i4Kjw2puTgHG8nRW1J9FG2t/QMdPBEGEB5Z5ig4TZveF6lpPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO6Eq3jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO6Eq3jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744591793;
	bh=CaMhRhcr9pb7ovq54giQfQ8yclUy/Ulw1Azc4Rf1QDE=;
	h=To:Subject:From:Date:From;
	b=AO6Eq3jvz27GrXDd2axDn/wMMGCmu3Nf/jueGITPc9FHCiCfZhg6Ms4fEhy1EyRUk
	 zrQB87lDdA5X5MjHIOQk2R60VHMw/w0lBpfUncI5hyllf4i2VRkkLIDDuup2c3rRU7
	 j94QEMKjE5o39wL85o5wnXgObmAZniDe9u/8CZkl2TLzaGpogYAWW8UbsMzAqXYjf0
	 svID+V3ywlpn8kRH4+MkhVCl7EJBwNb7AKsaXenCPweaHDW/mwXAebRz/qoSQy5QjP
	 JIWBfSVhJJHE7VVy6bSOVVhVEcLE0f29k9kKo40dqnUY64Z4PLJxkW+S7visM1MGNP
	 rw5MlFhsi3rgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD366C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459179368.17392.9814320077189150739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae134dfeb18de5b242f199cee06bc45facbe75b67f0794bfb3126428f8aeaf36
Date: Mon, 14 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744591793
