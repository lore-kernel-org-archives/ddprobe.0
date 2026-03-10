Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711928468E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773120294; cv=none; b=eH/zNPRIwCEuF4m94QygqByo87a4MR8TgBXYHXs/jBe4tj961vmji4LJ5aG3FTITcvsKPwrBVepbzLiCHrQzj2v/Xf9S/S4QLlC3zcp7kFB1YjEqyx1fDCY1Tu/HyajoNCrBZiA6zR73W54PHeJys0BWtVa+RsQ8Aaq2uMJt29k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773120294; c=relaxed/simple;
	bh=bJiNxCd4++6wwbLh++Y+0UvD1jiqbcj9tf9BaKeiR+U=;
	h=To:Subject:From:Message-Id:Date; b=k/+ls+sJkN7mzngA5yb/b9vyGlSVaqeQD6X+UtPDXRAlbHXcOWD3CJAPc1X4voJBXoSa09bsXLLrUHcAsNQn601W94oixf+jJ0LQRzjhpDwNRrHa5UPqQ27JYtUrcqVLG7AhQ9iOsJF+6iGOCEzaoZtFrwYwt3RG856nK00ArtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQlcNXnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQlcNXnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B254AC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773120293;
	bh=bJiNxCd4++6wwbLh++Y+0UvD1jiqbcj9tf9BaKeiR+U=;
	h=To:Subject:From:Date:From;
	b=rQlcNXnuTCWuQMSxFxRnG3oVLsrOjW/27PhfmOdh45+LLZDYOJP72RJbV7oHk6ZZF
	 HdV6a4Lfwo/htcRX2Z5d7pN9PMUmuvVjKnpb3oHs2d0/FOLxlpS3TxHSn/t2HHKver
	 4NuI/ephwV2FswU+V1dQyYytJP9dC/wAPY7Gh2pk9BtTEn7c8UNX4awX5u1Jvgt+/u
	 Gn+eOKDNLig5+6R41mQP5/dQtU2wUijSBpHncM9XVHZe5SHNHRYkFqSXD4AdNcE+5P
	 CGN17HaNXITd9LQctEUHDgWnJlywyGIuEephLi1+2m1fKCPEfE2AfRy9LrUvhaF/cm
	 rrpm7ImRepniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D7DFCC9C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312029363.18073.13798805085520980975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f8f0cd3e9a64054d92e1eb1f57bb31f5acba2161e3178d692dedcc62d51767
Date: Tue, 10 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773120293
