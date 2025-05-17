Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E07199E89
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747506594; cv=none; b=CvlDQBkQzAxTlMp3yTNIKAfkS55mc6fdtUfnBxHjTsjsOy6TH7VOHR4+J0xiCLx4neSVojZDKG+MdTAA9knU/wtR69arN2Vv+TkMPj+WHTC3zge+l7efUI5UcQfogkgQTOld2sCPr3FbhJBV+Wa9iz6Rnjg4tNDa0/yaemCwHtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747506594; c=relaxed/simple;
	bh=YRcHQhqhqU4FhVowlVp0WwWvUuBNqV3YjiVdv2BobVg=;
	h=To:Subject:From:Message-Id:Date; b=dM+byZiSg5vw1ZGZM6VIOyCH3ikUJdGJLrm709e+FzF9Hwv2SbpMrERIRpbmDrxS7+eKgl55lXBuQQ3aDWPmCBONnPVS9CnKNO2+6daYWXetDVJcljRSZBV2Lw4KFgtBkrYNE4NNg9UhvnkHPnRXoD+Bawij+NoUEvuN8dr6qc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0va0VG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0va0VG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4708C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747506593;
	bh=YRcHQhqhqU4FhVowlVp0WwWvUuBNqV3YjiVdv2BobVg=;
	h=To:Subject:From:Date:From;
	b=P0va0VG7xu2BYig4uEMe658jdCFG81FZZ8LZaW/tfH6x71p2NBi/PTdG267sQfQA2
	 zgPgCPxJxY06qHs4E3OtG3CueH2dI8hVVdMhLtdxN9Y9zTLObZEkwKLhYi+GbAX1un
	 qhpOulHdTOwVMaWa/CGpfbAp38ufisMLfWUQGMTX+2iHYnTuA4tl5be00ck3jfWeVs
	 6nXolGQy6YbOmHY6iExSl5/xx/FuFPsxrf9Ewl0pa1Xafldudhp8Hz5DkZHqQpfJH/
	 02OwY7EFuxNiuzsFzoJISAyeKhiJxS7mmCZ5YdfTzbaFfTEWgtap+eG7Z0J42gpyB/
	 xv2tFU646scIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F167C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750659357.16576.12744707256906905706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6bf1ccb2b8e115c568659f1c85faafd248fda90802dda42e76904d5c321413
Date: Sat, 17 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747506593
