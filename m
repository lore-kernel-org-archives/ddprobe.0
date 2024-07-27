Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AA9365
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722044754; cv=none; b=PexrNGauTALmGiAQ5YmWl6YMLEt2EiCmIPVQv0xqVjq5/5Lf2fV9i8NA/ZEM0eAosA6FxxfS/4991f5q79zjffuSzj5KnCGI+koaumX57d0MrTW/2U5v2+rvOu8Vz2VayaJ/6jr5iyVCduwgqJpE/4A5qQN+kYI08N3tX2L1JGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722044754; c=relaxed/simple;
	bh=y4wrEkEA+Xkh1APpVQoigsR3nr9a9w8Yt66D3jXlGg4=;
	h=To:Subject:From:Message-Id:Date; b=UAU+H8OJngWHKIITLTJjg66de2/2+eQpUccoPNZchuF+k679SCy/WYFtSbdcASkhHDTpAt9LyID23R2fdP22jRc/aG1ro2U++OCWFROV+x48LAh7yYcmQSeyo55wemrBU87LZ6eXQMCMRMvb2RhGSjZPpPh8Wdb2O+7uWzs5kUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Je577/iV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Je577/iV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF82AC32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722044753;
	bh=y4wrEkEA+Xkh1APpVQoigsR3nr9a9w8Yt66D3jXlGg4=;
	h=To:Subject:From:Date:From;
	b=Je577/iVomDlPHuN7oMK2FwcQwh0O2QyO4eD06apQ+SXQIfB0fSCO3uMSJehHJPhI
	 aw+7L4X6oVASwTMtHrqnJMI5YupZLPQ3r3F5TQdO8YaRc6LwbxFVJJb61lzD31UrQd
	 NA+b0RRwZ2+NMEVqXwhbsqaEeaycVsMtj/c+FVsAkpGYGa1Xqs7FaZ43jHNZlMLGAP
	 5UK5g1NwPFkuii7BYFdJmnIxjUc9sc/qOsmz9ymxvwo0BxyjC+Jr+BqyitrDIDNR87
	 TL6fiM6wZkOMxBqgc7I+5UTuFrQEgEH2qfhHClMOf4DR4L00CdyIwTrGDgHDDA1ksw
	 Tb8h/dx0wLKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C6C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204475360.25764.12715816508110330499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d7f6c38cd014909fe3cf14b791f9a150778f2a65c6d199f602eca753ae5e07
Date: Sat, 27 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722044753
