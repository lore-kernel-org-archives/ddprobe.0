Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3CC2594A4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734656154; cv=none; b=UjnensWdOb3U4vFLHAkCSoTSfMne1pcgAQxaZOtINZWozPh0OEPjkx70hflcOcv0JIRSjJmgDr5r98zSDm1w7qQ6htQDqIx03E3MZ3CQTwq7TJvrlf3UqAHRcVqWagDqb/UlliXFXihnrC9Nl/g8wtCeKcFYG4Fj30Ikip9QSXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734656154; c=relaxed/simple;
	bh=DG2a1C2ZBO8fZLAPldRN15uTgbM6mKjOvTGTK4B7yBU=;
	h=To:Subject:From:Message-Id:Date; b=l3J7dbL6+nH5H3HOQH4Et0zfcNGeaiKsnlosTp+AjVCyzfnVdIyKZQkpElXhb1uzpusTOPjyhdHjHmQUbR43bG5sShM7Jm4Vd71rFP0BffA5VSPCuUimD8C3SivBn48AYplKvd7YT74UbY5zm+qnJAiz1RONMyPzDPymMXO/39o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFKD18tJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFKD18tJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF306C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734656153;
	bh=DG2a1C2ZBO8fZLAPldRN15uTgbM6mKjOvTGTK4B7yBU=;
	h=To:Subject:From:Date:From;
	b=IFKD18tJ1UBv5G+EY9Ma8cGYjVMGSTPJdJRz5azSn6o+SDbs60UDLuANwj/43yT8D
	 bMQbZuM7/rcT+fu4vvE1onbvdiQtIHOBXiwtYVI1BcvprkK51oYZi0bf3IVbWvhenk
	 PZHNDzFuFTF0Q1+CRJK1VsXAcqi4aeOoUN0/ZkklFQ4n5OoSYPsWkOOVBIXKN0W6aM
	 qI9iUud1hqVpfIn6msAfriLCTdm0oefVV3jCBVL9KCTZjcubOKj14QVRhfLWoyx+VS
	 O82Fwo7iptQu1JVPJKuAk7ha2Ydn65C+yzMEbOQZHhaIve4gusy+OumwBXreqvEhAi
	 OY8KdGLZds15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F1E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465615358.8428.1986971496046256795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7e749a00493476b99aef71047198cedd4df4760addf5e6f337f3884d36de4b
Date: Fri, 20 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734656153
