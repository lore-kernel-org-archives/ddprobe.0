Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353634C91
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737680754; cv=none; b=kss7AbOa1UEZ6QEIjkzcQuoE2vu8JyDUM48ogsJdgajcmSHJCU8wqriJHPsgZgcyVmdDCi8VTMO0wobob5ECSMM4PfRjry1pmdvcvGhThfPFSf5poEjZw3QzPcA+EeGFVMcmKctVeGie7aKyWYTB04fiJB3YoSCLSLkhpgXC91M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737680754; c=relaxed/simple;
	bh=Kh2fUlmgJKJL8l//sEbqPQ8cioo3ur5DLRRCFQFvgLs=;
	h=To:Subject:From:Message-Id:Date; b=sIU5R9796R6P0/naYFDdI7Wagdhsg0EDQOmllUhvY7kcouYvWozlDrVBT+Zv1iptJiTOULV0rYc37SYUBPlKVbTDDN4Hx2AUcytzDUtH77yu5h5H2VEtgKpBBcGILqpupPwl1PoOZ7kTe9dhXAu7eXpm3ZNPydIYCcZ6yFYEXBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeV+sfuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeV+sfuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC71EC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737680753;
	bh=Kh2fUlmgJKJL8l//sEbqPQ8cioo3ur5DLRRCFQFvgLs=;
	h=To:Subject:From:Date:From;
	b=UeV+sfuL/0/QfOY3sRw4gJctjbULscqqJ0hFQDcjE4g01b96UKaDQCz+tSCUk0mxx
	 rZkcFUBfjrju4N55yb/VpE62eE/D1jcGpjT2zPM7IAxvtXVECsyEaIQYJg7fhShmV5
	 fmlingBLJ+tn0jIfvZ0zW5s1VZLdXfGiN+mseNVbfTEf0qKw1wykpGDfczypPHi1C9
	 ZUg/6KykeeSKJNnNFPB1KHxdcLLINtd2S8tTwTp304aaKvtgxBLFNCJoKjwEF78ZVL
	 Ya/f8wTpYejotout8/JMIXmUJREnceonXajTAdgXErOGIrEyvzQ/xABUDGf1gMRGKX
	 pZpaEeRM5A1TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95447C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768075360.12297.10061583478767859889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c32cc416bbdd92692049fcfb16c8976db08f90f8d33db0373b7700a37cccbb4
Date: Fri, 24 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737680753
