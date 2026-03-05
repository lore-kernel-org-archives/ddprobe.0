Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171B720B22
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717694; cv=none; b=EsVz6oz05woAtZYeW23QlOGQpIL6lNX6Tf2Om143sc7g2wtpzElinaYi5k1KXYm39lFvtm8xctPJ/qMLsCIyOj09JPUmi8+9QeAYtseuMRMBjJgJyMBXJB4rQs980VxdQTToFDrTGs8ylh7tv2j3yEwFpfceS32Cc9/pMmENmAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717694; c=relaxed/simple;
	bh=K0QXGzTmSKnbuBTUk1BGaWrfPbjA5iQdPySh42lxuTg=;
	h=To:Subject:From:Message-Id:Date; b=XtH3Ga+xlSd7FAPtqv4Mw9ZG9K40SwyZ5NWjVMZZ3PN+miJMAdcd1/BntmUH3xMoQuK8fXZfd+6X4cKp4vj7Bnyn3NTJRlYsHxp0W/6Dh3bSgaqpfRxcUCVp2lvAvhQEICMFBWgydNFuCezBBVoNjzJU2terq4vsiaCwCrehl7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjzfK31o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjzfK31o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4947C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772717693;
	bh=K0QXGzTmSKnbuBTUk1BGaWrfPbjA5iQdPySh42lxuTg=;
	h=To:Subject:From:Date:From;
	b=IjzfK31oD7+YVSINzMOGjw46ToToI7f7lfOz+qigJqx+jwJOoP2L0BOoss4Mptkmp
	 9suCoHYM4gG/X2oqejM9YbA05T8JPbocKmi88Zt/pfERFJQJqz4tDF8TC5N0s6ZRfR
	 nt28ehBmepuZSSsZUGJuA3/LC/trJdstC43WjH3E05GJyVdI5A92K9wPos80aOHuMg
	 U/V6TnrQW7oXjl2hyNgVO8s3OX+aQH4iCuyrIeTnytoZpm44OJhUlkdV9t/hHom2Dm
	 XCpSxSlNO4eXi5CYDcJQoy67h6m1QIyijLUQCpp1Uk+r/BERonQZfHlU6N/z310k2L
	 4OgI/fnxO/OHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6BEDEC05
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271769358.18404.14512595502270439129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2af1b8db48d9208163d7e10c0477a150104bf3bf149c8aecca7529025583c8
Date: Thu, 05 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772717693
