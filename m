Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DD31F3B9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759904994; cv=none; b=Cprl8dGsbVmGDXlupqXIHgSthzJiksFZGe5P3rr9gka/UgZ6V4cIKhkjuGE23PjVeKN36BNDFRvwNhaG42bi8whvLyUuOzvBd2sYeBW3TdS6gJqbDH5+le/nGqK9EM+5zZkMlEC42mqaWwrWKaobSW4wV0fqtop3ASLVY6IuWWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759904994; c=relaxed/simple;
	bh=7ZZ7df0unauQ6epo8cS1RGFMX9btHBHRhqX36kQM87w=;
	h=To:Subject:From:Message-Id:Date; b=MYePnRlK7BtD4VDDTj7Jz8oetfuDt50b2ia7dKoV5Ld2W2lLOXadgB2XeC2n5z9rgtqfekb35Uoy4rGQgDKWL4QrTZza8e8ZkQO85FJBbKJyegMG9/iBiw6ddy6+cxpmkiyldxfju/Hr2kBLL6Ty0vWIlB6eCwNfW1sT8Th95CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMI2v50P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMI2v50P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D90C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759904993;
	bh=7ZZ7df0unauQ6epo8cS1RGFMX9btHBHRhqX36kQM87w=;
	h=To:Subject:From:Date:From;
	b=YMI2v50PTKFoXZpuj7qjs8gYZqXNZzN2uXIppF9pO4b0zRyeQ7sspiklSPeuyaH6A
	 uByT1rcmfeiYWKEBjC/c7oEUWb8PygxTwlrN0N7lvpcGVA4+OR1sjG1QF9vcdD0+DO
	 mKy9G6l9yVB8edgJppDhhrgXSgoIqOhKvy40JODJJ1W86qqOBimDgj6cv6NMIpAWFN
	 C1Fzsy8FPN8Q6mQgyow2XfzJBH+WnSInjmeVrXxaVRiHWe9DtFDRMG/GV8DOPw95IO
	 ldNcXgGJNB/sS9PBfxHY7wkmBROdx8JgXECkDOlmaeFGFl5kJOtBym30XfWxEbIvvk
	 u1Wk3whatbCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F064CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990499357.16306.11882774249460951246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05741241c1e54955c27c76c67f3d0734cde5c13f1a18d3cb5b8bdd059a3118d3
Date: Wed, 08 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759904993
