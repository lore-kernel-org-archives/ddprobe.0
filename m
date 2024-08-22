Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E3D18C31
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724324754; cv=none; b=RviKYlFErYEZ4t2o5R1e8wPR/rMSmL1KtCL5Ee4Sa90yAFzInrwqJhMkjgQ4BIj5t60fWyd1URUbPi3CvOEb89LELatbq1jXDlhvx5t3mKZGQW0yeyeMpSDpJq6UDysV4MEHRnikMbcCLYecTYag/wTwNGqfCBfRemdPLuxx2LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724324754; c=relaxed/simple;
	bh=7DlvVfQEJDCq7yaFTTnvuBIvdRgOjXe8Sh1i97VxudA=;
	h=To:Subject:From:Message-Id:Date; b=N6C6texnHrmnPfm0Xa6J9QK+kCmddnzmdq6IPVUIZ8pjQWSjPUpocIYg3AAMxJz6c+TcddTfMpzdq6TH4Rvovxul4LSWgNXYcAWXxRy6fjhRlsnxvlJqhxKLRrniKhzMzdy3ENUMeSrv/Z2YEVw4Q48apzW9TrSMzULFyx4iTaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx8q9hkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx8q9hkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48C7C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724324753;
	bh=7DlvVfQEJDCq7yaFTTnvuBIvdRgOjXe8Sh1i97VxudA=;
	h=To:Subject:From:Date:From;
	b=Jx8q9hkOTtRzvO+xM2L81RMDuf+VaFZPY+AzudEKPjFuRqAZwr0cHFgyGbU6g2toe
	 Y38gi86YrLWSojTi81gl5D5aG02wuGlYmKRk4pTLhVN8iQ7sRXcIlJvHdGdoT7ZwdA
	 v5GWYFnFE1lEv481toI88rCyj3d2qccsP9o21yWAA152mTdPEZ7YOe8BtsY6x2/cTz
	 Op2OmVEeRATd+3oGRnqTqTW4QNdNx6WcRFG1KbOT6HnpgsZHseixGbu1wJZPI5m0RN
	 KW3m4+6QTPX8aF0xGWyC1zol3eOugMsIlFl1/pSbdO9ON0RzHUgXUvG0Zvr68iMvah
	 dxsNzEB0KUDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF30C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432475364.12779.11958098854701906943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4847af61e4dfa28b86ea63e6abb326d6d87de49bf52386438f384b6be5c9383
Date: Thu, 22 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724324753
