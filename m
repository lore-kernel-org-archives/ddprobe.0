Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CD1EA7CE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764310374; cv=none; b=kru8fLnxe9DcqCDVgFs0Q0l0V/TdND7tr9RPGnwLLa47d3uWRUIEAqAbBQIi5xbYbNdQeZEphTO9cYy/l6RQ0Exe9Ju8N5LhirNU1yLUzK3zcUTuvjkBSUVsEMK0iZJUW1ZVm2AOkGkHLbpfNlLgsQhRfrMoHungTDiV9qhd0Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764310374; c=relaxed/simple;
	bh=K6tDLq+eYrO5ikdjMiiXId5P0h5rVD/bg1LSYmGNCV8=;
	h=To:Subject:From:Message-Id:Date; b=MCgqCi4xqV0YCnN4dvGGG/JKAVb/4JizIsgvI6jXRaRBr8vcMZzRL3t0Zij34lsLRPXbYVE6tWbzDFpV5o/r0enk8pOEahXr7CKd884FIrEySqQTlBxddQ7rf43IwCcof0IQIvze83N9bjm6aZxzM6nV0mC/ELPdl0QGR7/tCoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imsqMjQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imsqMjQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764310373;
	bh=K6tDLq+eYrO5ikdjMiiXId5P0h5rVD/bg1LSYmGNCV8=;
	h=To:Subject:From:Date:From;
	b=imsqMjQYW9wVo9v4ujG5KMfA5yllUjlVHMRBUUGlb3A8yLfwEG0Gxhnr9QGKfOPCU
	 bXldu9+BG9O9Ct6+FS0bcbbHt4/Q+3EWDtJB3iK5C31YA+wL1UKDUdWDHvo5m9b0h2
	 gbTQXb8J8unEFfI+DBdEJaV6HpQV/C6wqWvaQvn+byNgLHTLoE1zVklHblwrcYBEEW
	 +VqknhEIkQAJDvIdo4TGblFkGsf6Sn8CdcS7iuQGnjPGaeAJ6DU1YS0Zfv91zBHhOa
	 v/UPUGk5N8yAFjCdtg6oAeUJYJp8JU9QIZnSoZQ0c2VmdvFwNMArWgFE+50vTefNOR
	 nmN2lsnV+0XGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7FCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431037358.8405.17977384148427029375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8434b72c118fc49f998f662e8cabe102e35ecda9aecab75718a98ccd565d092f
Date: Fri, 28 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764310373
