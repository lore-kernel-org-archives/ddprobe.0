Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E389B2576F
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712560697; cv=none; b=l8GFkdt1I5bkBK4cfRjwjZKabEAEW8nC5FWN4DJqbRyhb3p15WrYEb8npYRSY2qY9k82lJ+FFNoy8GtGdChOVr9wxRUtQ6nAc82NvRs2AfqCzZQpkSR7+0XV80JXl3Cmxq8D6wEvqaW0ndVxGyAUOTZ7nNIB0VEcrTHRWmXqEC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712560697; c=relaxed/simple;
	bh=srsXFvL+1feXciB4tloY59frou+7npZKrhscxVPWyGc=;
	h=To:Subject:From:Message-Id:Date; b=NRngNa3CZMxy8XnE5rm8VC1WiXpyoaRQvL7fZv0L+EfXZfDPbr1hDeb4LqsJ9DBaIahb9QzU6MpLF/UqYUtk5C/gBpFXnqLZbOfLH42zQMbeqN5Dl6KXC9hKmDtNPioNuvn7eIsXgTXqmVXQrcNZmuGxwYD+vNKyThAWnDfuIHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3x9GRGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3x9GRGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779D4C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712560696;
	bh=srsXFvL+1feXciB4tloY59frou+7npZKrhscxVPWyGc=;
	h=To:Subject:From:Date:From;
	b=u3x9GRGaVus6RgceM1x4gHE9jAJmdOEckba+qkv+N0gSuzNAqdKlJVrOOsmMVyjSp
	 1VLEnQqeisk5X8fn2umU4JazjqTvKnTiqmeIpgyobSdZo1fQobc0KuUcqcEzReBXDZ
	 cwTOXhIcsXHhIPwYTB+10oivqIsTTngszFqdvnxz+DX4a+VM95T4IVu2FPM/o49kA/
	 IgrgnKbY5/386H7PKeDmXQCpjBxsnHMP3n6cSq5JeLBnKb23vfsA59Zhi86X4W1VGE
	 4piGU01sJo8NmatN3ldkM8SRqtFcdLl6dRFP9ZJxj7GLKHeXANkMqRo++yfO4JUVEP
	 EtW7MZ/nt7RhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693F5C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256069641.20214.15618854546644644240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4be6effda9141c6c1dc66b032c2c734096252cb656a374e38bef19546f7c6c4
Date: Mon, 08 Apr 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712560696
