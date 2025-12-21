Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84816F288
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766277234; cv=none; b=qfdNZk8Vov94xSpExmZUlMEBbk9sxOYXvcII8YV4dWH7YYA+46reSkvq7WqpToKGcPa9vOYzIP/jUYlC718MjNoFKYn8qIRVqolV25w9WAKkShctEUKdpqoBTwIU+SzRBEjIKbAlo7CTMzgsapVzDiVxT64moXzE5fVqRR8ECyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766277234; c=relaxed/simple;
	bh=iqRzYdg+fe1mxNeWKKoUj41fZ1i52jloOF7dhJHytFw=;
	h=To:Subject:From:Message-Id:Date; b=IOckkqe2HAwPOPBREjJqG7Brw6HXtcKe+d0/u+EpRzMyTX7nWRQE2q50cimPNt4fGhEZo5r+rY1az/+pp/HSiL8I42pPVmXmKWb4cneRgQLYJZyzjCAFKQdjXWSdw2P3C/1pDI2fSvo5IB8X6FSlKeWPq+S27OgTWGpdU4Iwlv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLSo/wqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLSo/wqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766277233;
	bh=iqRzYdg+fe1mxNeWKKoUj41fZ1i52jloOF7dhJHytFw=;
	h=To:Subject:From:Date:From;
	b=BLSo/wqBlTdPTOdMBJ5ACrHEMEaebo1W6eHHoaiFiHJQbpj49KscgQTRe3OBCtbHB
	 MowLha2HifgfHsL2JiMM6WbfhCJ3DECDKkgrLtlwbQz+ziqmuVNg18Sic9uV42ylqC
	 S0FKjlv3UIikpeqP6n1R19Gd6rLt9EYUL9OCZHHiLMnR3xJ/062R4Km0M2L+zNjghX
	 7WXradTJBmWtIWr2TnHVXU735Dz/JHBKJRqHVI8hUlVGqqjp7Nun3uYf73MtiVCuoP
	 U49V6ksx8lZ4MZTM1tLXINMaBHLOVTtn7sjU48oG/1a+roJaAr6HNY3JqX/xBuo69x
	 /ZKZ3UDBU1ccQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FAE6748B
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627723358.20364.10293398278711774172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d07b719f6ef3006c57dfc16516b03e001f861304bb543b575fa76b8802f35c2
Date: Sun, 21 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766277233
