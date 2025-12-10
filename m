Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CDE24BBFD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765380774; cv=none; b=qXZJIwAsiQ+ZFJcDHLvbNU3D5dBrmaV0Y3RS/dk1Vl53ef/8QAYIELDJjZUa24FzLv6jADb/sg1z3r0LQCsD4KDOYYFSuVJh8/Xc43yz3aYbefLkQQYnL3DkJRuyrbM1nzR6URZI6MOyVKsmfupjcNZQMuyQFI1yx8G9nB54RZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765380774; c=relaxed/simple;
	bh=dzkx8KWcfmqZ8Ch91t1FOSqV5uni5KbjaQDBQcM4Ghg=;
	h=To:Subject:From:Message-Id:Date; b=fqBHh7lhdCStmD62fMuCB2aHpr9jLuDTg19LCSuEvsvtI5AGG5OuRs8jiXN41IllWx+ldDfLhhsBTUW8dGkTWFxa+FHHyDA9JfXsHQVhbsyDeX2XJdkukHrM8zTsb6MzKWQGc8SG872D+355wrPNxLFDCgbWLmDXdvKLl0Y0St8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPs/eTfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPs/eTfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF65C116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765380773;
	bh=dzkx8KWcfmqZ8Ch91t1FOSqV5uni5KbjaQDBQcM4Ghg=;
	h=To:Subject:From:Date:From;
	b=iPs/eTfHkWkHQJx16kXuCRYOFrx9hSxYxtczA09F0KD51OMowaeCjGbW9EdxvOSNl
	 V9N393vBBq9vlbB8vJiNNmM6BbHDkbDa/DqxjOy7lCShNvZh4SrxipxNG0oepa41Tz
	 kbWBpLMRzx8YU9AwEBjtoWpf7Y3c+rrpNi8S8GrZ8y0Pgs1o8mgvF0gI3U1mzLcq14
	 f0B7S4fjyx9ksiz9tpvJll9fheVI7Xa+xfg4CQEC/StGO7ghOoUTvAMxYCiMgsUL0C
	 3aFnbxY2flRv0H9cADG5FTdRzMmuikf1DFcifhYTxapZV4MKPpRUUDBkMBDeKp/+Rg
	 5ypQc/0HDOMLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C9ED3C922
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538077360.21654.13050308516421095106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3cf1bf77b5a4b678157c1cad8bb94ad5013c05c75e5383c6f21947a637865a
Date: Wed, 10 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765380773
