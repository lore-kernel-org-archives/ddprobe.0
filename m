Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39982442374
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789468834; cv=none; b=PeN0j6KuAAZurAp9LUUpSuZr+2ODQWkb8/aUuUdLI+AEcCrPLTfKcbbIJLj3jaOtsyn/0OYh3/yegT+J7NAkeuz4KskAsAxbKiSG6oZadgKvSEcyB0YZ3bc0P3bZZ+SsI1ujGHcJhWsvw7v2nUPYIksqDHjiPnU5ErJ9OHvXMW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789468834; c=relaxed/simple;
	bh=hyUKE2FJ29SzW+aZft42qxnmKzbFRwe1B5LDK17rBDs=;
	h=To:Subject:From:Message-Id:Date; b=NZEn7QaQrIHhR6KMFNkimCdaKMCYDbDA+Y/+cbqfLdeHWhvYxb71SYrU2h/t1MkrjiXWwLfNONu3Owo9b0i+go/RpV2eg/zqpNZ9LbGrAPNHANzW/s0RFVnfnXqONegbpRoAfP9nuVmUZi5Vjy6+XFJvNaykwYcKFgTOkZS/pgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5IFuolh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5IFuolh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDB1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789468833;
	bh=hyUKE2FJ29SzW+aZft42qxnmKzbFRwe1B5LDK17rBDs=;
	h=To:Subject:From:Date:From;
	b=B5IFuolh0mEzieS1DvH4yIEGJZHwqkmXEx7czgkGL5jrceQ7Poy0t7ZqSx9nuJ3Ga
	 miAQu0LT68FICfignBSlajneNffOVbhP4AzZTVrnQ9tG+JCu2jBnjBwhhKVQugTDOF
	 dzYZY+q0B8yBLYLSLQsbPkaZ9C+4XpHkjETmODlMfm/FgDkE+cy7Mso33Epz+w4fVw
	 6srKTmQplnBcat7hXdIqX43P/QoD4WhNvZ2IkMOjM/AGHktCdPpcSM1YmUaD6abs33
	 iJDSuFJsl6OSRraKK6debJcbiG405eicII407Sils0yUV8ufbII8kroNHMMeLZYSsb
	 hbTmuDg3H2CHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA764C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946883368.3278.5416062006043043764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b1986510d5f02fb8e59e684d9d8f1f2c1920e240835785a395882788251946
Date: Tue, 15 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789468833
