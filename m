Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E90384CCD
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785762635; cv=none; b=tNmMZFTw+g6GISSzQzRrjgExH5oky+znaNmVouuqvaTYj68SgXFMUKqHHeH95K5B439euzJObY7DzhjkMEuhiGxeBt8wQXgrUPcYBiBSoObt2HWjvyarbsjlpL9cMUHFPN+H9k3gCmAdXIBY/+7E9MJfIv5ECefBIe6Uim6P70I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785762635; c=relaxed/simple;
	bh=PkeIXzzvwYMYW/Uh3qzf65sVlrSKU9c+Uz3CWsLPDwM=;
	h=To:Subject:From:Message-Id:Date; b=DLqB+c05pfutsbqFcgq7VuZ6C5QeQr1Mv79DLfQDaktFBtQiHPjZtUgM2d8KWkl0vWErCfAMDJ8nJlIRqKvBc9b7pLDoWqRbSnl8G4/+fKm3a4F0qLD0i8E9kmzGtnEidHG8F3iE6vWFmyUCukNIuoIWnPkD+udkTMkUhKL4Urk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERKLTpbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERKLTpbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA89EC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785762633;
	bh=PkeIXzzvwYMYW/Uh3qzf65sVlrSKU9c+Uz3CWsLPDwM=;
	h=To:Subject:From:Date:From;
	b=ERKLTpbKbrhWIiAh7KZBUUf5ZR3CaVr1b0JiuCTf0c2YTo3vpeUMvA0xfcVZH++u0
	 3qo08mv3rrey3fSiVwQcQwGGeN7Se5IqSzbAsHdIGDcTV9zr8nfhj8E9i8Av+dZ/45
	 1DX219PpjCVk65pQs0VRHbrL7GVicdp9ms4aXAWBeoQ0ZTjZ9TjVOhDKwyLrozKmiG
	 ZYA6sWX1W42uV2Sqgx7rlsVTNwN4DA+uyT0a9b1kwNPRHK1t9+KrXuWwkh45dex1Pp
	 e9gzK1vCef6ZO7gdwZwZi7XRwYzkUf1AjoFl0OR3gdc+LBQuZRygjHu8+6be2qghc3
	 rJ6GgJhnGkEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D64C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576263372.3588.17320071776001255250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299887033249d540f65c6650138df05e2acb3ce166989ea1b10ff3e194890926
Date: Mon, 03 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785762633
