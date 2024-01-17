Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCCA21346
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705503497; cv=none; b=UfWQOzGRkeSph0VZQCB8zHohMt27w6n2PXpqhzpe5fa0TPl1CYiteftYKkDbcENXoYH+pgf3NV19KZqobCxzzI5GezTWG4dh8Wbc+ceX5nsaRuK2wHaxRgzUgnnnGDdwxqxlkfDKU07eEtprPaSDCRkh0pUeScmkCg7F+zJwcD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705503497; c=relaxed/simple;
	bh=guXClrWUP2jLpLzWgU1Cqv7zkA+PL4MJvCt5J0yH6Dw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=p6uZchcLET3kd5tyFHaZH/TO5tsfZ/um2l62yXST1FUeYvn1y/tEem9FrZoxbntHnu1I080vdVmW5vFQ84IyhdTuO0vrxs+VrKbZUYTAyI/ZD8Gp501SSDLjdGH/0PTRmGnSYxpnblH5TswMVMFo7sI9sVnf/VY/7aKPjbMd35Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD5p3kV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD5p3kV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FAAC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705503496;
	bh=guXClrWUP2jLpLzWgU1Cqv7zkA+PL4MJvCt5J0yH6Dw=;
	h=To:Subject:From:Date:From;
	b=sD5p3kV0zIefF8s/KSIdYmode0uRNACSfLHZIPIg6sxDYqFKqNKmheaGm5T8r5jbd
	 ifDO3MrmotSRnqlIXQIuHwHjUiMVwZM88MxxCyD0N6HDNJlfAkuTcx5loRc6TaLokU
	 7/FMNr9x9v0C3hg5vQT2FvBuGwB2G2Vd675biDPJjIF7XvDByjDgZdN71CfreDnq9Q
	 3uB5K7sa4Pk8G+b2O+r2BpuERN20igsc/ahSTRoaRzSAdvx1cotRNLSL9XKn4cvv59
	 GY3SmGcsvzQtkhyHAprR0K8BwMSjpgzHnFwceu+Fy3bWwp5QEFc7CJNga74iA0SDKk
	 vM7+6aptsIGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614A8C47DA2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550349638.28990.5720057781900555522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248f9038df980ea419c170d295bc76fc1bedb8c8cdc54aae60b955117b1d92c5
Date: Wed, 17 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705503496
