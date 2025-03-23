Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DEB136E3F
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742701794; cv=none; b=QlXXBVIRR0tAso7aIa/F1cawWgSiGDzNY5JidENGkG9KGRxLH71Vv6J2gexQOLf43iIWCU25S+6drQm19v6zdTuzO4n+W1jux9xHDWTidirsg2mWLdVOOFOjUuKCQnyMLCnAqrLjXPN6kQSkeOtgc/vb/Z+6i0eEMnF3aynRWhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742701794; c=relaxed/simple;
	bh=eW+Q8y0GLCcsKURGXRFodquWs0k+tR9UsjlUKzihpIA=;
	h=To:Subject:From:Message-Id:Date; b=uG/dVHtyoFi1zTBtSJ4qbVnUwu5nK7sgp07kWEJjOj1aVud9SnaJrPde1CTfOSKZtVUSVhEaBTV/GnnNdBB9Cy+5jmQ3Wi4l1KIQo3a9ojocolSW3Cs0DnwyIfzHFokvxhsEm06TOTHm48aQwxWWIWPnDD+GjZy66AS9ag/ZUM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhGG/8Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhGG/8Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3D4C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742701793;
	bh=eW+Q8y0GLCcsKURGXRFodquWs0k+tR9UsjlUKzihpIA=;
	h=To:Subject:From:Date:From;
	b=UhGG/8OmqKOxQI2VUUcFFkKtL318Z70ZZd3sRW8Z2iKYHsQS4ptcFRtkcgpGPVF0m
	 t9gqd0+q4UebCqOzAQBomBN9cgD3LMhjxV5kjah1iFYSFe/pVMKyTdvYArmmmxMoBc
	 QI8aAqFN4XDEFEE41bdLSk8PyRfEsQMrszsdD5EcuohOrV2GLnD0sdKuI2ePthflFj
	 SEaoMZ4GI/znSR71ZQYjDeErcfb5a9YAq1jg7NM/FQtmnBC8V9VUP4Zf1dFT7nTQXN
	 aZKzKrrG+krI3a9oc/gU+f1tP/KCk0q8YI73JSfw7L4dGy81sFlhxLfAT3b0W34Yun
	 GxUsHsAHy//yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9916AC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270179359.15620.18431715690180693617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8955e1b29864e6526495961443e1127544c7d2928b0584c20ee5f72d9a170b0
Date: Sun, 23 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742701793
