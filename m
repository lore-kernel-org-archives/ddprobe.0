Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031B1AF0AF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755741594; cv=none; b=QxH/uTcoA98y/1M4Xvq4hfCeZPsWfNWHYLyeo8XGi8isZSWplfk3nstTJ1rFSLBBSKY9Q8TI/NcG0WHO5e000BM5kzWFbcS5uNWvDlB0J8bDO01mje/PqdkidzTlkncz4YABm5nT1xQReJXG9qkX0GpuELVCBjXXLfBOztbTvTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755741594; c=relaxed/simple;
	bh=Deof0j+FxWyExDLKfJIM9TBfqvXCXzPv6eQ9umXYReU=;
	h=To:Subject:From:Message-Id:Date; b=XgRHH4xyLNeuGzM4HDHRchjL/Mfp4giC5E9In51ICDsR80P1FDC429cxBKSiSgDaynhPgNlcy0BTq9FrRwjoaiKvwe0mszDmtliq/A1yDkQ4W9O6tnBa+k4MakBySGg2LqL0nBKTKYpiKwVACBF0V2xpWIP6CJLRm+o97GDlNxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtor28X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtor28X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755741593;
	bh=Deof0j+FxWyExDLKfJIM9TBfqvXCXzPv6eQ9umXYReU=;
	h=To:Subject:From:Date:From;
	b=rtor28X33Xaq1erAWAk889+7CiZE4OTVnS0bjk3IX9/6iKLn6Se8sYGkwvG1sv8JV
	 D0SbOkoTVB0wO13H6D08B/4fb2EiXYIVnNYwc0/jKg/lk/00K/2CXo4aM2AVLTg+9i
	 u9MrsxPAVBHFVyshpGMukYW2WrlpLTAwvnqtay338sF9mV59xfrogPh2+eQVtMncbP
	 LW9GKJ9LH0Z/lCKk29j49tKUnXq0RABMIhscDsFEwd5HivFRL/X/MPm5Cwha/VH+Ao
	 bEFo57EK2q1szrr6MIbJpDCgg6DSVr+axzgKjJOrsN0J2qs+EAlOh51KDbrpjUy8TF
	 C/8J2WRMk01DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4ECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574159357.24895.11546854605646686741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f1fafec4c1ec17cb02adeef55dd074adea7629d80a06a50a9c1a0048bddd2b
Date: Thu, 21 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755741593
