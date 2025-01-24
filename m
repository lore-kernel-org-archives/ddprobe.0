Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1DD15573D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737731154; cv=none; b=IkEHAo/3IOROYJN9xNXtAl2vplQWLIbvfzOtEXReuCDOz4eKMoXKYHYZY0jzkkgRnwdjABq/dQaNFsL3n9XjJK+KnOUwOlxS0JPuCfKRSWsAc8EKNzTQDgE2MNY6jtfeDNhL5mI+12zilJMlO8itpVBtmNGLk2VN3rPNXP4enE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737731154; c=relaxed/simple;
	bh=afWrcAmKwcxJMH0D5v/9L2mqpphryKkHsymekPhsnb4=;
	h=To:Subject:From:Message-Id:Date; b=ckmd6qpRErJwuMMiTuCw1ktqsx8HHRkOykOumA4S57sHkZwBzlTqgSVrwUKUtudcYXFOq6Ss9FYdsvvzQ8ZQ0ECks6xQVBn7+EUYe81cmy2uzgcTdq62wxIWIXvbrZlZj3IG820+2PjIT4RnV9TKTpofFTEc1+NRGpl9pIcbCfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzro0HSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzro0HSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737731153;
	bh=afWrcAmKwcxJMH0D5v/9L2mqpphryKkHsymekPhsnb4=;
	h=To:Subject:From:Date:From;
	b=gzro0HSGO2dy5LRHSMjicAgOmIO0YXeAr4n3t7FhSK06cRbm9fbhLcOPIOlXKdb6Y
	 4ygE3MJTx5Hz3OqjmlqkE3YG3CVLRKWmuFBHZCCCJrs7kPWjVmBgAsHoQ0MGfVxNlK
	 GScVIXCSeodIyTo7POXada6F2TDLj7uvEEpW0sd8GXYVZv41l8GrB5jmzOXiMbxlkm
	 6xaRdKd0NEwX+FQNf2wrYA2zs0fm4BtpoXNWtJCCJRfPhCPJQ8yh3TAvnUc57w9X7u
	 xIi8J3jGgNb1RKqc0Vgkt4vlKPx6v/xIFnYFfBhG3WCsXZNNH2NvugwOseemQALKIB
	 Me66GM1mHp51A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988E8C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773115361.4577.1999020027561232415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c29af4315c32699f874d149105a11f5a31c73c9c4164589f5a20a890d3b9cf
Date: Fri, 24 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737731153
