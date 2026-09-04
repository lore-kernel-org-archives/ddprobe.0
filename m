Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3973AFAEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788506434; cv=none; b=YRav6DyuCKob2jLzXGdkQUd3aMX6WJkX9RPezvyN4M9tZCoDHexFDJEj/GVFmJ6QAHbGaBfr8YJD4XRm+EVcNlM/w58lUKr/R+bPuIqre5zp5d7KlBqsRBorerKzC3Hzbdrm92MfXifo7PvzcCf/MP2UD0TKuQ0VZzV5zI4lvf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788506434; c=relaxed/simple;
	bh=inWh8CcSBcB+TS9EVOLyOYcwbTNuhAfVKdj/LHwMFkA=;
	h=To:Subject:From:Message-Id:Date; b=VFMOTqgoztpjNPhi+2zSDpa71Gex/KUp8CeTgZlZgzOS7Qp0T3Q5jb7lOnu6SDskkB+6bjxSUzTLsRITqHtIDbDgSke1swx+dJJA8oXJSYYvgLi9jApoem4/zkk6nEiuZHbFv2qCMVA5jBZApmTLktf458PkbLogQxCq2TTOt0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2kTWq4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2kTWq4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1428C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788506433;
	bh=inWh8CcSBcB+TS9EVOLyOYcwbTNuhAfVKdj/LHwMFkA=;
	h=To:Subject:From:Date:From;
	b=t2kTWq4k9qVBkW9Rz3XmA+cZgKgzCEQWt7TkvKDoyi5/WU54mDcaioLLzcIjnOCAs
	 cMTQsl/B3V7eTq6MGNePquMzNG2QieAnHMuXBSkgAZWQ1ezRuMlHwV9DiUsou5e5Bo
	 FwP8WgmlmThQqCrf7GAFTVMc2NsoC/jtvly4GDQidcTzwPpgHgPmm0VvYw4K1m++0h
	 r/Ac0eeUGcvHPdYnNcDlewEzgGGc1KPsuMIlgo8l89JU9qFKLJ/4oxl8jueaLxLLh2
	 BQKGRyLZTdXPwdf+hHykphwJryP4nNnGjpFFoG1t36MAhLknuc5TPwLx+PX7Egjlkw
	 Zxuf3TekiEFYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC805C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850643369.13460.16243754546055485600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d63b72b9226c276578a4127b9968bc357b9d2d29f83f944adf50b0685a405a1
Date: Fri, 04 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788506433
