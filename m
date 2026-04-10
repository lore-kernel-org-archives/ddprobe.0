Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5E233A6F2
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775861854; cv=none; b=E9JBV/LDC0GgwYBHINf0JDlsc6+QPKTnSWP19BA+YaIHB5copG6NNPBMQKGTN9ihxiL3LW6dKO04lCEjLIiIyBNm3bZBiPIzEWWbr3Zx3/qMqw6WLVQjGAwBp+gj3qW36yHaIY9hx64d6IN0UnNZDEyKfXga/9yQb0HcskN30s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775861854; c=relaxed/simple;
	bh=2iBJOIJi5fjDIObKidMygC61NAwHAEe1PUlM/TMWg/4=;
	h=To:Subject:From:Message-Id:Date; b=o9oquDAXCNmtEd5gt/7t7/jJizq3dFK0XJB2wVWOkF72YjBocGSWT3at8JZM1KOJk3ZtmzD1BRGCd5qVn6u9o+9Rw+/sMdDzxojwC2kz5ouiSnytknH3D2o23rw1AqW358rD4V+dI6dRH6/dAB9UgQpg3b4FCbyMo1PhRwR37O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSUL1MSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSUL1MSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B888BC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775861853;
	bh=2iBJOIJi5fjDIObKidMygC61NAwHAEe1PUlM/TMWg/4=;
	h=To:Subject:From:Date:From;
	b=LSUL1MSs/RlqihIZh8gBEdZwsQiPHbW0d7oAhkW4dU5yABXIJbfgrG7bpq6Ae+KUz
	 MjrtU8Y4qak0yvakH0Ie6oSpZFj7aYi1CU3LF0R/uMM29OTWSrWTQDl4mhizxknDXM
	 +4uI2MSP10u+wavnkhgWdrHQlVVZUvViHz+CWsnkJFYEVMKR4R368uFmZ8fyXuJi14
	 Kto2exTFsft8YrJ2Gr3r8qcCAA9hgmUzMQL32lwZq6mJ/wEvLr+Ger8L/1tQa2lB75
	 R6+UrKxqYH6k3Z8DangOPVQIZuV/TmatihiNOONo8tDKM+e22c2vR/OJzS/q8C0kxX
	 ZgNguyPgj5c1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80DF45A12
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586185368.6456.11745380221119300646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a262f4c97b695ea7dec2f13ce2c8d15f0043298af779c84068ce7bc6c6af5400
Date: Fri, 10 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775861853
