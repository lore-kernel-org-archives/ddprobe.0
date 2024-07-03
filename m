Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F84C6C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720037723; cv=none; b=jIfct8tqDpgi4kXGsQZ3D94eMQgD/SuW8/6VUaARcitwOqYS93wMWhEF5kvFE73GpfRdxNA1OndRZsn5IvllFwIuoHWY0AcTpLF9TSOXwP5nj5PMFaklTnAXSuwXwphMyhKcXLiMNVYdH6D8hfMP7ZYTe+yvpcbKjpFJc21IOP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720037723; c=relaxed/simple;
	bh=3rYcs775xTlwAQZkvR3q6UgnDUKPSQaOOQhSQiW+pxY=;
	h=To:Subject:From:Message-Id:Date; b=SsVgqbHQQBeqTcTuB+o2aTR9n7r4EbkdtEr+knGRfq3K5MnMBAv3kRIzWFAJC9Ox8yTC5u5lFMxv0gL2CmpsgpCSSTd7reTTyEXLNYhPyBfQSKNeyyBRa5wzFZv1vjMDvpdo1toddBFlNdxK/N+kY20nR/taSO9bEic+ryjm02o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuUs7mD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuUs7mD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF30AC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720037722;
	bh=3rYcs775xTlwAQZkvR3q6UgnDUKPSQaOOQhSQiW+pxY=;
	h=To:Subject:From:Date:From;
	b=EuUs7mD2FdWwphdaAzak5g80rJFTzVXbx34jnW0NdcU4vBZUD6D9RSvNsqmG4djmA
	 MG9UVqz3GHc1zbAtWXN9pIz6cX7rNEpVH3XfwieKc7UaAcvRMPxuoVH/tYNVATPvhw
	 1TLb0uGccyrJwJtweC/GjNB7sL6RtnF2PHfpe8oBNvClIGVxvNOM1Uf8QCPMj8EHiB
	 SdZOsLW6yUHI393VinvNjojMFsAkHW60hH9kXZe03sb/BuA/7JDkTPuURL667JTEnz
	 Ha6g+rAsMrRf/YNRJeWnJ6reAPiiuBHAPRoKR0b7yE44Mg8PEwnqSQx3IuBaoGSqm/
	 p187Vqrj9+M0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF96C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003772282.14233.10156857463491329272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a64d1612f5aae4e22f0d731b702a17d1aa8f4df3c7dba10ab935d5eda4afb2
Date: Wed, 03 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720037722
