Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C6D49365A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787371234; cv=none; b=BiPr7bZOYMHierfG1BNxnbZS0Pmcb0sRrz9mwvfRW2ccSUcmZ/za21mxFPlV729V6R7e5o/Kc2DdvcGO2NhQQlWAHllv+rQD99hMjZUn845JrGNKbzi9yiFA5z0fSzpKhxtCDhtIMHzYg7rcndgDLdOQL5P6Q4KbfJUw8g8eQXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787371234; c=relaxed/simple;
	bh=tPe/rTLMN3e0L68BtKVtHy76EAd/AKeNXYc9o/Cp4oE=;
	h=To:Subject:From:Message-Id:Date; b=kN4SayV5XCXn6AsaiLDS7qPhjcXO91lxeDZs1/Mg2DOrVZGNq5Zm93LPi3I9toHBn36XEZ+9Xeagjm2Rq8uI8CpvrtZPlVhFLa5EGn4ml9Q0tQxQmmLYyBlXMTS0QsZGX/pYw1+CoS1PnbNfQUmN+7sekHOIMp+kZoS62+ANOxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg5kvd8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg5kvd8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3EEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787371234;
	bh=tPe/rTLMN3e0L68BtKVtHy76EAd/AKeNXYc9o/Cp4oE=;
	h=To:Subject:From:Date:From;
	b=Gg5kvd8HAOFGX55LfMN4BSlF/IFedg9Lpnk0FywFZCgl4+SpuYj7ME7g1v3mKIkha
	 m6StwZujhnjcBx2ViLvTODpdyp6/LoYRltpITLYJgZY/DvUMUAF+ywdVlFBP/p0AQI
	 C6Vbh5wE51zo/q1tNWh5eUSX9JGo5ootOFDVc1fxjzGx7khG5NO+mUafAWCxdaBIoo
	 hmIM/V4DY6YreG70I9AQkQe9raPNSfH37RQRDIbih+/YOZrQ6eKXMIL1JMo+ew763B
	 Bay7SOOULk/vFQZ746Fq4FXerkDXIYctw2ZsgRs4PADUljnNv2bQTJY0TFlQVT9Csc
	 g+0Q27WndRrzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AEDC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737123374.6024.15683136365667309608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e7b62cc19d5d4ef8ca68617b5d71f0f4e53c5122b9f6dd16d4f021d0581979
Date: Sat, 22 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787371233
