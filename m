Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A502AD0C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766901234; cv=none; b=G3l+2uKyGTZdLMQVlHsK2LpJSyJxJ8YSUK3IGV0z44TT2kSp+4RuJFhDDaOzgOG5jc1BwKaBqpW/CbsMLaZSMv6CW8nCCneMA/Ds9xu0EVK5kfLVs4Im/vhs0b/3dJmyHRCl/oQOmdlg1R2UytaJT44ZIbt6q30GCNHo8zVVrSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766901234; c=relaxed/simple;
	bh=eYxlxqFe9AcN5maYTuldlQUwpTgY5f/KxmYAHg0wlQk=;
	h=To:Subject:From:Message-Id:Date; b=aGRWfR0/pdRB0x0QSQCq7IIGNs9CGHYkZCc/fuib0JWNdaXDsJpCDycxJIkV+AkwOnsbAxO6L7ZxKPLptD6pj4vuxrFpHJw5Zohz3Cfr+PjsA4iLxS1EhjAor8Aw3Osd5QD/1JDgQVD8jfIUL0d/wdru9FHlWFpJbU0LzIr7hzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz0niysF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz0niysF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B20C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766901233;
	bh=eYxlxqFe9AcN5maYTuldlQUwpTgY5f/KxmYAHg0wlQk=;
	h=To:Subject:From:Date:From;
	b=pz0niysF/W/1SnNLFQtki5BPkUIaB+w6LSxwGyC6AWG8C5UrM8SR1U7vwccipPNSl
	 Lw9cA+1Qatqt/0zpFc9O7mx11jY2KRZ1eM7zUpTmqjAgAh3XhLCnlq/czoEe7dAk6u
	 GFz1vYpMxQFUbfft7gBckXZZ7oK31s1Irmksv/3/W90kkuMaCCXTmGZzAMLNP4FzDe
	 gxugSONCSi9N6XEufRqepVrlj8+hzvcbNqyWSuBmvaqSNzvfdCWqSj01h1LTU0zhYG
	 HuGQ8u8ijqOBCpbx51Ea9S10LyKZlBlxKgve9uK4Mzq1nSU8llPMO63mRKaKkBgVHA
	 2GESrCFBlTVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D76E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690123364.25698.14843411606142204630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f148ffc96fbb0943a0752da78db8803ca2edce33aac8a3f293e19c5baf4d170b
Date: Sun, 28 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766901233
