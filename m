Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A95351C0B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775815054; cv=none; b=YRnD6RR3JTfbDAnUQ5JDz+Lxs1ORPonxgQ47x6bfKIYlhK+g05mGSzTprufKMGeUg9F0MtEywoF0aIbttVX2bP15vhsUP3pibhm0WU23alOVm5G6oqTmgMYt4aoVc03nuc+WVzhe0kinY4qbeOJ4Nl1X1ccPwn2SfaHHv+FEHSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775815054; c=relaxed/simple;
	bh=XMdApdNySfkeq6x19i1NCeBKoXeePCEdcWKhtgvVqvE=;
	h=To:Subject:From:Message-Id:Date; b=XC7LtylomvxI0mHiKFAM5yQExj1ZqyTdmtIljyI21q3yq16kb22IpK7GexkT4a9rXXma2/Eyc3PlJBQ4UvLALKOOZgvL7nD9lkjyTMwuy6WjZegLBRHYOay/mxrJwq5PodBIc45wlkiUz2mRPuz2WVV7jazYpIrqMMNP8ZUXI04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on/pm5Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on/pm5Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7726C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775815053;
	bh=XMdApdNySfkeq6x19i1NCeBKoXeePCEdcWKhtgvVqvE=;
	h=To:Subject:From:Date:From;
	b=on/pm5BbYqQUHMwMNPTkZpl26JbrPsipAb1gGUc3kVAlmoCRRLolr1HTCMbR3Ttn0
	 yN0gTXnefNl5fNXFZjKo31Fv8CIsDmBcUQtwMZ8CNcFszdSymtptaHQpOowZiLDdKK
	 udBLIyeZtJneShw85f6j8BdF++zcklbClE3FMWNqq1j3DIA+FSkPPutHKST9c3mfAU
	 o2dg7hzcW9x7TXTbcYqxZez3e8qwnfEX6ZVeyOkKLOa4hkZho0wOYUkzWnWs1OuU4G
	 D7QKW/RF9k1vgulUCs3YVt3FTFOCD4y/fWPHoalh0T6Tht1pV87m7kVPPGZ21pBJWF
	 pT6LX8AnZRvUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B75E99069
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581505368.25286.13676245941188165973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c141ad95f86a64079b224f40656a2ebcae28edc69d9f38c5d9ad9af6d99afa
Date: Fri, 10 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775815053
