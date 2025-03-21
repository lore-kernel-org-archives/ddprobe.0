Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F30B1EF092
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742597994; cv=none; b=ja9FtluTO7QmkMgVk/pNNk5bFMLTSMKxos4cc7QWIXDft6uaNvEakhUkhK4ZmaEuG++RmPMIe30/emC+zbu1UQpHynt7JqUf8Bq8clJdK6h40YarsVWx2D8aPx4Cjlx7qNbLVFV4LbIRVrrJrdEKjj+d9OSyniID2ZvBQ8Gpqcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742597994; c=relaxed/simple;
	bh=CCB6B0Pg6352ABm7jTyWazr21KUNXuHlDW+zD5PSM0s=;
	h=To:Subject:From:Message-Id:Date; b=Sq15gfGPZLg9KXYiPVibBXx3FN8rcAOY3PukzkzOXKvl6PToHXubl8m51UDjwxy/mfu+AeCbuuj3cQU8vCF655k0GSfjw0hRjkbp7Bczzi4axwM905QS7WycQYQBAw37sXye4duvOff5TRGqPfu0getMiuR0x5S/XwtML7t8FRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRkfSQwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRkfSQwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52E4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742597993;
	bh=CCB6B0Pg6352ABm7jTyWazr21KUNXuHlDW+zD5PSM0s=;
	h=To:Subject:From:Date:From;
	b=VRkfSQwTSNhMVd6bkxS4WtOCeymQ73RAkxQxrEEzaUz3E1gwxKoYmTio6ZoUHebvr
	 beAJ8A7Mlcrwy3IwRL2hZUG5IZw/c3x2e0QeeFXrbEaDrWdBZwVBiht/MIv4/Uh7nf
	 dYX/Luq3RN189Agqm8Mnn1vV3KStSkF41ips45W4vCuyjMDWyuZTIxQJMfg2ocyC9E
	 Wd8uxfTWWJFCi2jKNNN08tRk5XwFsZr0vONVcSfHVgpGW2ki+T61iYBNmCOrqS8T7M
	 4Qv3NAZhGXXU9oCbpS160cwwnJ0whEXYExAxtqWMba+SU+lzCg4ut1SfHxOehzJDNI
	 H1Fj/u8nLqJoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC101C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259799370.11511.9526695290688049889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d38708d585aa3837eccfff0778ad8ddea5c04a63bd9a59e84a91863fb3dced
Date: Fri, 21 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742597993
