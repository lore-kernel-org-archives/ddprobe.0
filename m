Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152D175A8A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788685834; cv=none; b=pJYuczYT/sdqxwiWWexpMjmREjdoWEQHCNtW+hcWFLXtiD1US6a6QgfK06yUqHp3HBXPhoV7LOQtfYck1ypgJerMiW0qzo/EI06BeiutepWXvWRRJ9VJNRO7fYmnAMhBPQTSL7jY+YCAAYcgIQ+TjdRP6+dB0e6t1oznYB8v0jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788685834; c=relaxed/simple;
	bh=ZDeTLBh13QZyxcwMuR+6Up2+fA5D9YnjG69Xiwlgk+s=;
	h=To:Subject:From:Message-Id:Date; b=gXxMfvAUo2LqSXdyCh2Pcbbjpbm/1ZdbQ4coK0Ej9938+mpU8lCNTlridrr8bapr7pBd3TNj5CWJhkrYUqoaj9PSSgVVapQH39jFSjALe5BiD9yRz6E3ihl9KaR52GDEoIagphL1WprEzIeR7Vx6SfE0p7BAC3A/yfflA4t/yBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKrQ33mK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKrQ33mK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788685833;
	bh=ZDeTLBh13QZyxcwMuR+6Up2+fA5D9YnjG69Xiwlgk+s=;
	h=To:Subject:From:Date:From;
	b=pKrQ33mKIZPbD3nADNcODz80EAIGarSJsb+x+uM0G2h8Ayn3aSLdqhw1uuj1WvjfE
	 F4qycjJbSrlo1tpHx6/eXTpEogD1aPn/IP2DF2cpx8jaDLzF1LxlFOh1lj5qxrOyqA
	 SwpNTXGxAGaZfPGF4FIBRmqwpxVZDHlTeALEzHDucyXMhX3lw26p/JpXs04FPYF0kC
	 tNBAQ+/Nkc+HFBqEqgTOzQUnnv1wxNu5gV42LxDBC7CTlvmncZro9I/59oJew+llAc
	 O60NFs0gWU1PPjCy3Tbvna2s19vUSB9MPtgq7yunqEvi5VWDeNQRncOMNgYrOWbbCM
	 IvTytyEW/Ybkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB313C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868583369.17515.10708754337208679296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fb88738d1b4cba55da1847f415123ce35664a18e333efc8e256fabc729bb51
Date: Sun, 06 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788685833
