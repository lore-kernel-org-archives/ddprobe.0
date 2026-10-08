Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2E338DC73
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791499234; cv=none; b=TbmyAXdN22AePzZ35aKLANRHpezYAgsSy3pRAGwLJ1Z7XPkvcFBLYTAz0mTTimCREty1nhy71AyJAXeeUuviTzM3GbT8koka/Tq7aWl85J5tGm0Wuqarl5c7H0MTHQpUpXJ0luy8Za9tmycjrr50fihTYCuNwYUV1oYyuyUkSLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791499234; c=relaxed/simple;
	bh=M+3rGlQ25F+WtcBjFXQ999953LwW7Z39oRFHRrQR2ko=;
	h=To:Subject:From:Message-Id:Date; b=eGU5cLC8wQynYkX4iQdafo8vqmEESwuSqrep8U5Sq4tp632saB0es8f+2aOjH64MjibqLZE3P0ROuvxpahl6IBnVYfQ7w8MJN0NqiIBFCX/WVK19AVCBNxkMj9I3j9Zk4I0BqoaBfXY2FVklQTnrHVyoi91G0HtQVlTUsLnb5e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sou4avgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sou4avgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8008C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791499233;
	bh=M+3rGlQ25F+WtcBjFXQ999953LwW7Z39oRFHRrQR2ko=;
	h=To:Subject:From:Date:From;
	b=Sou4avgmQs5JvXMKscwRhN3rdBz1tYEdsnUlva33wRw7KCfc88Oo8mZ1alIWypCwI
	 eNLP/tBEhUnmGAsh2byjRGSOlZruqDd+6Z93CmdgPaLP+C2vOjrkKaZkP+KfqZ5f2u
	 vOMNF0gFD+uNsm58ALX4dVfd7eBr75X3cP2iJU0nfI/c1CyqmREwSwj4R2I63tco8n
	 Y22AnyB+21MqHaDHYDIV8cwzeFwHMmeQmPzf2SoJPMVJc2n3QQ5n7d+i+dIazjekD1
	 AoHroHje3sfeP5H2/ds/WvU0D5+YMWCWMrVy8CdnxT0DztJE9AA6so2LmoBNKVu2L9
	 Tp+/b8/XvBwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF65BCA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149923368.9985.12188425507502019019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555132b9dc66794e9d0fe9c69b79d857ab3e55a2fd96b329b3e439798da314f6
Date: Thu, 08 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791499233
