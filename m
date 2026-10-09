Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5816C3DA7D3
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791521434; cv=none; b=ZhkTnGtmMrM2ZdEAbw/w2Oo+xzjKmUs6b/ZvSzJziakzN/4vAZxtSyoVmtDr1bx+T4pP3Bpl9N760yF5XqT1/6ISYFy14mnEi/PI3lNAb5kEbzVqXs3f9dTHrjT5xxa5bWkVs9auZahep0hdSRPKxKAaF8BuCLnvQsQvaUBe730=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791521434; c=relaxed/simple;
	bh=OxT0QXxo4ZVCvroStf+W8tPsV5HH87HePvI/dkpWrq4=;
	h=To:Subject:From:Message-Id:Date; b=W9XzNam9sb/vauTOplIKiGarumHusN5qtO5JTYArkXNHDRGwb/I8hAryzdIIl3xvTNFjYvVnyQOFC1zrIEvTS5fHyVfGW5PlGeyO2rzNQjIGEUrGuuuJOWMOCkxmYShO/EFDhfjK/tfoHJO8Ik/sBO8yyZlGGCNqqBXgwTIQz5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFE4bfvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFE4bfvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB3C2BCFB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791521433;
	bh=OxT0QXxo4ZVCvroStf+W8tPsV5HH87HePvI/dkpWrq4=;
	h=To:Subject:From:Date:From;
	b=rFE4bfvss+7QXZphMlZIWnMS6iN5DDZoETbxVLbEM6dhrjZsvNBX3pvIit1mPgsbY
	 w+Qj5PeY5yrqFDGO6Um/71nbYjqaZ8U07H1BYv/WN/zQqEp5xhvtFUj+O+xaGb4+pA
	 QztmYmaQH48I58LKQEhyLIaT/fJxzOz7v0WKBifaZ0DWH1Akn6Bpgd1TbvghtCslBQ
	 R0bpy2KR09zKXsYdHW4o6fGeUrOJwXRI9h/qmDwChcyB7zd/2a3qSNeyhdGxAVWMXx
	 CCujyA0GQ0nBbIQli0oeyqnFugN2i0jrjn9aRlnYYvW+IbMV+9FDjqf1S/aCZGZfJQ
	 +uoMgMcyqbd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAD0CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152143370.12172.12012981278371276194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba9ebfbbc550e52aaa3efeb0f5e7b62722afdacfca411665068bb4558875109
Date: Fri, 09 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791521433
