Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C664155CBD
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750649394; cv=none; b=Dtktma7Moc0nbwgLX59kRp4PxxVnlQOYDloDYagSkQIQQHfV9oh3WPTbGiAoofMl+cfHql00UdhmmGaOYNzYdcDhGJO3kz2zepyhGsDYuJGr6vexiq5q5xq3+wcfCl3UdYoMk7Am6hD30Wwe8bPhUl0DF8lNFU6pNBQ0g2lWpB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750649394; c=relaxed/simple;
	bh=cCKgE40iOFx397TgQ7CznNvJIIc9wTKhmqzngRjNKJo=;
	h=To:Subject:From:Message-Id:Date; b=W+l3KKxsJbLCc60SVGiBgJH658grfcRp6mPEFgaIFV5YeqslNJYlOs5APsV9TljIcpSWL9E5caLK16Cje4cbdI7BZeAGRMJ8kJaDOrVrQ9NPlg7KEms1ZmszBno920SJMSueEWJR2aK9C7y8bwapOLjEJPceG3caEf90L32Pphs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icB7rUED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icB7rUED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750649393;
	bh=cCKgE40iOFx397TgQ7CznNvJIIc9wTKhmqzngRjNKJo=;
	h=To:Subject:From:Date:From;
	b=icB7rUEDfq1lBhfmXHq4FiDgAhUU4Oa5oRfQSpVqZmpQPzonEemQkCxV/V0zfSyhK
	 IeB08ZzGP2IfEcpuVXhUbDAyUyvPfR09xHt5GA+NbW69fO2WYhEWLKWOO54HhFCtCX
	 Q4xSTmSsoBMQwzhcZ3oYFdV3gtdnsjvNcT1+JiXOtN1D4u+7ES2mSZo81EMn+dqQLM
	 EssGTv+nnfBFHGTo09B2AUlikUjT5+h0Lb2Mz2dmdv4bdWQ55VeBRRghJ0ghsejp69
	 yWlK5hM4M38MPIiiaSHPh+w+qTDvOyuCKyv4/MrGwfjEVWu9kjHw2Z9nX2sGy4eG/e
	 c1UsfecVvl9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4DC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064939357.17194.5899708529262615646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff14e443339b45cb2cf5059e56918c9b6d5f7c8c426ff0fef0df0df50b06703b
Date: Mon, 23 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750649393
