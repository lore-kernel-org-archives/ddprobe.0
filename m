Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED3C367293
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783654114; cv=none; b=SaN0+LAOzs308/67uCbjWtkLOKs/7paHCmYNcz3RflPoMyigp23SfoFCtFEIdjuuB5ajgaC1aQTxHqePr3ZJ1HI7USy/t6atabqHntqMAzhx8+rieRM3V3ti/FvSPflzV8mwKIT1ofKUGmqh8UyjUxcFQOkavHsn8fuLSW5PGfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783654114; c=relaxed/simple;
	bh=iy8OFPjNbGtjpb5Zqw5tKsMtD0DPgBtuAh4bdwFZ9wI=;
	h=To:Subject:From:Message-Id:Date; b=qDhz+i8lmodrW9/Woe7IHkQl2/FqfWXG7U8ELHuDhdrFSETAsGBuM4/PZ+o+A94Zu512ZkJ9E7JzGjFb1li0r926C1pkolJBJiVpRVDoq+GiP94uT2zbkaoPlNoFZXiOyK2JtV/ZtO5lHfQj8U8E2m35s4umqaRHRhyae3Yf84s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKu4S4yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKu4S4yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA42CC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783654113;
	bh=iy8OFPjNbGtjpb5Zqw5tKsMtD0DPgBtuAh4bdwFZ9wI=;
	h=To:Subject:From:Date:From;
	b=JKu4S4yX2CFRrld4pmGjmsPxcKbQ/i2EU4AhE4vzZkq4gKHqDGh5WYa3qPf+HeuSc
	 61YJGaIeFdTo3R7ABWaWUELg9+eRlmDuU/vkiN3gt5T/7P4hFsEkfIoKsgcMW6ui5U
	 5JbaPVBfHucNMcIUbEsvWdU65tKUBiRVR4vgvun5h+dd4ou22nhju6sinq1nPwztYe
	 A2nbivy8IIMXPBq6e26mbhN0IEEmacK52xOqmMivSpe9j2jdvxWik4rLwzsNZq6xg7
	 D3ZXL1QO/Gr6MjSyO47yC24TasZrhAUtm6mD0rd9mbE3JkNMjBgeNwrY9l+T++DMUL
	 eHjziIUgsvp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A907DC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365411368.15927.5210092211946591985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac77c5ba920e883983a00a39ca6f639853c79a7381201186f4e990e1e045bd0
Date: Fri, 10 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783654113
