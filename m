Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C13724E4A1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765107174; cv=none; b=ghh0yiffUz370lqed6GTcDSKiO5mc5EUaHk+DBSQkeBn96C3WDoRVX9V7deboURP97Kb/DMrTs3w8WhB+adHWLlJc+dKTn1B5OLhFEOO4o4ipNl6MHKQVJarADTMzNFcpoS7Rikv49yPMSAy3UX0hqftJRgGUKpakheGCjRZrMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765107174; c=relaxed/simple;
	bh=ZksVF7P7U8iswOh6eo73uIO6Ye+V2eLCrSxRlA5APIo=;
	h=To:Subject:From:Message-Id:Date; b=PEn9A+0pYtX8ovASjxT2CHYHBQjDmLTAjZ6zrzbUnq9H/qoXlaQeDZtJDJFEm9S3VyZzXlDdHFDhs3SMntBhPpJC3ttCsig4aRvl7WnARsACd3p1dEYZolYhRMhIouO6m2C0SR0KzE9j2gt/J99ifSIp2YmhGjDVqcDrbmzdMVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCpg7i1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCpg7i1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6791C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765107173;
	bh=ZksVF7P7U8iswOh6eo73uIO6Ye+V2eLCrSxRlA5APIo=;
	h=To:Subject:From:Date:From;
	b=FCpg7i1sQmXwrrBhDwGK+L97WutrW3vwJmdWsReQR1mBySGmkAH3i3zsZhqxddVd2
	 hONul2EUDp3nWJ9YUQvNQeCKgiiH5Y2Txnd0QQgv4uxqTvi2N45/OyIQomHR1LDXM0
	 VYJOIawZmWgKVMCGaKl1tCVqKWEo6SjQWl29kRDmMWpu1rKvKQrPanAC6tI6QMLGno
	 k4Esulxd/bPiVSJ9vR4t/4Ni3ygJWaPoi8ZBVM+0YlII4nibcBjsjtTT3gY2fLbwiI
	 SVsWb2TliYTADOgVRpEkTRHP5KQ4Qv32WbwESaH9uaTJUcFqWF6eCLgISfxyycwZ37
	 MoaRv/hVwFTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940FFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510717358.25855.16334771012915842748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a669a4f3da19831cb522e8b73e3ec7e702231ab0ed0112d1d255c6134cb7b7e3
Date: Sun, 07 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765107173
