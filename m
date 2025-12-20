Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218DF2CCC5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766255034; cv=none; b=ofZb2AbOPpyhgreUQoLbcqYAha+kNF03dr32e8RF8fs1KvWgXysdd550JdMvYFZJ+x71j2oSJFLEBIGxC0X/llDfd3atmjHn1yt1Ez4rBZgdCtbRMdV8b+rUCVAIOZ2Oh864N9t12D/fSd74TeC/GE9Z7K/WvePyvUE/oxauGVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766255034; c=relaxed/simple;
	bh=ggTo3MQyySCv5YXZbVUu/kXDFwKlFSFvHlSElOohcS8=;
	h=To:Subject:From:Message-Id:Date; b=s4u9lmU7msKlBs80C77uOYlJDMm28vCngWPfwiQR1yu3wfjGQt9VNzkWgIZpX1Jg9e6P/hrBtC83j7P7rKkun91sF/PRQ3R7mPWqQjMwfWAr4cZj709zhWz/IXzmi6AoTj7ItwmA890a1fJ9h8c8IRbM0z8kDlf8hji9IONJ7Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pcb5UnPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pcb5UnPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9FCC116D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766255033;
	bh=ggTo3MQyySCv5YXZbVUu/kXDFwKlFSFvHlSElOohcS8=;
	h=To:Subject:From:Date:From;
	b=Pcb5UnPGPWJqzQu9aRR6r5yJZN/cYhIBJrqkipppD0C92q91ue4WPoQDpnysfS0Ef
	 yxxOPa+e1Wh9TSRm536CYfvgbhu59J83rztLKLfeugXmPQqhHFQNeHnBAjrbD5KLj9
	 cKl4XRvXlVyt7X/FObNjy7EFKirL+9aSm6/Dv4aCoihUHYpbtBcthtH9emD7fSSypi
	 djyYyKaSC6whQ+wt+wk3IRkRxoiE7nYv2tlj2ckJzkX7GI89YHDg5UpRxjIpGm0mvQ
	 +jyIovcFDj0UpYrfPkseX7/g288T1KesP3Jzz6f3euqMoxw4pEzkWIKh69K1N7I5vQ
	 jj0phVVIYcgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906CDE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625503358.17907.13675684048401569524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff20b3f2017281f059449b296bfd60f11e1f10d146e0dec191d229521e507818
Date: Sat, 20 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766255033
