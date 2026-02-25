Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E783D7D67
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772034894; cv=none; b=uRuSScofmRwiizwys3n2+RD8j71Xr9UW19cdXBTAr+Jnmy3Kp5A7EJ18Ms4bL3o9PcWGT55usAU/XXEw3/v5e2xiXsSwMG1tH1S3fd5o/uFbSDNV86WU+zufMTkpH42LJPjlv6ZnIA+hqSgvnPyOlKCF/7Kqr0Njsyj+t1ofIqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772034894; c=relaxed/simple;
	bh=Zah2TBsen5RK4Dc21SjUbiE2qJPi9ESKarNxONQByO4=;
	h=To:Subject:From:Message-Id:Date; b=TM7FTQl2LjmmFnpoIX69TbDUsbI5QKs/4F5/n56hUZt5HWldWOCYhjACLDHYFJ6fo/BXwFRMT6nHll8H4zFibpZTiEzRMIfX4Zyu+D0gKT2cFdUaKM+wjBypg2zaLVmWbhtMIgieS+1J0whSKvDa/1QP43bhfCDHVzKpv0yRxUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR26fnWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR26fnWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772034893;
	bh=Zah2TBsen5RK4Dc21SjUbiE2qJPi9ESKarNxONQByO4=;
	h=To:Subject:From:Date:From;
	b=bR26fnWlA/O3wCqTSfMryR+b8wGWd24pVzwwAXGRAUfSGcbHG1J2Zu5hSA2WXF+OG
	 mLLlVQ12BMuWHmPT948lKxXED/zxt5E3btlvsS/yUj+uykYvWHAEylTO2q6hLep9AW
	 GDAaPXj6heFRb64bBqKQQ/SB/jGhNy1E3UKku3WizNAVu4pyJ2013RHoBF36vrDla9
	 AkqH4HNPmnH14BCvCohgJbdwevMLF6DiytfpxAtzRMs4rYngD7wuSZzG9IwKcXpIRA
	 TXnZGk6JqQPH06SPEM7om5QwUEtDNv/HTl867XD9b21WureEpeX0eqbWFVOrG0cuuf
	 d4fCDz3gWOf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90573FD376B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203489358.26475.3669077075895343633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6c4ee4b03bf8bbec46705148baf9193c4ba560994af401a7dfd3dcdc1ecc9f
Date: Wed, 25 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772034893
