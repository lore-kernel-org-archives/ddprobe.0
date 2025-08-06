Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC8619258E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754482194; cv=none; b=Shq7KIOlpc4MdUkgmiM/y5ensaGT4194mCEZCJyGQvrPE5OdBvSCWI3CmBtKKUVmUnUs1Q3w72iYzpUYDZSYlmNx5+Tbc31/ljXGXYmbrJIm83IpQboNQDuIAidPZbn1oR+lDBsEOVWaHY3fc50FjDyN4XGZWmswKgoUJL34jY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754482194; c=relaxed/simple;
	bh=lbaD/gEuMox/S8joFXL2YgtJRMzqJm+sJ/qkys5iXMs=;
	h=To:Subject:From:Message-Id:Date; b=oP2lfFAgXNVCogfPT9xGaUVLp4YVnLoU+aS+9gNgc8/zS+6i9mNpXRLIotWgO+NP6CmXi9VHXZAgMomvf9q9sTmRh0xBK9HJVi97uDJz/v/PoOYMaRBXaoiaS3v37chOKtLdnQNkuoABe+Swzx9v37VnMF6HyBcNCZDugS0aPZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/N+Gsb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/N+Gsb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754482193;
	bh=lbaD/gEuMox/S8joFXL2YgtJRMzqJm+sJ/qkys5iXMs=;
	h=To:Subject:From:Date:From;
	b=o/N+Gsb/31GE2m73rGiihY1nleIB9IqNUvDvnFsEQnD5jpu1Vt5gVMwFBxl/7h+Tl
	 g9ASe7e+5u6T4XTiFYBk22zUZtgZ2knPf5WPBt3ogautQ123Az82o94bHPNhCkjDJ0
	 4y1LrwHmleeDLXtbO2wNrDSFTFwidDMoPGHALLmEfRIRbwsuSN5m2V8mEpO0KslfXh
	 YuMGK+UHaOm7pkDyQUg2DYzBYt/Oqc/EsTDq68SSblwzkFjVLBNv9HiP8q/p7MRSe8
	 rtQ0DNF6YvL8uV6GPA5pScTMutBX2/xPkwPPgGc1cNm3+cdlpHMkQQAjXYa4ibvbEg
	 2cKbK1Qm8Xj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448219357.30677.16524961292004514518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4ec4c8574b487ac559a699ff82e37a4817770dff2809c456296fcf6479b5a9
Date: Wed, 06 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754482193
