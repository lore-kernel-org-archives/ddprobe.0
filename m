Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A985BA34
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719857723; cv=none; b=Cv5FCN9ZR6W7qzDyuCxB+AldLRXaPbEbViHL80JJrOYA1Wj+ckpmxcLNYZKZIDJ8Xh0cURKsMC8YP0qyxBxIQCM5fa4kZxY50nKBbFyis9zFUjpsPUTlRoTt7E9TuTUC+myol0Yp1svOXJQJIXPGD2eUbR+cm8YeekgLVP8V3YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719857723; c=relaxed/simple;
	bh=qQvejIGDLASsgCLdktpziTF8bxANQHKJYZj3rqFfBts=;
	h=To:Subject:From:Message-Id:Date; b=oSv5nLbigPZSBJSZPmIoGT76OdUh/3Z3tasP9Yn07A/9GRcYoV8lMdz9fEP0OMyfy+5D0a6NNbXFxa/XWF4zURV4hG3Jv6JEeT7OaenAwXZGbgOKqniz/LCBbeV+Ih6UKtiOaR4z9uPKtfYeOwOf+zPRkNbYKDY5QetsILItddQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZaUBH/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZaUBH/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DEDC32781
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719857722;
	bh=qQvejIGDLASsgCLdktpziTF8bxANQHKJYZj3rqFfBts=;
	h=To:Subject:From:Date:From;
	b=EZaUBH/LHh5AUjDBSaPFeYbbi87dTNOcnR0DuzfXBW3VwnZpL4QvN2WYCPR5fjkwu
	 M4u1Iuln5XSV//zjywfY4nXa8sDAeoZofaCuzUg+CBeOkBNX2r9lEdinimuginOUta
	 Q+eQPVAK7XMlGt2dddS4PSMDy6PUiihhsIBjKL9ei2gfZdPQrBSI32N9jqntXW+Kal
	 mxcSDxdJmdyE2sHACUNkE6bn/nCxMpg70pIxDIZ2t/n/STj2A+ghKlDxoQxT5EamB2
	 joS1gbILmOAwc/xbZvvG59SKT6lZeD6QTFMVMI5XZxE7D4t0r8ji9PhMpvP1fx9h7D
	 hSaqCyEIRe55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7069C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985772280.22613.2568690498239056628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d275002c634a1b3c06312148ce4c5128f6dd8acc0f9dd4a896cc7fab070263a
Date: Mon, 01 Jul 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719857722
