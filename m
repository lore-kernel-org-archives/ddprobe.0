Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FEC2D5922
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768466634; cv=none; b=GJ6M0pkcnNYtt1ByYv7zJa5FVg5M+pvWqPAIX9bjQszD2AtyZkiPyMen9iyjkYwb8/cASxg/N5M/9g6z+UcQYix1ft1gcj/XGxASK4Y/zgDYk3w0RiHimFF0wkMzXdv4syUE9tvamUay758JePHlM1Ku//R4PMJoMMcuCLOfUkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768466634; c=relaxed/simple;
	bh=cVqiFBhcY3KkJdTShrfznPuvO2x/dxjA+cgQKrQ59Bc=;
	h=To:Subject:From:Message-Id:Date; b=F0m32j8n99eId7Dx6wvXO0wHKPcQwHsXZm+0QARoKDckeLzOo3s7uoEeYzvsjvh6Iwv1c/Wkxpcgo3R6Idl7rNLVLD3eod2J7CDIiwguTiKSRaot2PpGi7xL7GiGTPbHJGPfIJfn59adMqGvd2dkhtO0a33GNebUerkjQeeCcak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Innq8Uph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Innq8Uph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768466633;
	bh=cVqiFBhcY3KkJdTShrfznPuvO2x/dxjA+cgQKrQ59Bc=;
	h=To:Subject:From:Date:From;
	b=Innq8UphFuORH9xWl27PfOvIArE5HlCQaDkVKUw4NhQY2jnMhMsusMeXCrmS9ROUP
	 L3A3MQ7qJmhG8OkmOdxcEfnzZM9aT7rKAbvQImtO/NXtArbTlg+qQJqGQEgxxc7Lt3
	 zEHGQVVmpmbSBi3lXg620SjTH/GwUlbddCWarNQVxhPCUlxZDtyNAM4SOP5ENhOaAO
	 I7MJb0Cmq61lrR+74En1jRl0p6983ywvgaVKZwbovEUT3I0O9COhJfdSZ3kB4nmPMI
	 jqbaBAdshWYgWbQqkD2qUJp+7D1WSfIXJzoBr6mpXm5rGVIDsy2Lv6q9osNaSu7M1A
	 EJwBtW9NjlEHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928D41141
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846663358.5720.850929997612912905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c71971baff881210da52c0db295dc582624bf0da0e802a74f14ddf8f76517b4
Date: Thu, 15 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768466633
