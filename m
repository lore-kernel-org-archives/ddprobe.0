Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4B7221286
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755424194; cv=none; b=OMumil0SaR2OLwPYhDYSlhlm/NduEATJgnmnIfZ9PbOicLY9CaINkSTVohxBtKquQPw0HIU5ij4LJazFhYui3Q+umUNseFJNFhDIHg3+DGZGrZfEaAM1ep3BxWYC8ti0JSyYDnvv+S1J04mOfrGIHnG5hmyVaCmKzWdZtjV6fYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755424194; c=relaxed/simple;
	bh=rgYxEqRsdDXFriFMogiCL3nRuuB/ngC2ECbIKta7lu0=;
	h=To:Subject:From:Message-Id:Date; b=HpsFjO5E6leA69TNmZvWmpQQNmPktBUHM3wch+xgiTahAfGYxYCuXu1FZCuderZIg/S20yBySwDCAo1zH0Ww5J7g/ZESrtHjG1ttt3kGQSCyOOdDNqRT4RGTxkaK2vIdVp8YTOOaBwv2cLJY+uZLQOc9DoVJyHkVogAdVWwqvRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1l42o6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1l42o6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755424193;
	bh=rgYxEqRsdDXFriFMogiCL3nRuuB/ngC2ECbIKta7lu0=;
	h=To:Subject:From:Date:From;
	b=I1l42o6Pvg9Zw1/G4OLjhvwGvPEMbpcOfU89wn5hEVtzjiBwoN/mQlgT53JN+JG0V
	 Gl4p6gDCRRn2t2P7njeLMeBcMHhYZDrOVbjTH8Zo7JYqfx3tdlvcHidc7SYFSBOg9J
	 cx9UY5i76PGy6e2w8HXazD5u3y8YJv7EYG8APIFblq3yd6jxG98upKkqxJk1zQ6g7l
	 kldi2+A4qxlRO7lf37AbWWjTaI5QMrY+DGVHH590kGij9oTFxupn+TbB6uZ5dAjaY2
	 2EMnKN271bCjaLejX4tSEdN7Tzy4YboENS0CXxrygNhjA5267K4YrTFVqThgFes3Lj
	 vdMBjDxl4YwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6FCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542419357.15531.8934521792168683894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fe345ecb0016f69b06ee2cb408f954958c82ac6da0ba17453f79fb070aaa38
Date: Sun, 17 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755424193
