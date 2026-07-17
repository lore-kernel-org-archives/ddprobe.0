Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569443E44E8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784278714; cv=none; b=RHyW5LoHnVzZpwPKM2hBFMYVCLZiOrLLODYPBDeThpt+MsbEMtuTxZigeDOmcrc2w8SYwWsDXRJXKAXcNc/A1YYGoH/ToZmdPbF5alhSSbBh1nyHQObtY7UOoJ8VquygjUfIFsLtWTx/gnTLaWOp4sc3xuXsxXQCI1gZlWpKQEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784278714; c=relaxed/simple;
	bh=nRmvVGW8Tah/O6Rt8Qfzccl6mZHN6LmHtgyqP9aYM+Q=;
	h=To:Subject:From:Message-Id:Date; b=P3Q6Y5Zapt+k4NQGCNs3Yv4prxQiqGY6Ki0V9/etx1eQPGS3cE0i4S+R2b98hon82Cl2xcvI1SH5GW5QjjG1ukpZ3PxKAPu6gUREsmJ/jaI9BMh+eH0BnacNQ1jEAkxhf9M9t51mQX/Mx5g2Exk5iUz6Y/P7dzeOY4H4N0yS3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGgGOevI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGgGOevI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7FAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784278713;
	bh=nRmvVGW8Tah/O6Rt8Qfzccl6mZHN6LmHtgyqP9aYM+Q=;
	h=To:Subject:From:Date:From;
	b=ZGgGOevIRw6GZ6IGWtiX06Vkgv8NSGQwJcqW8CdsiCZrJ3vxOZFCMDK4Vao6I+mvj
	 r2WITdwlfNZwx+mQhaqQfnON1zanMadmTBPsxxhvlmF7KfQ9Cx2FhBLCcbT2HxH6DW
	 hs1QEVHV5gus8rwWaDgidVJjQ27JdhTKxWiPjegOY+ZNEaSEjIrO/VmGonctKPDmsw
	 ATZO6n7ru2x4QUgJDLe6Dfn0aX04AmrK5Ep1Ajo53GvAi1ThihShYZ2Jydt4ti8dTg
	 3Uf1U9wcScEtV2W5N57jK0YG+y4IYWfLRNboQ5QcLGOJdJmt+WZ604YTFHmjaSzCJx
	 GkxNWI6iPt9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC0C44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427871368.18150.11372483891772244038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0a8a1dd0dfa910cb953b1fcfe76b9c460752a9b0f66005c33a0b7b890146b7
Date: Fri, 17 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784278713
