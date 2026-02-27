Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB8433AD97
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772164493; cv=none; b=kMb4P6Ylja6KY8s6UD6WcUxcIeoj5vjmLHeSlwqmE6xJQuET1WRN5qcIU8aQzOx7no2LZIGG8rXLw968hBp0gIhxl9TtBxBPlAQcprfPkMRYDp2IhI5yXSVUPGnxUqClj9YAGYUKmKivaS0UGH+prE2i9PF5mFdHDZN/Yvb4uvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772164493; c=relaxed/simple;
	bh=IW+1ngd31NoPKtSiM5P6Ptv5MBjtMo/AtmkCms3/Nz8=;
	h=To:Subject:From:Message-Id:Date; b=TAnWcLI6/3V/0Yvwi4GIUqLnwF0OCyaVI5YH1jzsKnNXtMQuYKBIo/V0xNy7QmsankFN0Q1SPt5QtHmtyb5C+h5Sn8efVxyWKTZkbRnMmdpcyB52p9MF1TV2LiKC6zRCe5hS79HVxcB7oTvLKCx6Wfz5VxOIpjMR7tunHV+9UaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECC/+z4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECC/+z4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6063C19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772164493;
	bh=IW+1ngd31NoPKtSiM5P6Ptv5MBjtMo/AtmkCms3/Nz8=;
	h=To:Subject:From:Date:From;
	b=ECC/+z4vR4iqYNaTiwTAb8v2cwyK5a8cT1tzK/wSFcc6z1pnDakN+ANqiUhdyLYyF
	 UidCcI8PXNehU8rAxzps2yU/sWWRwocVow7XhrSB0qLaFnh8MaM/P+PQYcd130gQfA
	 rw0HOIgXxVatj/+NF4bE5PTpEI8LYtRBrhBbdDszXN5pXJNZV8H2llQdmizRVjzEB9
	 PLb91Ah1FDjOdOGR0iyF7r/D/aHANGawxy+cyGy7REHnlyMZN7SgG9XVXJG8wcetK4
	 slL/Ym7M3l+0iyPLnDdKUQ22tIhMtD5Ov6EtNnKT66k+/+xfKzTik6rpEyyVGb4Zwh
	 SLthrj5IoOy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A9EFD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216449358.30528.11001926520327496661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842f801e934e55e7105e51f4c62cbc6f4f047628cb2163a1fca0fc0b304dbde
Date: Fri, 27 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772164493
