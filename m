Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1942FFDCC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775488534; cv=none; b=jMPA8448eGYsifXEmHZqjPiwEXhPqYKjAtReulr4IMRGrXXrSiBF8EQ0v1gQRXDOuclSru8F2oyBssBd5E9WFSpiu+oDuXw1yainivhQUyPDDXFtQt+3XpnFDZXQBNyJA+SEDXzzatBUkJ1wIMBVBnXt4+i+Xls4zsP9KCN8os0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775488534; c=relaxed/simple;
	bh=0OyJtww4YzY+zHL8xjZ0zyfXAuixbPghD5cqOW41A+A=;
	h=To:Subject:From:Message-Id:Date; b=EFWnRFrhjy1a+0oExzWd3OGcoUXu2Np5/c/Gwz42WvEzPr8FxU6vNCo/1Oj9ECyUoocmkLmp+yI1gbblsG75sFxLS6FMrvbEocKxIhmYeTuiAoYM+byhhiEtIvj5XOWR2pQTF2cpwM6vOw8ykDKae0rsX2Lpoqs1zMw0xx9TcQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSLl6ngS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSLl6ngS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0BCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775488533;
	bh=0OyJtww4YzY+zHL8xjZ0zyfXAuixbPghD5cqOW41A+A=;
	h=To:Subject:From:Date:From;
	b=mSLl6ngS+w6fNf9P/egVMK9qd2H2rhTiQfBEgbVje03Y0Fw8lcLT/33t1xgKEXvaq
	 qq3yfDMXbZaatDQM2wLRQbubsY49q3B7reS+udG+wok0gya/rJrpeeE6ahd5HxnNtj
	 vEZlN2028DXwL6XisW28PkfDJYx0tMMzuJczt+VgjyLBBMGsLxS2NQ+IGzOSxBnwrz
	 V5oiREGIgMb+j0CcjzNrMhcis+BljiUcFqNhm1lnPyQclc6nBGPPe9ikLfnbxEuI84
	 ay8F0Vecv39hXZyk5wJuDkuhq8xzIG9XVkf1+v4tqLHQYR6qOs2BNmeBejL3aZiUM4
	 sgZaPoyh8KLIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD9F46C44
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548853369.13255.8523746547580337886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443a20c689869cc37bf7e106d28fe5d445f5b478c509248a47ce76ce32d3bff9
Date: Mon, 06 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775488533
