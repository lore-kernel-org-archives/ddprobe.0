Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB0C6F076
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712135896; cv=none; b=ZGQT+RhlAVZIbrCXgNiRgSXnpwRG2ZHfp3GOxCn+vfjrd+vUAeSS6jdmr3XKH0wD59rhMtVclz8zKaHjVyQ7UbH36A6eT59Ya9DUG2ZrauHB0ay6RqUoc9o07NJK/YnVIDpaawzShnnF+Sz7hKE1AV3xyv6gspWvfx46+nJ9Rck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712135896; c=relaxed/simple;
	bh=+J+nFnyC7i+hTOnq9Heu2IausF68ypNyhWrdUeC/8vA=;
	h=To:Subject:From:Message-Id:Date; b=fv4O8kIq95pHSiVxARQWGquhengw6ycTCpVDZ8VIZNuzBZr/LnrNrWV7hub/clXPaiiJ7mRmeE0gjymNKGCz/ojOd//AZn4HHHnKx9ISDUPNQqJNvg8eUrjdfg5X7a+Hst1/u1Ce/9xJva30Z2P3QcOvXtxV2U8iW9Y1O99VH7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWJgdziN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWJgdziN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EBDC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712135896;
	bh=+J+nFnyC7i+hTOnq9Heu2IausF68ypNyhWrdUeC/8vA=;
	h=To:Subject:From:Date:From;
	b=PWJgdziNxtNMPz0f/TDUyBbMkrsFponoamiNEMDx0ORvT4ie3NQ4kHVlBaRO3Zy6g
	 sf7hp9ZV4wrzkQNvm0c5dyQAioZxJMrVdhAFyubbX9NmicEhTEHg979L91NN5P1h0w
	 PCnJTBGY75fn+v5fCxfzx4PRtR/mQYuQ85uvcMCleHWx5IVgJCiagbf932Uf1vYaqK
	 mgc8t0FPOOJ/Z1PxxzbajOSn16MAO+Fz3scgX7XC3ugTe+xVfhqoJMkmrj5Cufv50o
	 9vawDHV04t5nkA/YhCWu3GASz+0EbMPEmqcUNpbfnGMNVsrzChM8QZParbRaVAuBvh
	 C9uqge1NsEskg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65022CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171213589640.25217.13174468725989074968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37859739267290652bac475a61c493eb04b25f442821e5c0d9ce3e1ed13c64af
Date: Wed, 03 Apr 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712135896
