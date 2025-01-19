Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4349129415
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737267954; cv=none; b=h4K193zryg5pEHC0ZDRnlyzyxMoy5UKv9Zqgo/cpcOb0MGfdV9aajwcjzX7nqabwx3AxXk9NmbXmT7EsfxGTc3xLLqel9aENaJB92h67OQq29ec7e9g8hG5Muqv7pJf90Mg0IPs15pSfpJ+sXpEsb4Si2E7Nj4MChCao9XHJDMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737267954; c=relaxed/simple;
	bh=+Pd4BKtCDs90wtoXTDqITn3ipLf6GQ1yu/aaNl+6Fzw=;
	h=To:Subject:From:Message-Id:Date; b=ZN3bihyMBCYXZbHvlBv1doRe7bHEmftNHG+uckiYINmpl6RL9fR/zoTeODepZKceTDjRtDi2QPDJVbN5Ngql6yV06CFPRtiwBuVfZ2JXRHygciVmBc4ql90CpYEDILJdoR+3YO31+gWOCsjbzCvN8mRIydt8tSZ6mr2ejCXCGTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVn2fUFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVn2fUFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B9C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737267953;
	bh=+Pd4BKtCDs90wtoXTDqITn3ipLf6GQ1yu/aaNl+6Fzw=;
	h=To:Subject:From:Date:From;
	b=QVn2fUFL8uSUalJsfZlsvXwxQp3M6xB39Q5zwqTL05HXJXsOt4sZSBZrQXHH2kwNA
	 KlXcijdghF7uSSHuoGeAqqA17y+ffS5Py3xwtflRKIay5szc7fAU5WbYapQUFDlSlk
	 haVYbyW9KnFPAfyrp+UHuunUIYNTB7sW03zheDVy4StBe9gzlIJYgRlJKoimyQnyTI
	 p+e+7gGJAIor8lYNO1j3BrZQTaLywSM5yHgbbVC38clkhotF9TkWg+QYDVb41IKPqW
	 P4Z5+Dkyr1UV2+5jAuJim71kVcJBTeGEHG2bNVgvWLfN3+/+2Mi3fXzk83UVMSa7B7
	 OgPhfXNgSe+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E04C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726795357.17418.15258435601122869942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c44d8def23a2eeee539fe67fbd8a36c322dad5ccfb60ea1894955ac34bd3af7
Date: Sun, 19 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737267953
