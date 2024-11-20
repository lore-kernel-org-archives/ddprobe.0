Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBAC1E4A4
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732146953; cv=none; b=o4TCg2RCYvt5oybit3A/V9yiLcU0by8P+AIqlEGynI6sXAi18bPfp3T6WwSeLGFn9TYVzscE5Kog6RIg68ObBFIaGO7/l1OYXhuzQ1k0ZyyZ7o8wa94Xn5azuyVXE+q2sBS74sex8pxL1Vqd2fnD6byYHn+vqChLjOpVwoIDWPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732146953; c=relaxed/simple;
	bh=nlHLvOJ8ZeQ2BbrW9tBH1P+pFpTNk45omq5CDyImAos=;
	h=To:Subject:From:Message-Id:Date; b=ky2fI7TULD1meM8R9IalkUNrd/VZmQtcKf1YXUnbipS2J0ZnFaldZNisAetHKBDfIsS1WhsQA2x/rQ6eUSRXPNb5slQYxaoEC8Dj/GAprqMZysa9OfIQzqAqYP8GEs0jS2tfPXx97SWPfMU5kobGnRbgbY2MKyDOiw8mOeOgIMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSEYS3MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSEYS3MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C9C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732146953;
	bh=nlHLvOJ8ZeQ2BbrW9tBH1P+pFpTNk45omq5CDyImAos=;
	h=To:Subject:From:Date:From;
	b=oSEYS3MNjZ0Ai6fsNeEBGfgYbFemi32PsdN6ArqRGMd7DHuVN+GEGPCLXQt72N4dw
	 7D9mpH++J5aKfwb8FArWYyInMIlTMApySbpjTf5+sjBkxFRFsEHYLavLWOO31sTHsn
	 77BqezpmzA81xCgp20eEdmFryVsQ3w49C3bWamRWAGKFvOP+X2psytc36tc5HrcP0b
	 WAv3ojIv8gRguoqaC7njz//o6x++ej1LXjGjkd8/R3i+vMAbuArknK7r605jIHPqoK
	 WCnNOyPv7TzYoicPyKOIcUJBb4L1j5MUjzmXA4OeEEDXr3mGlhEtDT5YW0A2VSP/ig
	 EmLH/LPgTo4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E46D743F5
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214695358.672.10521813686897843615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f729f363aaa9398e2e978e23d2a235ef38f5fd3b3f7cd3df38cf72cc2811b7
Date: Wed, 20 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732146953
