Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192DB1D0E04
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732028754; cv=none; b=WPgan70X6i3+6UDoKSFEMzMGPVyPWVdtBgHZnJfQMtDGPmomaxMzUAngWz+tvhZgsidkz18hGQw3VcHcXkWQhdxW39fXRbV7tad82Oqz7gNANusWUfzqluO/PwDdAFUHJqc5+QJ8MvJQDN/PwU5wmeLTi3+85fbSORNixTSWgkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732028754; c=relaxed/simple;
	bh=codhdrEXKoEXqKn+1P5O9x66LzozWq/Jh1gXqTQyr9U=;
	h=To:Subject:From:Message-Id:Date; b=qsdDCg+LEnShBtD3rHngH/55AdNyciG9w5wanqo6Hvopv5sFRInKa2A71E5yYGH2ClkjCSTeJXYm44ArLb+pi9JE2/07KnV/e+AluNgZAkh777+XMducWJkmioUTPwBG4F3EpjP6gA70WOmSkspmHspsDRYn0NN4n6r6CA5pvRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXqN7Pe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXqN7Pe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF7CC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732028753;
	bh=codhdrEXKoEXqKn+1P5O9x66LzozWq/Jh1gXqTQyr9U=;
	h=To:Subject:From:Date:From;
	b=cXqN7Pe4Mfo2YuNLA1CkzE5BbMfPl9g5bRCaEwKMsgdZh3dkPxDieCN6tmPdhs3IC
	 KZ9g7NIz3OlIydBd77othxERhrjvY4Op+vspE4zV+T8+C0CVGevriUqUc7XPLiEN2C
	 X5NBAgsjDyGQAtTskKaXY04ZrelBcrPJzBMb6326K9vS3xgnkbLwkTZmBuysS26Nft
	 tKiavyCfYK24Lz+OAluaiGXPM4xEUhU+Tpvjgx9xDYghpY2RjuyokIitu6vD5nF1FL
	 AsJyjloOGlyIPwn29EtFVrKY4ZPpX9g0Abgj5vTqkuW/ZSLoOwo+wplvYrJGfZMa8y
	 vJtKrejkMEcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994BDD44162
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202875361.25308.142973285462061437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9891dc9d481531a69531e7027fa4676ed91e67f250b7cce5d354ec9a2e8cafa
Date: Tue, 19 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732028753
