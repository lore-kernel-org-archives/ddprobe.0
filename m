Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557C4184523
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734113754; cv=none; b=C4fAPqCCncMO/4f9Qm37uzH5Lc5Yv4tihQTduPsqyGsCsqqDfUfDMRKuLfJ392tEWIwpDXKqr3/MhBMJz2Q0jwjMs5jc3KF5nwtFnNxvSrDjQoTjkVCS5OYE1qJSmUEHOkha6lbhprMNPcHiDge1qKGn6eQyIwqv25BUtlQxARk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734113754; c=relaxed/simple;
	bh=EIU62+FusT9lZ6bLl/3M6oR2EH+DPlZ3wno7O6Nj+a4=;
	h=To:Subject:From:Message-Id:Date; b=jb+kNhJGoPGr7073p1mpygYVXMg+/O863K9GGjbpuLm9I++wxIzIKRFE88sxBAsFX0rdlUqjYb+NgOIXWsMLCLB3wCwX6L0QUCJjTnCvG+GwDT7OFMZ8fZYe3immZABDC4KVm2oJnVmu5HnP2stbowWsxNv0uG600VDrHUp3mLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4fwasOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4fwasOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32EAC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734113753;
	bh=EIU62+FusT9lZ6bLl/3M6oR2EH+DPlZ3wno7O6Nj+a4=;
	h=To:Subject:From:Date:From;
	b=c4fwasOIlDjYa/nkMFUBcS9lHpUnwU3K/ELRq1e22E2T/xbr5NM+ixhJsyaFwDpbh
	 KcyywIY5+jraqW9JlOB8X4g/XXiMHM1mixpeMp6BX9x6ZfmtyDSe0CiIhWVvHdzUcy
	 t3VNuhWKFdl3s7pA0p4iYavOA4pcB1btJpGetzAl2IukqHWJHcLowSjcS8trzZ6SV9
	 a5SZDwdfOjbUG/0TX2XK4x6+qOm6awyCIlmbOJt6RHtS9b6arwbz01Jl/EehcN+vdl
	 k4UdfrLotClyh2ku6iTfhq8oNTkCsvlBvgxB13WdQmbpSD1+Et9gSQsEmzKsGq6NF+
	 i2NlagkDMIGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D880E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411375363.16093.13919129941404220062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0a8cb2100d5a439a8758f269de6142bc6a9cd13e48008e90428b869f66aeb6
Date: Fri, 13 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734113753
