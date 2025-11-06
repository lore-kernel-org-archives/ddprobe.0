Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1422823817D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762454994; cv=none; b=ePQsubXgTRkitFibRGr2R5g15Ahj0HIe4CPIb4YZq7/DHUTt39Ialv4fit6N9ROF/+rQ1u2ozK75xiWaCPjm1HlvZ5YRrt2d2PwIIFHlChUXIF24SEJdzpL/sOTCFVB/jTcNiKC2Hq/nVozGojPVZkN6ehp/DuDjmOmgcQdUobo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762454994; c=relaxed/simple;
	bh=YE5FKFgUWoi2xMCpwI+INj6PrgNNPnsUYm7956YrWys=;
	h=To:Subject:From:Message-Id:Date; b=u8vvua5rAULibx29lQ0uX3VSNYaBSET8uJETaySrKVtkDr3RHMpNP139RPoSAlf5qVunp0cHzS5QOb0SaBxZ5OvLziT/5BL/u5VC8kaw+d5uLnRdhZIDeUm75qftoB8XXyw8um3gYVpCgmZPLcd5MhXX50gLAA+GIemL/fp8xu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYbO1qvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYbO1qvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EAEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762454993;
	bh=YE5FKFgUWoi2xMCpwI+INj6PrgNNPnsUYm7956YrWys=;
	h=To:Subject:From:Date:From;
	b=TYbO1qvryz5nTykUoke9paDSfhv3bln07xqug+lus/gp+ilIfGo7lMjY/uKwDVAuG
	 HktThZ75hxJ2aesH7JSBFqkahu4BB0XX77UXh6Ci8sZduyOwOm7lLMh+A2YAZ5U8ut
	 gryn0d48FIHPU7vYIkOR1TC6FRXBk4qJRNde5pdHDkOxtyFMJ5uwHSh4QHdyw1bEN8
	 g2eCbmlf4HP33P8Zkr0b2bsboccWiAa6E4+x5Zqyl1CRwuYaj773KvQfZwbVwE0e2k
	 Yt6p/V9qX0rY+MTQ65MqZzpaocucLXHPn3YlpuJKRUvrRtAZB7YkeCnNyY/r6HuQhe
	 s4MK9sAsOYBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98312CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245499361.4622.11534326345372211988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4f65756ec0faa2b5d082087e190cbd7c4c384ffea087c1cbd537a4a3491095
Date: Thu, 06 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762454993
