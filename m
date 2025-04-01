Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86D80B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743550794; cv=none; b=T5YISEMGNaNIXlYMy+QRNYevR2NVzdxV7/q2yJQYaMQmQcje2mm6ySO1gmYXbzUxY8rhye4W/fixtzKThwzm+T7IBV7GYEU1L8qTU/EtbAlqVPikVNr60EUlZbLesU9YZGFZsdquIsR2dde9+DdSvcPCU6lokZrVyoinRlb7sos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743550794; c=relaxed/simple;
	bh=nIdkmzILvvwt+ZkCVJDubyQM9gR+eMpy+yn3uRHw+S8=;
	h=To:Subject:From:Message-Id:Date; b=WRWep0HU23llNFMD/r/9BjGnQHaIoGwcYYbWeLuA6C+3hdSF2Zq/P4YPvCKZ52ffc9az8Y21dhdDK4pakP5dzi4WZiWXt8HMhzHXuPiPndTMTDxE7PH5O3Y6DZ+zM41EC8ygH/wA3a7rwk2i/QSSZw383O/CV71BDnSYzM/QC4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R97RhGyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R97RhGyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C1FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743550793;
	bh=nIdkmzILvvwt+ZkCVJDubyQM9gR+eMpy+yn3uRHw+S8=;
	h=To:Subject:From:Date:From;
	b=R97RhGyISS/63rvBmJ2wZwoVzidYOzfI/CYQi8H5gOkQnKak9CDx5GOyX7lCnzpKx
	 du8/TCeBlYcnS1Z1P9MdTnawBfMoosYYP+W4ry+k0hGny+yj/fBaUtFouJ0ALk+mVk
	 IYs4Q61LOr/edhe8ot6cTPx5hRm6W09LsAKbOvr8/WYob/gKKK56gKJQn9vmt8o2JP
	 OJA2Pynxj11BcQ+m0TpSGTDQ1FOw+ErjbF455GtdVdeZJv+HKwZ9jvTxEtC4xQqVuJ
	 OTdjwcw+g7Cd15VhQi2AxlKkYEw8b26OqdB+g8e3O0rst2THtjGzHGGcC+72ePz1WH
	 2HWM2GujwZ0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94149C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355079358.28644.4216513650339106926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6818bf335b4d1ad458c8f98edade4f32ce275e3231f99d6608680fffc8bbbac0
Date: Tue, 01 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743550793
