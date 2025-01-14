Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF492AE6C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736828754; cv=none; b=Xdx+igVO/4fuIez6X1f8DjLBdI+2DuaoFGcSmio9TcT63d8SbipVQj/3X1ONAa/M2idfh95Nkbr8emAY6D4SrURTqUGob4ccUaV/REql1Nmg/Sak9qbfjsXCwh99lwpyfuzRtVDILfh4vg5dD1tq6l6w2sO3HeH4q0MPkX8sBNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736828754; c=relaxed/simple;
	bh=S/NcDWEqWJa1OSxoBmdgs0bMDO/6ZUCzObDbUdkUF5I=;
	h=To:Subject:From:Message-Id:Date; b=OY4wV7MNlYXns1Z2Rto1BtWETlNm3QlpTh/jhdqDZaOWQ2idWsoTnCqw15Il8W6O9R8fYMv1j5pLB3rFKq/P8AtXApqSweI+vghWefACdh4h066QK2qZ/RyvX4L09UqZHuQKuMGHsp1c0dDoQdp+w2pgF+R9Du1W06TStMjb9RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVlYaW//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVlYaW//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC60DC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736828753;
	bh=S/NcDWEqWJa1OSxoBmdgs0bMDO/6ZUCzObDbUdkUF5I=;
	h=To:Subject:From:Date:From;
	b=NVlYaW//IG0+Ry/VGr8dSB61ER4WAsCgRSO7JYEkKD6zFNF+NF65mSH/0LitlY2nO
	 /tKOXumVnZ++wM9NJKEPtaAcK8Vki7ggkb1ZZXQ4Ae8ire1b5RBSSFF+LXJlYvgt5C
	 qKJseW3YktLyCpupF75U6QmRz/ewPuM3uRHeq8uKNtdZu7AOBtXDauGrDGRJVhyrjL
	 3VZD3xQL9qERN4Y2yGG9CY7XOB9dc/h6B7J/sGKVbtwUQGB0xBt00HoL49PSL3n7xn
	 /S+AYTuShQksJyBnTh++q/3feiSO+ELypCvEI3Md+/OnhH3mFALfg8Im1LdL0vhHST
	 d5NoKblzFvDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCD1E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682875361.6923.13667575420219798883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ab51855ff95a62cce4347056c08628e4b7e3c96eff1d045025c915d0c6af32
Date: Tue, 14 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736828753
