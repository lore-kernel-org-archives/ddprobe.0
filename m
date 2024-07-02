Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF9B17A5B6
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719962723; cv=none; b=iwtnvS9rLsxU86vCBu4k0sHa7C2keWswS4mI06+/VJhkvzmAGPE2wXLzlljqb3pkfnVv28jw0j2zjZ7Tmpqct8MV4D9graOTY4Q0iHJnfG5AVDm30ix/JVY8WNXjuV+Z/ciJD6zj0FRv9V1moMcZFtmwkd2vVrgq22QX8yvvXhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719962723; c=relaxed/simple;
	bh=NoOrAFfoVkrd4Yk8eWcTs098JAiqpMHmPMFNAXulU2E=;
	h=To:Subject:From:Message-Id:Date; b=ZyV1Z9k0U1iKQOcalbhp/JbB7RYz/3oBQMAAtryjT6JFEv8mAjZPlE0XI1a/bpT3IsUYAVMgbsW5VmDEXq3xNA7CYMSCiFKViKfSgwD8ATuZcukglGXg6VZIUlpZM4jMhvUOMjWWUopyJN2yUoUzFp894dpsPllWBo46cpCtsYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moKIun/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moKIun/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF91CC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719962722;
	bh=NoOrAFfoVkrd4Yk8eWcTs098JAiqpMHmPMFNAXulU2E=;
	h=To:Subject:From:Date:From;
	b=moKIun/FL7CEBKLQGsSLumwSQ1l7WNm+QD9ZqIhOWv47kb5iF9Lep+ffmos7v/e9l
	 4VPSCsqBlBNYqqoXlM3Pe/uiB24AgnvNw+Cwwbs17pmZp+ZA4ksOgmouJei5FSeZKE
	 gZvad/aUkiwxyfrQB0FVdzyVRwo+nwmq7FoCcF8IlxbbRAgmE2F6pAFs2PIUaV3T77
	 TgYEJPY/S1VuQk2KS2Om9Lyz00jfJzz75y94jMktnliGqf5XYG1zT0LuW1niHwEMEn
	 DMJvV848OWgMmrSlotkJGsPlLqyVTvi03KaoTI3zSKDogr+3WsWg2A63IU5SePPGOR
	 0X40V5SfG7eZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B4C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996272275.21115.3251821763992944925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4817130fc787acc10987e86f97230da609d0a9f87f3faf7feb9c9bf65745a49c
Date: Tue, 02 Jul 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719962722
