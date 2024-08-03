Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E3E847B
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722666354; cv=none; b=gx3mQ4oGqDbiABR9y8T/MNxKCQludAZb9Sd0RuekiShDcf57S7UmkuRN4QQNmLY01QCuoKShS1kJdL1HQJG2Ga7xi0pnr2qirPggZc6sYG0XLg5MDvxg8/4Z8IafKEkFO+UQ5IFMQx2NDQySO551MYCpXhY8eNnAmQvgBPejAYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722666354; c=relaxed/simple;
	bh=cgOAO6b1mUEclsBMrzC2j2h3fSf3j11lD8kXQ5YKjnk=;
	h=To:Subject:From:Message-Id:Date; b=mp0FWp1QuyTxebDeZeRuo5E5ulftssYaGM4CeENmLCVldxVnJD2Rhh9tCuiECjGVnr6/Z90T/Z2xd8zFhMrm0zibbgqDaekuPvicbn8h1quefoy8+V4mUjdGFYX6j/Ei6tH0c1IDwHFXqm6cftWrUaVgIGJCfYy80AoG7Z5IsvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPXAtSZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPXAtSZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EC0C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722666353;
	bh=cgOAO6b1mUEclsBMrzC2j2h3fSf3j11lD8kXQ5YKjnk=;
	h=To:Subject:From:Date:From;
	b=lPXAtSZWaVpw382UHO8yCBDPo35h5ZwOk4owo2uB/f/0L6Fz3KBSSHzUCv/Ki+Hzj
	 hCHJrM7gxgk/kSFh5qXeIebraV8egtnE6fCpPpTR5DEzlEMtqY6KbURfVfG2bqWM5G
	 QsUvYEezrkpb90p04oFWEk2X1P/wEjPt8okaQSrTMdPQZD5yEUPAmw2CbgB7SOacI1
	 fOUkiC2QUvPX92AeaHrDTEAiDOO/CNq1t519BpQuIpKKNErWzqC2VFMypFl93pB4W/
	 dijMWYCoIRaBYin81USqjKVslOJimOSfgqPKwbyt98O7Hp6bvwuwCJ0E7ISgEV1NHW
	 6hS65Gck2pt7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EC8C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266635366.2104.3119313938776404016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95573acf7392a6e779873873cb5796633116f4c325c34d21e57288be4dab0680
Date: Sat, 03 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722666353
