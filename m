Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B52E5B11
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760486394; cv=none; b=UW6+wUD+FY2OI3i0AsabWqS0FfDPDWH8s0VJEZ2EknnKXqLsvokfDUmHDFoMQmcRXGqkza7ML552PN8fK0P3p/J4nH3m1bvKMvRnXCDDAPQX2saLWmREQz/Mp9Z1J8kzowpL/1Ef9sJTa7xm9jpTWcuUaB3CeIvUcEPhQ1lk0to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760486394; c=relaxed/simple;
	bh=wlhvq4ssxHvdjExFnf0XZDe5s+0Is3bPFhNnsYo0vlI=;
	h=To:Subject:From:Message-Id:Date; b=umY+FiGxy9WhmtWtKKk51W5tUOE+CFpH6yWwtk7o+xuvwZCopkpHuLuo4ALBG92Q6A+9KAAVFZqFDxSV0NNdl4KzF9onlAUYrveHEGcIZXGZPN7MZPIRT3j9yDJX22qAps0cpAINZldXdWyo4xMSSEVqITxNmFIat8uu6DpGHO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK0PTh/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK0PTh/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760486393;
	bh=wlhvq4ssxHvdjExFnf0XZDe5s+0Is3bPFhNnsYo0vlI=;
	h=To:Subject:From:Date:From;
	b=bK0PTh/gQpQjFaBCvQ2pYlXu74jdfNXvLUIIbd5kpkFG7VEqyxB+cMfu8YhQvhjbI
	 51FtvTOREXvAPhjltJ8cITXsKMgz7N6BmjTNU2Src68L3OwVESEA5GTJBX3JO5+FYy
	 aFozuOZOATp2TKvq5CKjVnRX0eOPF8sUwhf5qTs2NdkzD+UWlCSTxJ613mC9bGWOHo
	 PFDta4Z9C/pgpgxEUPd/xzpfmN0hEOhtN1wFjaT/Xilf3BzCYJ4ofxl2HIHRx1c1x3
	 gPmct+0b/BX3CUf6eNg9RjGkgTox1llNp5izOcb9yYe2IFyFS+G+ZK4MV1l6XAEWeL
	 Ab+3Ssst8hZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC29CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048639357.12183.17768880243775791673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b088444f002e791c5c0708daba55c69b437e7d6f5b29a51f4a2c997a2cd1e81
Date: Tue, 14 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760486393
