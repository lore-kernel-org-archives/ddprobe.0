Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C32327A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749585593; cv=none; b=q+4ptl3qqRoF6av5xyK8jP/tY2SAon4A0KnUM+hn4rPfbaW1/NrtPnAAphLLc21HGj8itYQ0D0A0qrDhVEGoMyA+F6ilWRiwiKynk1qcbe8y7E6uanMvZhjtUIgmSyOCTMlISCphloxoGwUJkQpRyk6AktEYs+nWX0MAqd0BTrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749585593; c=relaxed/simple;
	bh=dxb9TnuiBERsJblwid+uU72Dw8EPNFiGt8bRYIoKRc0=;
	h=To:Subject:From:Message-Id:Date; b=bugCo4aGrrM1ULuwF5+WPbT8JkiOr3HvmljUHgGUGUiCb9ieYeKS/eEp3ubB2+nsHYoe3fCj4LNzo54ea16uXHyJP/0IOezisrbRwjeLztx+zYbTa5AfQY2ItiRJqynJordwxMbr+gw0xFJ+QyJ9JO/xWRJHNZIaU456hPY6vSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV7Bt/hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV7Bt/hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC87C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749585593;
	bh=dxb9TnuiBERsJblwid+uU72Dw8EPNFiGt8bRYIoKRc0=;
	h=To:Subject:From:Date:From;
	b=YV7Bt/hw0EdpTC+ej0aXH+FkC74DrhCmntCbnDQ+P5GliajmjpKrmTA6fjN66e3TC
	 PSdEE6NA05LGQG9s0eZIs1VTOxLUXFw1UFVdW8zW9ocITUxsyMLMcLRI7WkgUvWXs0
	 Gb71xm3GuRtj3MylXqZZ06fEBWod5m0mC65UWlki8/90T2jFx660t3MADLDP6N5rsX
	 0iqyAmCdaep/eQPM8LQuVSAtOzlk2ePwF9261COvNyonKuj3BUWFEm8CWbEhR4+MIr
	 eLsUd5Se7atUEdKVjZ1jnuGereiwvwChy5I7j5qyJnQMqkiRrYD91oD6UfZX5jBkAd
	 psM3C7281v8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90539C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958559358.21730.10618426669531974574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21ab0362a3e045757c0028b44f0f3c3f003a78214959957217e02d42f0af3ff
Date: Tue, 10 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749585593
