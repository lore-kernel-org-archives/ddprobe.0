Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3627A1B86CF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721957154; cv=none; b=bl0NhvNkRJiof3bffGiV5gpAaDbDjpjPKqeVcfV6cCmDICyB3Lb43gLF+NWIYyHdYYIbeGtVC+Afst9wzLubHMXaQQwyS7pr3LODL+O7b9VUKaHTwA+3E8RtHDsm7YphiRDRfIw8tV/xC/OuyZOTWQvB5kpbn39pxmMA4CW8ZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721957154; c=relaxed/simple;
	bh=JdAN2Gg4uI1XsAadKT1iQYYGXbRJMo51bIxW+LtC+x0=;
	h=To:Subject:From:Message-Id:Date; b=NKukg1dC+fVqU9wqjJJ9aru3/7vC39slUAqSFjFYfpg0GX/ZfBbF7i2raCoYfXDzFKun5Xi3PHHfcx1l8uHGoDKaoinOg5WvnZWdwQK4grAJPNn13jiHTILxRJOtHn6jhgANmZ0EiN6ldJdshgdk0pDTquEV3Pr+KYHwvv2O33Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMI0VwyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMI0VwyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7663C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721957153;
	bh=JdAN2Gg4uI1XsAadKT1iQYYGXbRJMo51bIxW+LtC+x0=;
	h=To:Subject:From:Date:From;
	b=cMI0VwyFpxlLZC5JgousCNra7C27rJU34fkpYC5vEgNbH+Z/mkBxx7TM6q3BlP9Qu
	 dWaLJam4jfwXPvNZeLX4QQ5r8Gc1NeTurEYdJ1r94sIUKzI+RG3+s3ADoGBLIZ4hNw
	 Zw/g3G99nr7VBS3pEbSuhvxYuOoPq7t029dpn6wLqkh0VlpXlfvUYwlVgWP9qya02D
	 ZSMm0n3I6K12i7RY2ui4NoDjIBtMU66XwJebLMNKsKhmv9EZ5v8FTh9OrfPqxkOtZw
	 dDDeOVeBBVj3VHZFhh4ciYGZVY7gtY6ArIr/SDdZXGSX2Gg3G5Yojxp4/Qs6vJQK/n
	 BqdE3vviMEVRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FFCC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195715365.15675.5003848472501228227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04de041f14ef93d07f2bb90ba80636d4304c02cdb0049192669ad2546e8402d
Date: Fri, 26 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721957153
