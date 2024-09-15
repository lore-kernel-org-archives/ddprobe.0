Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB491B85CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726389954; cv=none; b=RdIoSR35Tkv4/r4KWJiHc8/vcagkGBwDsn1sGusgy6k1xAL+j3RaV0VcLtcmCHmyOyx3v1oruCtgRnfZVCraRJb3/Plbma6tIokAWXj7CAfhanHM0V59J/WCxCQRcZNm86MtterFb3A9Ak42v0t7ohKIZbhIz5I5tJC967joMqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726389954; c=relaxed/simple;
	bh=IVYuJ5O/cBDWGSk1bgUsSjpLtgUyqvvGkVVc5wBDCc0=;
	h=To:Subject:From:Message-Id:Date; b=BvHazCuLBA+QCSCtXM72Bq9xWDrhkKwFtg/GqEY8XY3wbczZTQQ+aPBIHctVr1wpyefrEDJ5Pv3XoEL1KSsnKIYUUXxW8n2wnjUIxLaJyZuK1wCGPSSs0fTy3B36n6wPncAkc45FNIlh6Br3kyHWvf8bzXY+8xch6pnQBws+Cl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0btjRLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0btjRLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6301C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726389953;
	bh=IVYuJ5O/cBDWGSk1bgUsSjpLtgUyqvvGkVVc5wBDCc0=;
	h=To:Subject:From:Date:From;
	b=M0btjRLhbic0e5LHecaeffm9l3TVgHpfEza+VZD31SdnDtE14YlBLvZmhOjgYRQWW
	 DagLpJsORU7tTKcUBU55BJ4cJqgGJQcA0qLNaa9Ik4qhEuBMhmJrDDUxGEtR2nEmMk
	 fVmSbLigcGV9detO8abotkP5OjhuRewIQg/P+U7F/VSi6Q/x88b9jjqfRfLqp7lg8h
	 +5CVBydj1gi+RYH+FeLlTf8W03KhS0UCvNvsBY6ZVgTnvtfynujBsI4Y/MWodVgk2C
	 cwcl7QxwSADHcbbts5dSnSvU+I4emseqL9QcNHsCY9xSgqWNUBCgFa81BD0HVxoWtH
	 6Lm0dNx6Y196g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BFAC35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638995361.28795.4957565952327166534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3788bb7be98b9b8c174afb8239cf37a77756de18b63cf4a775e21ada6bf9b0
Date: Sun, 15 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726389953
