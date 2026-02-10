Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF711F03EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770696834; cv=none; b=IaagzN7SAjCazXXMlgYZN9Kd0KsLkYBZchhqm3zOcuBhrHGYbABPDzAahhy0yyFFm38QNIjFUi6QgFn7drbrsZun19tQ/EapIt5/41YQuCVXYQmS5xZ9ZACh1l+qfdmzJLIx5TR+NNFePCt2JYDCiCCI7P0lGyhJa8qeQsMh79M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770696834; c=relaxed/simple;
	bh=9LU2TpxvN/rHMk5NHwF5bj/WfD75mzxtL6zV3GML65w=;
	h=To:Subject:From:Message-Id:Date; b=GTU+QJpV87aRrf65UPC4lFbuX8qYQiCg3MHVUleBPilWYfws/tB0su0YDArstgo2SbXVgd5v2i7+yOOIFwasm/XIh8JveVBaCc4zAm6LyFdeH5Sc0OpS9RUcpyVUpQHrdPAFhT2hVomofMTWJPtzvoo9Nztz43/Nmh/Ej+yebb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQa5gAdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQa5gAdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BDC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770696833;
	bh=9LU2TpxvN/rHMk5NHwF5bj/WfD75mzxtL6zV3GML65w=;
	h=To:Subject:From:Date:From;
	b=MQa5gAdj6EYbCFRI/e873NjqycznODS0UDt6mKPVsnfSXVrnDV+H56rdAcAc+iMUt
	 hL7/dagyhlbgROP1TYxAiZ9ZDSK0smXWmfo2sC6Ey0AlrGv/4HjJmPgH5AoEhrPEKw
	 BAm2DAak9NYBV9HG5sgsmYvwXkksi3l32jjdM7ZAyFTZzYLoiF4wo9rquaMx4nZPgF
	 q2Y1Ke4avUCtcwBRDlmi/cDtkQjuuos5myJ1JTb/LJJ/tsUc3IflAQczUCef/DQua/
	 ofA//rIxoAqy5RT4gDW7T2/Ym0Tk0nZGiW8cS/8BPnG155AzEQhZHd1b+jS1PJ8WOi
	 IuG+mBMf5otHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91341EB28F7
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069683358.15915.3211353875987051766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa7b11be2a5eb3f6f4bb28e772213b297b0957f120193cd88756ad76fe5dcbd
Date: Tue, 10 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770696833
