Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3898F29406
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726959954; cv=none; b=F9tRwQAaB/Rs9sv3/DrQ5AJXO3JnZu75/BEse5swfFB64k4aepmFS9L3P12fGUs61+EvU3W7OStA6a6XFVFT+S7N0opVeEanPgPz0o2me9lAgqbU2airAwpwdQXjm3V0IPKReCo5BSrA02RpzHcATJrpCRrSMmp0oeTB1lg27VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726959954; c=relaxed/simple;
	bh=mcVUukG37CRa7gopBVkS0u6hMNsqKLchlT4I7Ap+9qo=;
	h=To:Subject:From:Message-Id:Date; b=dviNCpr54579xL0bZiAI2e/UD+c1O4QFyVyJG3Qq559yzgKJsUsWiOxDl4ZysKJQfKyBt5ZNqubqHdbMHomn/wYSH6D4JAQ2GtnXjU+GnienqdrL9T/5uqqXwl93U0wg0/gz7X61PzKuGEQkS2dcr64PGQf4w8imJIdtpnJljg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRzp4hw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRzp4hw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA502C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726959953;
	bh=mcVUukG37CRa7gopBVkS0u6hMNsqKLchlT4I7Ap+9qo=;
	h=To:Subject:From:Date:From;
	b=HRzp4hw+FsNRdnoPyWC3bSoCPdBMc0HP/0VxHZnaBuJ6qb37SAJcfrBQAP5LSO9FE
	 D2NuQPpvzhzikfpLUFmCzIACsc9K3MMSTYfD+f7nxU52/uCrv65DPC/YHzRyMbO9Db
	 kdCph01R+3M07J3myOxKliD3Odqy+yb8J9Z9sOvdyCAOfsDaigYrCtqJPEMD5+Z6zp
	 c4RlmGq+uT9JSKlsvVaA9cHjPUbxv4xBnLVechggdcUDboujZMnPHJNKBLFu8PlBbR
	 xRR0xpwCAAYqWeFz010xg8Nqe3eL5FNluAl7DqfYtEbcPCN9MSz6clVXkWq8SZ9lUS
	 kQaWvS3vfagBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DBCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695995357.21078.12625582768525382471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864026e8a27c2ad5e8c15f6bb1566a4b1d40b56b96ec54ee8178055688f4cea9
Date: Sat, 21 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726959953
