Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FA51D88DD
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733093754; cv=none; b=V1r1pY7WDm1mrApsgLRKewcWyMUNir2SOoa1XWLb2O+Pamydu2WKemMhtj0o7dWtT0oVY/7VIphgNbdlFaY0ykBT5j+BkNlzXicM5KWrzCxaR2CFopKhutIFv8cKNjPKLH7qBZPhUUJwk13thWwEtE78Lh2bIM14GJwyX4tc2Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733093754; c=relaxed/simple;
	bh=J8DJh/99SyrLUz56XptB8vNHgf3804kRTj/jKule39A=;
	h=To:Subject:From:Message-Id:Date; b=jSwyRTfCk9Kk9cp50iLMHf7DDINrlyWrwCLDeyql+tT6yjd+44jUUgFZGV2cX+s0M1izc64L5BjbQOHXQ9VKomLICGhOlsgBRq4hVmhjaDuMEpxSLkt9F9UN8mn5tJuNjWRwAzI+5aiKGUWrINaXOzTtJcnv/6DgXVVv1O9UYUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odfI2gv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odfI2gv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0438C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733093753;
	bh=J8DJh/99SyrLUz56XptB8vNHgf3804kRTj/jKule39A=;
	h=To:Subject:From:Date:From;
	b=odfI2gv07pxwGum4wsK2yrk586MNIiqU9HFiCKpolQ20nVAPQn38KW5UG7fOVKFh1
	 aMnkcUKvRN0TOLPTaPMzmSkorRS5GdQyJrp+2tPA9UJFh0QiDKoWFJnZeS4ta/E/fn
	 Jy8y9gbkOM/QgAm6t1aOXGVCynKzD4BWGBDtXkXsOpAxfPVG/8G68jFnSKIo7XZLhZ
	 uPCz6CKuyajkvwnPHFEcKdlRlJX1K4DJhNrhWbkieCJ4fxhR4NoYk0tFOUcAGudYab
	 nYSNDsYpmmeRD9uKLFOcesP/uklvzfcHubw/21o0CHj5mOlm3ARLtViRHbad6l/rSL
	 7LrI1ETzHhBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A49AD49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309375361.13121.16592913172466834429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c651740d45786132ba022ab466b6b32ee21ddb70a05508af5020523b88cadd7f
Date: Sun, 01 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733093753
