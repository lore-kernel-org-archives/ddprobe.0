Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199186342
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758456594; cv=none; b=Bcm/J5Nyz6FEJxTisrVCI2xSXLy6W6jk+bx8Y5rPks919kx1JDtoYinpfKn6BeFrRLctwQqsk5hpnS8X1+RgdyLsqQ0YbtwNjykL0br9sEgxFo7V3518G8nPujbVOPsiouaihsylKoeXO5ns7JCn55nm44ZoiKWSA0MJXsLw53c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758456594; c=relaxed/simple;
	bh=BzqtnQ/h/OYpSaJrfAuz38tQiRQcRu4sCMUHHU+p5xY=;
	h=To:Subject:From:Message-Id:Date; b=T/CdN1bIZ6gXtlStHPRWhi4tHn9AlUybo9H9Laf075OXmT9Agz46soYB+2KaV7S6dZlfsgo5oVrpemTXFLSxn58hfSZfUkdnQX0rVlo+7KPJD/huuKtYTJ9xv9qFtDLJpuaJgq7RetF+oFNXYi+EOKXt554ZnUYTo5f07mFdL+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHoxzR88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHoxzR88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F20C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758456593;
	bh=BzqtnQ/h/OYpSaJrfAuz38tQiRQcRu4sCMUHHU+p5xY=;
	h=To:Subject:From:Date:From;
	b=UHoxzR88Qik8ncb0kWzsMFK6Wv0o/4b9cHY+WnQ9nYaeeww69itrHXXwa7gE19e7r
	 3XRCESsrY6Yi7zlIaTojIb+TauNL1njS1x7tnjSSoWLh0tK/6ytRxBgOolT+QDYvcC
	 lI2ZDSdGXFm3mLahcdpaXkCmf24QjVehh8avMl/3Ii+ppW1Mbf1dOjrlxzgPO8a6Hu
	 msdao+Oei1KnPOCaQUrhWoaH8Kzfq3Sl8Iat1YR5SuGJn7+FMF14YY2KZvgwP4EEAB
	 ewFD4hX+pMDf+30EYBXmGtq4zziHoKO5RxTf0bQGg4VDS/P1dATsjXeVvv/NDkyxqF
	 lLZcpFzSNytLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92303CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845659357.26844.6709112995664946507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b880f36ae88827e9b863d9252c4e61eae81d4f24f53ddf8ec50f0a6d809dc8
Date: Sun, 21 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758456593
