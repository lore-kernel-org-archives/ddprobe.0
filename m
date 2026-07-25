Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C883264CA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784956234; cv=none; b=nvTjjqf6VmlVk0ksd4KjWof1DEtKDqQTl7sn6fqJJSTUuWHBkTFSuNTWDTPyfqpBY/+YyoWFNo1z3bb32Zdaky7dCTlFuf1gP2guHDzOStJaCdxN6QRH6QNfktFzCwYAiz+Pqy7SbN7I4vQTQn2td2uUM9vLDqTUNwnltANRIgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784956234; c=relaxed/simple;
	bh=QGwZdjcrygPmQSbYNZ1hKEFMI+c79zELYNAIA9WbO6s=;
	h=To:Subject:From:Message-Id:Date; b=ICvmkWESVG0DJ8+MHriqJ4ug0cC2IZayo0aXmJ45TEjIoG2HXY2+l7Ge7092dqWexnBwBxTSNVjOTOKQOCfKk8cBa+MyKwgpWORLEEf+hChXNE0wDdzO+GcTrPGWszItX7CIZhLLmJtllpZGc3vpxWRoExMzoUsYT3SclluHaV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFofFjJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFofFjJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784956233;
	bh=QGwZdjcrygPmQSbYNZ1hKEFMI+c79zELYNAIA9WbO6s=;
	h=To:Subject:From:Date:From;
	b=eFofFjJCtKeU8kaQ6xaxQOZdICQqTcSrO2/Q6qBQ/L+KISqTEmCWuJqs+cuACiZsi
	 KNjM3i0mGbun4ZPzF71JCpwYjiaMwTfHItYlnJWglaKBShYi8sJV0CmaHnBQN1KfU6
	 KMc8P3SJXlmAGKwzZT6ZVujsIDAifZOX87y3xkdRv7mkaHacGQRW1fpi/soS95WlYW
	 mi5mTBpAXkom+LxZkAWd6IYEfgCFWjTK+/PcfH+66ncZ7tVOxlqvEWXdEAI58jlZeu
	 H+I0xfVlLbBNl2l5diTPXQ4RCC1fE0NUiClyefFDIVn2Sc96hdFC5OV36yYPfwzo0f
	 bqFcKZgupC/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC1C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495623368.28171.2799256730095667010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f8662b37d7cb211e12c79d9bbf5605b4af180832c3eb90a9ae0db0867224a1
Date: Sat, 25 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784956233
