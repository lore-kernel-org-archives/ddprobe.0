Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F932ABC0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779999154; cv=none; b=Scz9kLCRMKRgcopXgdtQvSAFxlLlbPImufkW/BOILbehNLR28ZTAOdbXg0r8DHZMTpp4oKQpIMOBI+NNBX+GmqZcULliyW/lRd2xiY80hWQOuNaa7w2gzkwiLlxwfnE/JkT76D/4idJ7jeOLolc6Lr2k0S0dk3HXsPcPQsK1aKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779999154; c=relaxed/simple;
	bh=5GuxFOqW3w4B4mE9OAf5K7Lt1vLzqXxfAplzGEGHArg=;
	h=To:Subject:From:Message-Id:Date; b=FIfx02KrpWtblcAlC2o18fd0oeyicaj4TFsvdf/LObzDvOlzq45u2iGodO/orHk4KvY0YdEASVMR3m54XrfcRxtvgHPnsTxf36GrCVsDyPX15bsmk3X9fNx3k549OY9pOpFq6nz2GmzKMYFWQuOoVAvFxBIHSuVTTonvoOJFM0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBJ359Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBJ359Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF691C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779999153;
	bh=5GuxFOqW3w4B4mE9OAf5K7Lt1vLzqXxfAplzGEGHArg=;
	h=To:Subject:From:Date:From;
	b=kBJ359PsfR+COhAkvUrYSzLGulk/+dtL0rWXcjCE/58efHzDqQT/vkRfhUZAH2oFz
	 sCHQ75hKpECVun8i9bP0alUml7iZ8apIwcDbdIvQIkQhsXShdx+PJEMVKN6JhKPLDz
	 VBmmGFBvnl2sd0Q2nhN9NXYHdLCbLINyylV5fk2hstXlpV0EyTUl9mQR2Xb2ygSsdx
	 NSzx+0nUM1l8zfYNAnyJlyZvGWW9q96y30ii3zgk3askiXRotR21JtcnfV7YWe/Ngg
	 WErsB9jexreNNQupisP8kLUL24X8CXB3qOyuW7mjAV7IsuD5IO6WrirBkWtQZXZVng
	 AOKL+Lmb4ygqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54BBCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999915373.29116.16419520890618432262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31910d5ac47192655cbf621dc5c54d47ccbf38f373ecb5a71fab57592744721e
Date: Thu, 28 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779999153
