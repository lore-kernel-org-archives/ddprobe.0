Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477C07260D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748189994; cv=none; b=gOlxa9zlGcOek8OrR4D5Wjlsruou2iLswSf5Vlar4g09fl8KvKgJQGjf9ay64Hn2/VB+1mIHAUISP/YFIr5YUZVTmfV/Cq04DsJSYqQR8RvGv/2jkz5os5ehr5we7UMx6z0NXMTFWpZ1IiUOJo2WuU8DDLDUy99awzOycaU4ld4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748189994; c=relaxed/simple;
	bh=WYroTq6vzI5IrVpIgO1gYwEp/5mNSHQ8yXNRwmyqklc=;
	h=To:Subject:From:Message-Id:Date; b=u6+QJOfDvWLEXo9MW1mJE5Nezo7IAMoP/JoEoaE0cvdN7SU2a42UfOkaJQizkcUNrx0bG+tdn84lgAdRfQbxDrZqQuPcrAhmaM4oTD8hFalH9MCxWYlOGrV0/7VBop0InsGA/u7g9406IJJiLOc7weBWvdTllWHevKrh804lhrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awRR8pwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awRR8pwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4007C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748189993;
	bh=WYroTq6vzI5IrVpIgO1gYwEp/5mNSHQ8yXNRwmyqklc=;
	h=To:Subject:From:Date:From;
	b=awRR8pwiavScYvJDy6zB2+wwFe/6J4Kn+j4G48YBmLjXU/pBERMLbC5uYn4nQfMjy
	 +qMwRHTLzTwyB38SPLGLThP0X78Rrbrlf4KEKyTaT47fnOdJ/ZgjJ8PTvuq9xIqYIH
	 gQMisbol/sAs49VatgpvY8aVLaEOl1OFxlDXnF/KB+rDbyS3G9Un+uJkID8iDdIy78
	 XKyPzIla7aGzKGurcbBNwxRaaG5QTSJVGve4jYSU9KD0SpqO9+bQbbwphLE3CsCT69
	 xt/VCjCfNT57aRxOZ9gYBGMJ2FUC5Bm2KOC/9huTKlaqUw4B/TfunmmHJeI16iTOJK
	 UoLxQEocnT2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818999357.3642.1242272292469056641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a203303bcc0ae69ad2c1e4117520a8be2a4d4474404384c9f60ee57627afbae
Date: Sun, 25 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748189993
