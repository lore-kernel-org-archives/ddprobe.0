Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22161156F20
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762756194; cv=none; b=jWnzlfOgFX3hxnwV1iQqZgcD+TS9f5pYzP2LPfV3wH+Onp+LKluQjz2GJ0WLKeRzboLKt/fF79om7OOl45pOKkrztGx9J3EFxTaGnTSadMNhCICsGX3HOdS7sFaNDjuDPDj1mWMPTV/w60+6n2a8enifUdr1YZDK8fugnDr0p7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762756194; c=relaxed/simple;
	bh=s2rD0ahYUYJO3DQxn+vYIe+nXS/Vx7oMzk59EfCTts4=;
	h=To:Subject:From:Message-Id:Date; b=j1LmH20qeI2I0rPW+s5Md3kOh2BsamzAisr5tS+4Hg5Q0RARnnGdYUNeF6egZtbHc2XJJanh+RUULMQH6CA8Xv7U6e5j+HQdvE0LWjzh1vybT359+pITWcHZc9jjsNjLGr2b8Pu28daFNQCFE3RQ9P/+tjYk0PGQNLFaSz4GkS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipLFTGYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipLFTGYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C08C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762756193;
	bh=s2rD0ahYUYJO3DQxn+vYIe+nXS/Vx7oMzk59EfCTts4=;
	h=To:Subject:From:Date:From;
	b=ipLFTGYBMrMaIuv2rf1UVcxxyPPxP2DODBmet/Sr0NSiouVNmpHyfAc1xxkcVMi8z
	 oj1ACySKQKha1lfAJO443si0jqLG/5JmP+DNmWNmJKwGrZZVd0R0X1eXpVIMSQ+rXx
	 sbuLTD/V99NeXVbYq6xUinJJSbHlyg13z601SW8VnJsMyVE6Y2+Tv9pK7Z0LabRncT
	 9l1GoOE3GyUFn4tCSvWwdYOJ/Dj6j+ULxfUDMTaHNx2YB+Ity7UmeNET4Shgx+vUTb
	 fz4Froe54swrKs96H/arsREakBs3wjnxtlP8hhRv+cBpUEchYfi77b9Zly0RHf4ztp
	 RseOAM0Ei314g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767DCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275619358.19807.13843395750476175931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b860d2c593cd17b489f3f582889e4def0c5326cddb0dc3749e2c308744554726
Date: Mon, 10 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762756193
