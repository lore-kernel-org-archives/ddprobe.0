Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30103359FBC
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987434; cv=none; b=RedVW/uYsebY6Q2hbkBCjRhT8RtBOJcxHlhUxlSxPtk4rfTg5r6kk6NyG80Bd6huVo+kV1WzaGYzXAHdRRY6wbAPTyeeMUgPk33rYDNjfCjjra9iXgo2Nm65awpb6jwBWerFecw0zh3EpetB1S/WL9jfyudWb27pM7qUqsr0z+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987434; c=relaxed/simple;
	bh=mqIl2K6QZW2Z8zlbkL0PdisL2WhJfi/L0APV+XHcpjw=;
	h=To:Subject:From:Message-Id:Date; b=ToipPpHZLDe2JIuuFv/gPfhswuZ5XrE0iqgl22bqiywiR0dHdXI8TZoccYbPMwGB+C5K5fXIMk8sAoXUKnGLuIA0QRx8u07mNuDJ4hjsIUQClcecrfndwEOBL1mlMYAUTSQNJe022oYcYKUgehRkemBhsShkvBvp+VQi88juq3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGvXMgUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGvXMgUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF46AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765987433;
	bh=mqIl2K6QZW2Z8zlbkL0PdisL2WhJfi/L0APV+XHcpjw=;
	h=To:Subject:From:Date:From;
	b=GGvXMgUj8H3eaSn3ohzT7hTrPtIO32nbfZ+QfOJBGI4hufy4SYhn8t2wzhh/vQDHh
	 su1XbGzpes6L4ZCqRNVU67REvhHHgjYsaUgDPNauU+M+Qr/KZQQldp69eumoRLts9/
	 oZpgnq4cOO7WtSVw15m0UZUz9hy5qDtS6I1q/cxzMJziWYI4WtPaMnbTA7dRMZFroV
	 Sk5sLLVBtGnGTjfqDJMabcqnSujZgioKFqT2xYfMvcmx+57SvTlKNgLiNfyIslx9OO
	 hNOLMTh6BVwQ/wkG/MvvYX5yTnpVqSrGe5Jh+BY7vnYjymQWIlKn+QCfS/37yxdwZ1
	 Bm50DPnX0mxiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D903D65C70
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598743363.17082.6880548630351002741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2517c78980d611c3b81dd2413f03a8f4b2f25b7e7f1ac6a4eaa1cc664f08a1e1
Date: Wed, 17 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765987433
