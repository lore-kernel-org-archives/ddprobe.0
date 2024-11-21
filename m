Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FD12309A9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732154154; cv=none; b=UwpUWJn8TNDh81YLo5PqSyWcoLb5yKJoWEJ8+WcBc6UuyQ3NWHtsRHFejg+IgpVbGYoyDXB31lPZH8bPwhCGun6y5KppboJrSvki4Yfnjg3AcOT45WFIQZCvdmjVPcuDzxVh3hn0E7c+PQiPBHu+/Ca8F1gXTM9SY4+1kXslzKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732154154; c=relaxed/simple;
	bh=grE5AOMNRPyTfwABuTgBjFFJNWVlwZ6PFgPMOkP05Hk=;
	h=To:Subject:From:Message-Id:Date; b=gG3n2qETRES830og4sH6rC2Lz6kR9FMBYoe3Xbg+BusYVgqN0ZidPNyL+9/Rd5TrEwNvtCu3rEPf8SoJCzXjg8kJRUdiQksZXaBLAw1cZTHnRYE8bttUhUrB+3nEnIPuMg2NimXjs2ZQ1AORbdr8yp+p9961+oCHU0xFLJh9Rew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3peXJr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3peXJr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F1C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732154153;
	bh=grE5AOMNRPyTfwABuTgBjFFJNWVlwZ6PFgPMOkP05Hk=;
	h=To:Subject:From:Date:From;
	b=a3peXJr4iuuacz9jnVpOSLF8XXwSo27dOxVX3MfkKdUFXd6OIoNt7fmfLExN2nvAr
	 NAtrZdYn5fCFj8fYPhAWajPE+RShphNi/gYgwGGg5mhSNvxpERFxtXNkGGeIm9Yfhq
	 I3cptKiYm2DrGl2vcZIkSzUrpB42kP1cgb58EktNT94hTyax4tXJddXyL+qWFoOCRp
	 0mKXivTSrwK6jEM6hk5uxP3K4h3ItzE0uWaW+H6fl+nKhIO1bFcIUCctVOoIW6FEwA
	 OBypfnlx6pJcq1NKaMSy6Ke1GCSjFzrHnHiVDsZGu2KyNrGGZedBgdRPLdW8ytCPE0
	 TjRsdwmTN1cYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95923D743FD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215415359.7497.6683029227838952319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa270676a48a3193f42428805b513bac48a1d153714b50e576065bbf1663ea1
Date: Thu, 21 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732154153
