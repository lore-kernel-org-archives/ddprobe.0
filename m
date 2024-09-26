Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EEB19BBC
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727357154; cv=none; b=rSAtiBd7+lyNR01kIGSWapxfa9bL3GFhjgJILihN0LNjqhVyStH+Zh6fiqPlM6MLpYWCFg0mujsFopIEH+A2kB3S5F2FmAq7/StVgtlyjtV736/EWVKFYmosjlOILuReOF8yL5AycdEZ1HjD2P6hpH6n6qt0JVZ0XvTj+O6VjEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727357154; c=relaxed/simple;
	bh=ImyHL2Sr/Y7xyJxZ/bJfqJHYhi2zmDYhRXJrcxTWGzI=;
	h=To:Subject:From:Message-Id:Date; b=fjK9D6Tc8rJUAkROxu14+rJtv8zlViKfUfDttrfGm1Y8rDS6wyrO/eINa1fZZK9qzekznZuIY0pvlbzpQyZ4CA5koTl/Jxijr8rKmpkDB7n3bHwQUU6CqHlwCB6yjBp9R9le1rvPkhjyVKrknV2SyQVLsUhOMQFmrl9ncLIuBTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDlAT0td; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDlAT0td"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA61C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727357153;
	bh=ImyHL2Sr/Y7xyJxZ/bJfqJHYhi2zmDYhRXJrcxTWGzI=;
	h=To:Subject:From:Date:From;
	b=sDlAT0tdw2Y4vD0SQOiRAFxBKOiIpi26AfmkjPizCOwFk6VCC5Qjcr7ifdJyPycHq
	 DneTpznie6adsEk/KzZftfQCo4APLL/e7TWTQSId67LJoDltvHltKDwXWTuwbiLpQ2
	 kdySORPg40nJaYAHi+GPJTQG/Yw7OeCrHTCF5x/T49Wna8FHEpy8vXbV1MXJEuQcpA
	 cLPmrvt2XEFZK3A45PgrUaq2ahbRzzZoypVpdDHYD6k+n7NiVpqxJzP9cxq13u7gT+
	 /tbYiDq1lcbvjxondhOpxSpOPtxuJmJrJdJ6MzeuPqNDqFCV3h+osl5yWpkgUi8YaS
	 klVeZS8tvEW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CBBCDE001
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735715362.18001.3769016417061198212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9984f940f16e5a24a76083888f76e5f3807f81747194d27d7f2689c21dc55430
Date: Thu, 26 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727357153
