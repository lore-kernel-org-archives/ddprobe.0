Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA6346769
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787080834; cv=none; b=d+6jKOGxijtPwPM8lBfEzAx3ajDjudPfqvj2xzvgRKRuv2awKMD/fsWS7k0YbubBvqLN3mm73kkMhVazpxruUGIdT4Gz0mZwA9bUKk7k+VNrc/25cL+B83qKuaJUpImjw53CBjSwuWkHGiPYxcthjxVpPNERkPWYS1c4BG8y+yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787080834; c=relaxed/simple;
	bh=Df+7dux/UBOVymH3xr/s48528DScG8ecI8VoSWL3zg8=;
	h=To:Subject:From:Message-Id:Date; b=MPlKxwhbl69sVMJS8L9tTRDHfOItyBMNQOf0JsaiTEfmLs+eEW/QFoX4wnVjNPBBwoKqjIPPVk3J0uhCPMWykE9ScwDKY5zizpmJt8aW8KKF7478bmWXBnEkftO97EQ584kKp1Lz794Q0IokejOEGUqLGAtg+xlI7TCfOz/34qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1ag5KMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1ag5KMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C61C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787080833;
	bh=Df+7dux/UBOVymH3xr/s48528DScG8ecI8VoSWL3zg8=;
	h=To:Subject:From:Date:From;
	b=K1ag5KMr/ird5JG8Na6q2CWr78PR5kdQDaxSpez8woUwK919+ojXjt/S+ySKZl+no
	 ntuAz7V/4BYf9bdpQOW26fHue0dhHcsTek3VhhcO6zgZvddHU+4A3jTOVoySldss45
	 DohZyzSAD5QKGjsvcxLGdun5EfX8IFw38+xBhYq2w+wRpLDaTkTRWbaNQKsdm3uUDv
	 yGjr4MnjJXm1Oo9sy5lJv/6BORAUuiHiMr5E3VApXcHYJHjQRNC2hX36tC8BAZNa4V
	 66yOl1jW/ziNa1zQeVrS8GE9qQSq5KOYVrOmZkGuZ8eJgRxE6bAze4OEgec0l+szVZ
	 431CftYHQppmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7DFC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708083369.3752.17897003878157009045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c0c078c99710a4757506713ffb90b01499d987368836f145a0e5366243e821
Date: Tue, 18 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787080833
