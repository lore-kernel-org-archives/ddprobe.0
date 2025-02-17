Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC01A76AE
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739833135; cv=none; b=CRzvi3Rl4vdWsM9I8a2JweEaa97BO+Ra43GmEQ0VJToUyuxxI5SIZaMKOJu08OSysXbiIm1Skn3iTyxTXn9tU1mtK4EXCMgjNYUwVokhpm52gzcz9vArPVGlk5D4gQ2qIFVdT0r4yNBmVh4WIuuzVZ221gyBf1MM7Y8MvtBH6Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739833135; c=relaxed/simple;
	bh=ZTzFhaqYKcLe1n/VcBeSTjhrAaU9STAvKyFXbEkzYhU=;
	h=To:Subject:From:Message-Id:Date; b=WgCf1SnhTGhRimMhU9uWYGVexjzVLxRyAjaziDFZyowxMbCos1E6XP0zHJiNn58qJ35PZaf+pg4kVj/+bzT808QqsTiG04prO01w4udsPCSyceG7cSEf3ezzR2a8VBErwQ8lcpYyIWe9PBDWzu5QK2Pz9CnHCGFrL+dN1LxLi2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEsJ5AJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEsJ5AJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EA7C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739833133;
	bh=ZTzFhaqYKcLe1n/VcBeSTjhrAaU9STAvKyFXbEkzYhU=;
	h=To:Subject:From:Date:From;
	b=sEsJ5AJZr7SLccd79cNfSP2amsw2FT1quK20UKP/Mv8fdAp/gGHQqeyCI/cgJMHi/
	 jSOMSL8jH+8eUxiY1nEHXG0xpcPJVIis63t5/IIoiyqXoo0N5yyYLXC0FKMntDmaVr
	 QVEwphcGln2ubSrDt3JLIBm/4H0tG47dDuqUQD0G7/J0q88ne2dSTRXzhsCv/OvyDQ
	 cpaF0Yuep6H3lFWnsVKa1OE+py1V/D9ekLeti3c8rpZDnwemXuG3mtZ8N7EweQkxhs
	 Khey2KtEXljuN9O9RMKBKcxE+1aQuKTtTDcTOgWX2NCu/mjgD7ofjCAPd2lLvTge/R
	 cjA4MpHlSpSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D972C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173983313359.25367.13768606526276804749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19b1f344f7763ec41500a091d390f3ab36198b3c6c0a42e6092a9d6424e7f5d
Date: Mon, 17 Feb 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739833133
