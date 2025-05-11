Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF851372
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746962394; cv=none; b=DHv+kQHSqzKsI8wsfmczk3k5zgK/SjbXmA0VF7mOWGsjqv1TMmO4eDytbSJTF5AIIzDGQfSgxy/2zJuTFerCLADT+PpP78Tilj1XP7L7dkLtJ6/omC3X1txHbWNtVnGv7YUOSfVEgIrB0Gz8ttDMI5qe2AXBloCqaEpI/NkW/DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746962394; c=relaxed/simple;
	bh=Jacqlk/UadUjxKTvzey6/1PKUjb4UMO+G9p3f3oC+K8=;
	h=To:Subject:From:Message-Id:Date; b=IEkz7177sFTT1Axoz2DOm1iPHNk20KqRs5ovKmjxxa/bd+tY/WYJPd2cM4iBLAgSmSXa9f290AB8Z5C+1l5V6qyx1U/HDID/cAOx7F68a1Ot2Dvsc11XyJFzADwYPlaaXqhh4T1+2/xxqBI98CYyYkpeobgNTKvuKFn9he47SFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsYuKxEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsYuKxEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746962393;
	bh=Jacqlk/UadUjxKTvzey6/1PKUjb4UMO+G9p3f3oC+K8=;
	h=To:Subject:From:Date:From;
	b=UsYuKxEuxI6j0q7WOByHsrYYZm1AeqpM15lObssPfRp6DIvfndh+H/juKldiDI6bn
	 D775PIXa1K+iy1e/Ziix1nz5D4g/I6YzEcwNibMNJr2iwyDGliCUNBgLG2sYiHFebG
	 HbgtlSocmO9PTBRqU9wzu3maxJkYZ1tFt+alWZE/7Ss8qnNZSCozFoYx3uSI3llohO
	 aoUpK0l8IQqcclK8YdFglb6jGOuGzySyQvfS5t9pIO+IKbUGLHEWNjTsQCLC1tyDvq
	 NxQBZvGI2uNnmeFU2stigjbdGvE+CtrpoKylj8peeA5F6H8OO4hlB4bazUoFDFaFTz
	 uwfZPdPR4JG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D4C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696239357.26982.11346960515184111701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a294159b746f48fa1a46b5a47a518bc0eb267e46de8af3053ff64993bcbb2f
Date: Sun, 11 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746962393
