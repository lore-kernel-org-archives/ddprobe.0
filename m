Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A0334A767
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774392294; cv=none; b=fUToPSspinGvalVHaU4ZiI20gBRDJkYCszrAm5AzcTySXNSch4fuJjaWadw57QW/2CUL/q4RBn9Xf4YwvQmVZuDVZIunvLUf1522+ya6rHk8yfNgNa8ETHdHrQ1j+6oTL5tdJT5RIVwkNruniFfOu84Djg0Q08hovH1EN99B2LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774392294; c=relaxed/simple;
	bh=GyPh+BoJz8BoGSN8v5F66O0639hr7rSagdHh/vbNWfg=;
	h=To:Subject:From:Message-Id:Date; b=bitDB7KKb++KjXQ9FcEzU7q7Ihnc2YVYTUfn1foBo0wAU7z3GBiq7JG6wveFi2sF7SqJ2STZTvuIgeIE1JRPGHv3xAlObgPt6RW+AlGT53RkA1xDdRusBEicOvlv8rDlJ10ZWd8ZhqYrdK97T/jxN2kCPRaDJnv1vKW6jioLGh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRsADOjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRsADOjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6DFC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774392293;
	bh=GyPh+BoJz8BoGSN8v5F66O0639hr7rSagdHh/vbNWfg=;
	h=To:Subject:From:Date:From;
	b=uRsADOjO0cQ0pCjwgifxQLn8XP6ZEyUS64XXVOA5snJ9mbrQGV4eI4cdERRQbyUSx
	 DBMPdKHlr8Zw/WwfSOm9rs2HO1aBINp5d8nwJe54LzUs7ehi8LoEYpXxma852QcW5P
	 odiJ+C+vT639NU6OWJsGTNdZQEU4yw1p6haHe30Nx3S3zMYCk2cfsWppfQhPVuYhnX
	 +FNrpVGvL9lMwKJj0XgOU4q8gER3s3cZxfjKG3IR0eB0VIN3eXw0tf/H2sPREBPGQL
	 klv/sXDx1wutEJOzvha9FY6XPcnwab3a+nvF9fE9POpUxAitkQBKd9MausSiDOAYvE
	 tFVX4oEWZzbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945CAD58CC9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439229359.9876.11727106269067162876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585325313cac37d57e4a5f0d169d4daaa4b7c351a906919b5fd4a18745f4e9f2
Date: Tue, 24 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774392293
