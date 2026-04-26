Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BDBCA4E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777169854; cv=none; b=AiGrJecx5yt5BsrGtIxM6/QhDS/ikT1lq3TIzSFp8PRtqnil1EOcVjfqoCKZ834hP77kxh9s5nlPHCFfucZVGPQZVH2u1Hjm0iIBrrWwLY2fdY8JCJo/RmBdTLcV+vOb2DtjABLC3NjzsEptFSjwsnS/0yuRN6N0F0MbPNGW9h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777169854; c=relaxed/simple;
	bh=ZRgn1rY0h8EruJ3OXxOZvBi7iqvrJZ8qIr7k3V3ExCs=;
	h=To:Subject:From:Message-Id:Date; b=q1+NF17NEWlGW59BdDm7ilRn3AwJSxykDQxldsj0yj8AnGyALf2Uj/XjkDwwY17i73cTOyGgOhP9qiorJiTtMr/rcL5Uk8006N4WARTnTlsHusjLQYKUiGedmFPRmGumL1dshBNqTaV1dClVODb4XzzrqtVsc00GWCO957H8CIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otCSKRU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otCSKRU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B00C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777169853;
	bh=ZRgn1rY0h8EruJ3OXxOZvBi7iqvrJZ8qIr7k3V3ExCs=;
	h=To:Subject:From:Date:From;
	b=otCSKRU+Z4TYhyhD1jwSXBeDEVeXzM8YnBnhiM55kqyBf5GaMfrAv13mS4xlqAFwa
	 tKoTBBcO1TZbbz1NpmSJdh13Cxj1zxN13v5kLSPclsgWr3WQ12YywGOJ89urJp16Zy
	 kETMlea5BY+PxFeNRDq77CSAIgs53I/9ExIKxVOJHa9QgBupJxZ0muXI/blB8bCOcr
	 1nsEMCKmXkTht3dLAFDjkGNPNRo816Qaz9ZzvEDfiNKWWknzw5xL2TMamM0g/maU4F
	 oBs6pLAcPAQkoj2Fpt68nGJoz2GCHQ+c4nlApkQC1vLDw8druqkzLP62efbVh7xwqV
	 ++xu+u4GgNeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF256FF8861
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716985368.13995.12223318630986846584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908501241f362e963a9cdd78af9a6b5e2f13d0d11dc642f63274ce40998349b3
Date: Sun, 26 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777169853
