Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3963842AA6
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731508554; cv=none; b=ukuEE1uL7inlJM2++jdJuL2DNNcteT+ZXS1BQW01RetBDfzKh39IfnmPn3/ZnEUo1Q+TFm14fAt+0jwzZcow3wmGSKxPioPjT2sI7wc9h7WSzmzBVn1RIYmOF6+thKFIyJzxLz3Pz4FHRqDAF0cTsX2W6wdxZAwBhaLPznee3T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731508554; c=relaxed/simple;
	bh=5lN96tvMM2EZ08+c8N7L9BxkMSCGc2fGN4kuy4ptUUk=;
	h=To:Subject:From:Message-Id:Date; b=Ame2ngytwVshUBfu1seK4dZ2y6z2nGFH7xP95zj78l3XdnHtnLLv5+5BXz7udLlYTAjhLQCZt9J57WRAlkFP7tMc8G0m/QSFAjgRd+n8Zzix45siJvr4W6XCjcGSf8HSHFvWABT68+ve70qLOpN/MEwTsBm2pEXsft4PbauALFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVDWgvJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVDWgvJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1414C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731508553;
	bh=5lN96tvMM2EZ08+c8N7L9BxkMSCGc2fGN4kuy4ptUUk=;
	h=To:Subject:From:Date:From;
	b=XVDWgvJrQT94bBnbbgHo6wTmcqxV8zPijunmGD4c+yIkM8vzOnhrl4I7lY79kRWlk
	 /2zAXoSS5JZA4w+g2hP84Z14ADcduL3Uu6iHTnX26A3SHmPhBzavnVXAAyrqPNoukB
	 rSAOfsHhfxJJdH22C/HhHtjGZWOAuq8OYkeoEyZHftOohH+yUEJw8oMi2WdfdQ0TA0
	 6QPMBmIJ5QiYC+mPRvp3pcypFQfacJoryV5d2rEFup7fSrtQqKiHmk+F1si5nQbuuL
	 bFygP602I32tI2wpYV9G7hr7wvYTWYfzk2FPAUrRigEQQDjgjlvqV2RkWRTC3ct7Ph
	 6v6Hkn+W6WNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D506D462B2
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173150855363.21825.8499069550913660719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8342385b77f10ba3a39fecbc25737420a92c23b43e4608d87d4020bf678bdb4f
Date: Wed, 13 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731508553
