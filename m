Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647064A8A33
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792009834; cv=none; b=ppVJTMW7id1Y4M4RvIGPp6dCVqFnZ24cmLFJ69GpcMZg6DYDmy9XohrQfCCvRpiSlB4zBKNbZDjaguWq9N+hGJAAjt34c4rwu7lk5T9r8ksdZAo9AWV7jrcl/rJU8yzUsSBa2dcPnrfGSkKVGRixl3xedOdmj4Lr6cPSVPeRBQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792009834; c=relaxed/simple;
	bh=kCbTIWXx5r+f1B5oGhmn3Crs4IQzDUB4RE2eAPW+lDA=;
	h=To:Subject:From:Message-Id:Date; b=ll37NIxgW5MHUhoQfXg/T4ajiTewuz3M4DTUQHEiY5ey4N6LrMp2jXfPklTaVZcBM31kKXtrDEKUxnYb/jhrIMP3wjUlJ8y1GZNzTCfn6bsi6oHzfoNFU+bTgdsHivUPTXQ4QqAevnRbblaEfViQDLP23wPMvdexlizQQeGNv+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeLGChC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeLGChC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1721C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792009833;
	bh=kCbTIWXx5r+f1B5oGhmn3Crs4IQzDUB4RE2eAPW+lDA=;
	h=To:Subject:From:Date:From;
	b=VeLGChC6+uBVbguqNfSZvsbR9Wvy5FAyyza43HONPwZBHdxkt9QUoWNFeexQMizWB
	 IiqSIPvXwKf5D/HFkpMDnhclT3IQz1tLobhYBekzrsBWCZRwOKA0DkiwQ6sXZ7McCK
	 puMjraBUhnSrR4ri03geZAj/SKkcyTp+Nj4+nl57NTMKViVhwj9JzPh6J5flJ8QoSh
	 JlLR+r+vhjEWfp4GhXLVAyvfPG2rfX8+Vb95fdIy93SZA+d8UrMqzzMlO4npy8vEzJ
	 9kLG1PkzLve9DdJ3CvAVMRV8GYHPhbJvdgVnUXCsbETU6n3WzWYRIvU5SXzBekpgPH
	 OKTfPsEhLu2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD188CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200983370.11747.4867998465336637990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc21467bf7570c6a8bd0b395aa7e70f8cb040015c44a5c3e56ba746b8dc4d1b7
Date: Wed, 14 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792009833
