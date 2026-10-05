Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF7937F732
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791200434; cv=none; b=qHLzuQ9xy1o2H/NkEv0W+IeTgfHbhKuyDLTKk5lo37+DWxIL3/9Ltg5D0PE3VkEkAcw7GvXO3k/30FMiBmNk0iuTBzJBxyKNcetdbD9bdDvMdosqKS/KEs2APa6eczmfBWxwF40107ROutmXZ48UJa4bg15tCF9yi2Ighb75Z3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791200434; c=relaxed/simple;
	bh=v32+/2fxNNzGx9P/EFGPMcAzO8hX8AFiNx6aNATRAI8=;
	h=To:Subject:From:Message-Id:Date; b=tp73dfdFz/mn7chChRxBA2fU/naBDmYp2Y+C8a/u7sPiZMIJlSmhyui27gSm4Q6uEhp3qui6JYJBKE4DoIEG/HyLdvXAMHsop6RvldsTZQN4skawntzX2DHZgCHsAaNm6loRcJNAUEw1NykGg359U5m8ASd6wu6qeAWkLqSi9rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfZflZqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfZflZqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB47C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791200433;
	bh=v32+/2fxNNzGx9P/EFGPMcAzO8hX8AFiNx6aNATRAI8=;
	h=To:Subject:From:Date:From;
	b=XfZflZqt7dsGjUFdG5DEaLj+nx8XJAg/VnwFHFgzG9pbly0wyTOel4Ch2CB4cXsPm
	 zLF0Qok9tVcCYpv7SZo8TqV7uUkT28I9r9WmzrMPvIqqTORfS/wU01r4PnCqd4BEke
	 U6yWEN4BG7yXXTepnKrZpc921dp2zDde6fSaI6a+ykzIjZWFBwB7jc3hYdNo2DtlWo
	 hxvYwaU7RZP71O3ceqw2lw1TwQbDkXT7S1Lp7OxcB87MJEmgmL5UQ43vkbMelDprhn
	 Nea9CxbreLPuUl1tIA1owBl/X1dZl2uzi4oOZguiSc8lGjd9T2Lonim5kxUi6U5g79
	 6PTOjwOeDV7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A71CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120043368.13666.16890587724341524737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5842602d126fd19c84cc893a8a405a2502b61677a19245966c7ca8da71e52b4f
Date: Mon, 05 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791200433
