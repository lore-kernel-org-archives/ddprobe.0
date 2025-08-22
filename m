Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477FF1FF7D7
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755886794; cv=none; b=P+mLQegy36GaQenS/tlIAwi5UFT1+hzpivF2jWaW9xvxUCNY86kbmbzwPFGTjzRuxpK2IIFFyuMxsj7EDLFndMbKbXbjdNqYqK66fJvnr3oiG0GplRw1oxnAgkwxHH6D5hgqTOulRRiLosydGwherI0KqEHKftGFp44BhmA1YYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755886794; c=relaxed/simple;
	bh=LOdFatn4/sMEMsY3VZvbub2c45uE6UbKWPKu48AEXOk=;
	h=To:Subject:From:Message-Id:Date; b=MDDbXitBMZm0ZqC9sQOo4sFuuk91TzZcMVHxmEyy2shczgyZeYi5odsS1b8xS+bG8l9BIFSouCMZZsOLA0dwyDTjfZGelDA/la9PSdNkNUWer2WF9xHLZLMWjC4MPLlhaggTZuIVg07xDZKoyQuH4MnAeccEOvJls5nuwLreqDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emlO1AYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emlO1AYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C3C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755886793;
	bh=LOdFatn4/sMEMsY3VZvbub2c45uE6UbKWPKu48AEXOk=;
	h=To:Subject:From:Date:From;
	b=emlO1AYEwLWB1/p4ETOsHzeI9iKoHzN1NDIccrS787ZhkPT/Mk9je2j43rfz5RCS0
	 uLJT0/MiYzbhZ3ursfiomsXkHfmlaHuDA1Z6PizcpwQm56zNbzMrOqIKOnisNCdMrt
	 K27CvkEVd86XtYhbx9p1bgHy+JjKPIk51MDli34pvknSXTgOMNkWvrQBX2iPnkPtRv
	 m51fpSO+8vjLUMajTRCsc/KEVOgUOJo4s/YIlrHwaG4C4GRD1pYuwLKmT7ZFSN4cAM
	 JXHN0NmNq1oJFjRproO13dkuYdhSj9RkZ0/1BX/Emlsr/4P0+aaqWwc87abDgQlQG8
	 YvqZiYlHp9mIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E6CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588679357.29922.16607157529331643280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8986b051971cfd20e72b943bbf3bc90c42a411d51c0e2253272f69e69532483
Date: Fri, 22 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755886793
