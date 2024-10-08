Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEABA94A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728348954; cv=none; b=EL1ia+Hwxlpia6s7a4LQQXZoUP2EXBIKFlp1wSyxlugupRKsfARq0QRcyiFxOK+8e/DMR35Mgfe3YmTaYD1ha/uobn/LWdYfpm553ne5F3snks5IkNdwd6E8jg4aRNoctfHdJ+99M7rfwtRiZVMByroiZQv1dYbiWOmXY5i5Vb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728348954; c=relaxed/simple;
	bh=PFjCpzniwhEEWmt/M3HrnRmXY9BpYRsPhZr0e0uPjRY=;
	h=To:Subject:From:Message-Id:Date; b=g+54hk1p0pEmE8RTpeF8pVsqKuNYtuOtMKiUYhRfaptbS2Pu9/FxxSoggg3/DKh4v+3xXDwgdlLnYGIWFMVOF8QSeB6HkYP5zxJinoa+O5uSUqnz9YZNnfh1Xb5ZI/uYDHWP7ChujL8fYxkWcYa2/3tZ9na8N4X4AJdLXbpUmbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H46KbekW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H46KbekW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCCBC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728348953;
	bh=PFjCpzniwhEEWmt/M3HrnRmXY9BpYRsPhZr0e0uPjRY=;
	h=To:Subject:From:Date:From;
	b=H46KbekW/m4h8uD5rJOqvN7GAYuqIFszcS+8ML+T5OEZxEZQ/1e8SLxeRcf8bUTlD
	 A1htwP/0C4in/kSJBDSbJAA890WjJ7SxfV7PMDm+qC69rcPivD/zrLldDQfL7d3WH4
	 bX35Pr2L2JXSFvfZBMHUWfr6iT6AggQqyVu5/O/gHyDsHkA7govykSqpz3MEYFG/v+
	 Tm1rTgOpSOuGJmYXHq4frYhanr1xSWKRl7ouyMY4jYuR6t568h/h+bG0KG+NPm6Fks
	 UDQjtB6y5aPYVMGg/3asTXlxmxbV8SZoP2ENz30gT99jAx/jkOHLsOP5x4VOohLlEI
	 +bY6jDqcTUvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD49CED24E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834895362.10637.12170460796792549555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e1735d78233169ec91d4cecb3b7534485e1008f22c4c0dccda0bfa0c8d20f4
Date: Tue, 08 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728348953
