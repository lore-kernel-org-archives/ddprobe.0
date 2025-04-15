Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322242749F9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744693194; cv=none; b=Xx1qTJDQAwvNoaXhWLsnOGHIy+sE+EH/nfpPVJxEgkrp2opBIY9cdniyUVnV0xq2syrwsDUlWWEkt2CdgvCds9hMYMmTCgRLUNyqHoxPJ81Kz3cv29/wfSNYI972pZDxOK9lwkQzs9g99+IsBoK6zw5DyJuT841H2o0VMSGre9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744693194; c=relaxed/simple;
	bh=yYmA35Wtrs/Wrgwwo5Vk+Cy4hgXmFPyoaev+efwMiH0=;
	h=To:Subject:From:Message-Id:Date; b=ksCbh+q1p7aU3cZw5wIxdBk4nDSFR1KMuy7f2i6FrciU/5uqUJn8+y1xIYGS3A2LavrJCQ9pm0lvE2DafUYy7LG05TER27mBNpNDqEMe4ADacZp5O2vmajs66Wli456S3r5NwMzAiUpqhQFuhRRrVEmEeiBFFIOaZ3eqmxySuBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAhsmkcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAhsmkcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744693193;
	bh=yYmA35Wtrs/Wrgwwo5Vk+Cy4hgXmFPyoaev+efwMiH0=;
	h=To:Subject:From:Date:From;
	b=iAhsmkcKQv2l9w+gmT8zu1rcvtB+P/r/5Mv4TASmBSjtKcECM3Mlz+GL8dvwILf5a
	 GCRoTkgF5vkRknuG5RTYXOtM5zimeET0roOW+a2OVNt1KMHaD/FB5FJfHMvAaJ6BH0
	 4lNJ+aiOQTYEHHHDvqymmyK8ByN57nmyHxBX5JsSTZB2t1uxgEnulXds24f2GqLzZG
	 mrHDNxUz4YU+cvhb/2C8rRtlI8wGS/eiEl92orDCCp1xzPMUYtbNtsvDc4UfrDOrLp
	 oqbXU2qZHrJ9Tli27X149HvMVRc/e+IJrU3CduNgSh8QNd1OP4KAL1jIaB4zsTTKkC
	 FERV23MhDi2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469319358.7487.18344280469217033632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7739b20a2cca432a189b3b643419d201a68a0743ac032e0c9ebc0af88c7f7a6c
Date: Tue, 15 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744693193
