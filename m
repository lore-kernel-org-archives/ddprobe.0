Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544883E5A2C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787288434; cv=none; b=P+6avdRK8KmdeT2qv/qoTAf3W598QuVgVtD421wIonSPxR9OyhlQ0ZkxRgvh2KcNOvpWlkQCvVOCn2u297BS1GoskbSoGwEhmm5SJhE03xvvZdbfZLiMNG48Vu1XT6tecL9gDDmvOxa2BtwBDw6GIwSIgSU+MmhA40UFCbcQMn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787288434; c=relaxed/simple;
	bh=mM6LIiBvZ6aFavV0fjo/g+MEM/0CRr9IzWf6iRzIaKI=;
	h=To:Subject:From:Message-Id:Date; b=PKKQwNgPb3FlN7DnYOUWLL5bw+BeJ5IH8DFU19JtgsF7sz546VopADmHRkoLFMRSR+NrbUES1yJh5ffBNs5j7PQU+dj80Zom4aN7mcdOIm823oBB0Ilzp9GYdvqWRUJueScKcinj1dRMMo1N0r66lpzFYAo4gP3CgqORsS9DZSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVEu3OSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVEu3OSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D0C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787288433;
	bh=mM6LIiBvZ6aFavV0fjo/g+MEM/0CRr9IzWf6iRzIaKI=;
	h=To:Subject:From:Date:From;
	b=QVEu3OSVqfGKGlllBX9GYT0gDBd15R4fYwG6PqT3BQR4xW1m8ccD5zDoCitqYK4Sn
	 /YEBNt9kfyfCX7MudZgSNeYC46+GohvEHMBblHQtMl5NqYhl597BYhIGJGKzhiGMpo
	 /MY774MKtwd5tpfpGr4BMwfdd/pzBvQvmLLWCkPSpxlVP3iiIGVSd+XWIwQ87lYuIt
	 Bn2/12jsy9LTqX/SezNiT19JpaIXv0mxI/vF/QORcFtZoFkAxmRL5sHL1vlRrxt4Qd
	 MQoVf7HrRJtkrcwuOFWjztyEgww7ChUGh77qZ3Iafo4ipw3WgkmK/ShouD8fkFLy1p
	 vO8DLtBxYMKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C8FC5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728843374.333.1997745183806772624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49d5d248d0cdcaf98d959cc2ef32f12aa99c05a61e47dfa5fb8ae8a9faf7eca
Date: Fri, 21 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787288433
