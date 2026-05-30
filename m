Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31842345729
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780111414; cv=none; b=a1xD4K1VtE/u+rJWxBbQESO8dkS6UWurysVh6dZs+9rxE48O1oXenCm3aODuQMCyXth39Kjk7BGxfOeU+7/J63ViYnD9k2BTihfQWnfXlAvB74TH5lptSAB0N5I95avQ+xxsPW4X1Bl/fzOfMQDn/mEtdfjGdeFpDwKi8Ry2YXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780111414; c=relaxed/simple;
	bh=5WAJNMvpJ764dIhK5NV2Zzsj3Xif5HNru0xratnJCBI=;
	h=To:Subject:From:Message-Id:Date; b=Dx70rFVA0UGWix7LbrA8m6C2ZRdBbkjt2rAc7rNXQb1tgPPci8DQu0Wu8F8VTB7dC4LR5KzWorPVFUagyMYofw8hs7vwGOK9N9U2kBApZcowR2+77LcC11Zio1iYZK12U0TcR9Ujsk7KACujRF7ZuEYolWXCkaV0QYDJ0486rrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slWLDbDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slWLDbDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAD2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780111413;
	bh=5WAJNMvpJ764dIhK5NV2Zzsj3Xif5HNru0xratnJCBI=;
	h=To:Subject:From:Date:From;
	b=slWLDbDy8YGXPzxT/C8PjNMlujmIIODSqzR0bKVO2ZdEfDa69xuyJMM9Lw9HA3sxw
	 xmUGeGU56y+lVd5P9gHycv6fj9GnUkiQAA59Kjs313JgjH3Drs0OCTL8DbVZ3GuiFs
	 8713YufnNkfAnTQy4XF7IvUudhM2BiPW9cbdQfBeD2I//+8rmmkqVtELxxGx4eRZ1S
	 bGM7mbyfqMVFY+rK5OoEeB1noMffrY1GqXNNiJ/nWZ/IAeW15RvmEo9ZfoLgjArR9P
	 6AxnT+vLghjY8KPpYIrkous8+iW7t+n65fy1QGQhWfJOvncJ8c2tanyM/mK/8d/vyq
	 L01nPn5aYFnKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8D3CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011141368.2794.16866205332896318857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00568e0bf2d4451cb7357f749c0dfa4304b9e8b2553b46988ef7e523e4183c5c
Date: Sat, 30 May 2026 03:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780111413
