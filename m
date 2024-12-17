Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1200B157A46
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734479154; cv=none; b=S1oOEstOuX03VTlke9BGufkvjNdJ79/kpkun0kuIMRnf3+WALcW24QzlSOTzaoGnYy1XI9O7y86FdGkm1JTB0ioAUCpIGexsI3iTyzWeAosot1mzFttImgqTtZaol0f6wMbx8TvhA8+gjivtP2tkKlQ5+kxGH1KL6RAwoSbW8yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734479154; c=relaxed/simple;
	bh=e7PO3Y1JSt3UUC+jsY2mXJRywjKOQwwchw80ZY8CncM=;
	h=To:Subject:From:Message-Id:Date; b=b2R1iDS+tYdmhr/XltG/CwikERLtIN48selcT+zJCpCbKlYCOSFFv7p/Aei2utfHn2Rsr2NtTCVI14buT5pHm0dyH4zHVbP5RUPjHs8sdqZ0YZuDvUqirgf1CexYuV7z7aCjbBGr0T3fmDWsSXd02fUUSkh68j9zGwzDn99tgUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjYb3nbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjYb3nbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7575C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734479153;
	bh=e7PO3Y1JSt3UUC+jsY2mXJRywjKOQwwchw80ZY8CncM=;
	h=To:Subject:From:Date:From;
	b=hjYb3nbXhXuEPXuwt5OYHGzlfm4aG6uQ0Mr5a6+mBIDqUYLZq29viKBAYcA9y9CdE
	 SzqbXVvT9+Wqq37khYqJVG5Yg211YbnFTuGGmuJZo3zcMiehE7/W8lmPZ/CYLziigC
	 Cl67E4E+D5HgFHiZMhYCh5UHQz1StA9WY4cjQBpe5JtJLLsjVLgyHFVAqtlvMghad2
	 N2ZSLlrEhYQrYwihVACZzZtHTBY75yXKDTnsqp/3Y0LKg93YDsc/eUAVrXFqdu573v
	 N5AN1oJsCQfS3N8OsLDp4nM/VXObXqPMhXYvA2znYnBUQfRjgQvBEBMp1bp+2BS8pR
	 sKVzjH94CeICg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C1E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447915360.3661.17184848726896706890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afa40a6e99c171a898239287cb2e64b2de24cb76c64dd960139f86eb0bd0709
Date: Tue, 17 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734479153
