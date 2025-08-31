Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2061721CC5B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756672794; cv=none; b=Ygd6r9NILKbSwdSwx5CCClCzllWc+o5vK1DtCb/jihYe6YAAUIOE9E8wi6UnPnM+4Adrf+4Q9Vhu5irE0zbE1U3DSWhHM/3ZysdZgoLMKKXh1Ag+VemQfHsRT3+qfQKhpbGoWStPMQ/ewEx2/KQ8fproWxayMFf3JfgupeC3fyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756672794; c=relaxed/simple;
	bh=e4lyCia1V4uu6kznoxc+fD9EiXQ1U2BSwR2VazlHApE=;
	h=To:Subject:From:Message-Id:Date; b=ryiTPIgzcYrNI38btLU+SOI9ECwEAH3GoDu1ZXIHxGj1ATW59lVEs6F37aUdtVNPft5CyDhgNwOo+LERq9sML12bPk2hc2ch+CoDmf6hYKf0ZbUcq0tygT//fI3pspJC9f5EbkbuUvCa+8px5rr+ACfd/BXPHfmDQuxyLYvyBdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE/XZ9in; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE/XZ9in"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756672793;
	bh=e4lyCia1V4uu6kznoxc+fD9EiXQ1U2BSwR2VazlHApE=;
	h=To:Subject:From:Date:From;
	b=JE/XZ9inJ/3HO8KjgmfIteOmDRlriJfdHjV5kfqhuKdHW181STC0uW1lVWc7Ugt/J
	 6/RltJlHdJUJZcfeFE72QRbfTiWafubjJivN54Gehhcd4U//ddRm21CQdNXuL3ldnw
	 C2rVS1Vi93MG8tp8F8/0oH/oy6d1yz6iX75kor8qhqUU9Q3mzfvYphwecr2qAr4k0F
	 I5VHRWbGmxZPLhfd+gvUacKPP1ppvyAxYMFRArQIKsQ9Ls3tnxMGfOWe0rqb8W1XPq
	 r3lNi4XGyCawR0PxsNChn1rjzVrp0E5QjRNbOuZu1VTCMDfOnLnQHeRsDobmb33HUx
	 ZGm7n8yFCKPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF54CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667279357.30346.13876504965417518093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc86b06922beead755739104a3e25f3a39ce7add8dd859737d3e9b210236daeb
Date: Sun, 31 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756672793
