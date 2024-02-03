Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C771D5D489
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706954897; cv=none; b=kVdnytYfbtBx4p2gjgIolCP6wOh8Jj70vXq9gLvwoWJ9rv+r2B3mUOIZWj8BuVwdfsO8ZQ3b4PS0QVEhtta2j24A/cKH9POOhoxQ1gADLJUJ2TJSJtDOw+5+hEKlLdDytxmwnbsi4mJ1YpNAFQ0+hAdqB6QWwcyFxEY0c4GJ9hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706954897; c=relaxed/simple;
	bh=GJeUpKxtmi2+d1FlszfY/o4WUXMgzk1DM3nBW2XoCTk=;
	h=To:Subject:From:Message-Id:Date; b=KyHfVb8V8hpgn1mrvNgrOVWqYazr8c/chT/7Svzg5XvMwc/jARHd5VbZ1aehw5BMR36ByPMjw3nMk0stktX7l9RHgUGCosqU+2pd88ZJ5vnLhcPjmBpMkCol1fkftpq2Ulavw5bY5ow6ZbIyNPTWDC6g1MbyonyvgbifESedOwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUauacFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUauacFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC82C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706954896;
	bh=GJeUpKxtmi2+d1FlszfY/o4WUXMgzk1DM3nBW2XoCTk=;
	h=To:Subject:From:Date:From;
	b=lUauacFlKoivyXrnrhIAfh4MLjZQIAX+MVXKVO0EI+4YZ1nvBFxxVj0RCiynx/AM0
	 z9klWShGaCjKPOklsDOH6o+YwhMx2BX79MpM+WSBuqvt/6w/+kQ8X+spziQp9qOe+d
	 G1mYBw2O7ft9ZVECSxfG/FhlCc2Ym0BR+n0q1VOAR7sMjA7eNy39OiJP1gBFPNUQBe
	 ijAT1NaEvaS7BH88vyTFdswcrri1Lv04Ce9+FQRJBnQp0liNUAwBx1ajQDkwFEDxFl
	 zzNabvGLUuPp9KbdAP250oB7ocrDa5aEVCKwIeQ34mmCmyoWYH/rGHUuAgnaSIbBXm
	 GS5GpDth6BBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F92C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695489638.16933.14792444002294745558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb4a91b78b234953309f426078735dfa640cb9bb2bd2f318273a0308b53fb3f
Date: Sat, 03 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706954896
