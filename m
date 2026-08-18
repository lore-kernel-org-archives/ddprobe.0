Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6940B4207A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787019634; cv=none; b=NIRf+rwIWCyLQesghRGPKpnKakvwiQY/EhcBomfxY0f/RwsBxDS3MaDEkrpJUbMsje/YQ4e2USW/+fKXTp6y2Z55NAyro1pGAu4fOm0nDzoj/A+X2Q/hoXRIVX6VtagHkmEvl9YKPI3exre6E/FIOHCEqB5hDa4M8l5gebkROjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787019634; c=relaxed/simple;
	bh=V1mkKfZcPx/4q2N/GmwcuBXqs9/YBrFVkK9cWHW2p04=;
	h=To:Subject:From:Message-Id:Date; b=tkPA/dVBOCUlB/cmjEf5YjH8XH4pExTYXCfw/T9f4W0kxKazvjuaGqnvjGPS8f4QjtaDyfNTZQChk73FnQyB3d/Nrl+B0qZk/iA71J1pmXo5NRY3Lkuvmxa2WUUIQePGF1aqMn3rJebOLTu948bdrjqxHsM4xDig+3hub0WtPJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyY5ZfXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyY5ZfXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB861C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787019634;
	bh=V1mkKfZcPx/4q2N/GmwcuBXqs9/YBrFVkK9cWHW2p04=;
	h=To:Subject:From:Date:From;
	b=ZyY5ZfXzucdwl+EX8Pr3Yw0XL84asdMnqzNjjpWcpWCRYFHK63LoswjzWeVlKmYuW
	 GGx1MdezEosipRMhyzbPegaYw8RAFJSPD4SPzVLBIFliX35rsvY2JTHI3WyJkPwcC0
	 eM2Ht25uOoViYNH2XiyaZCIDuacLBpKOs5eFKVSee3gXJOd7aWxjtv7PD9VCyvOLyg
	 iQAqAQ1c371va9F9k6p+/6rYHfFTm0nh6bDGj/o1e0ldP+nPNra32t7bYtI9pZOHg+
	 FumAQrkMRxPMPF2KAMycGH3ho/3wu2rpgFjO6EgL8RPw/ubSnWyUitYhYL/HKRWPQu
	 jMT6U41UoUpmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C037FC5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701963374.10377.3360314336420606441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef16e5c95458e20fc31dfada6094ab86d2eda5da74bf8b0e94869bdad36aa9d9
Date: Tue, 18 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787019633
