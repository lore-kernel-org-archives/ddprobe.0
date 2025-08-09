Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281C62248A0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754779195; cv=none; b=eVRSL8DXjXFy3GzTeMcZBaZvCgKwPeUggF/UG3E+95iTVPP/vixvjK+ZL/YVaajKMd3/N7rtegkKSmrH9Fnd0/bPqlLLnuLyR6oeWjTulPT7DHibmZUDbYrXniXp6eZd9Gpl5fVXQMzD1Ip3if6NrkVBzVRW7bf2id8h5Iq3340=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754779195; c=relaxed/simple;
	bh=F4bfF8YyZxn//NoZy4CTIyIq0Aj3erpDATUIx/Txndk=;
	h=To:Subject:From:Message-Id:Date; b=tDnmc7CIYd/IfeI3eTEfgG5Eone1rdkykigjUz47aJ70FT0CpA8LQ0/yIdxNCIlRUC4yW2aPg8QW3icjIFq+fbrmUCnZ1tHvw+xweszXTa2eaGu5xge3LB9XHby9WAIV6YTfQ1fesr6QoxTbAOoK6azPCOAju4PPPjIwZOHM1ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR1QxgGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR1QxgGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6170C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754779193;
	bh=F4bfF8YyZxn//NoZy4CTIyIq0Aj3erpDATUIx/Txndk=;
	h=To:Subject:From:Date:From;
	b=VR1QxgGamkQv6Kxc1BKMbeubqfhLV+0THPCLN1yTH/onEMUy3svHNge1WvqZm4Sss
	 D5CEp/Cgno/T6flzvEyiNIKbQzbxQS10wUEZ3EwuD3zEnb/2Oo+rxLB3jCoF8Al4KA
	 xwaSFzCsFxFwmXIuNZoFxrVBaH0ySSGMbEkChNv4gwNIkQxotAGKvQSWhs3uSd4r1i
	 tuycVgJXssHaGpA8NZ8TzUeIjLj/a4Yelv9QRdoqKo3A5Mes+2kv5xNgJXeRRChFiu
	 WIaA0+w2n1dTptwWYWperUdh5/V2wAIv0OU1epIUkrvE9qiqlyKzLXkdV2mGwo5xkZ
	 Yrv4TywzJhzVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264AC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477919357.30883.11631137438772260015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6867cabd0496059d56be7ed993756b397182d58dac37526f92d47bd3967c0621
Date: Sat, 09 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754779193
