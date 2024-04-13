Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F93E45C08
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713023363; cv=none; b=QOSPjZwO5l/qaPOYUpLODLC4PEafOn42Gf05JX/fjQrdXNVqiVnYESo8PaYrSq6DSUH1UuxF7VADYeNkOpSzTWy2EjRy+soxVjkPYQMnJSvtD2+5LdXvlxCOpb8tnB7zfcwLbUAC3hCEd3+rSuCaAT0qkdt2/SNt5T7GKN6k9AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713023363; c=relaxed/simple;
	bh=O2BBTCGiTSmHEXTMX9x3gXK2OlssE2K8utdq4P6VzBM=;
	h=To:Subject:From:Message-Id:Date; b=o3b3TfxmXadsrYgZP+F7gTm3YyFWqUZ7/HdOj9B4ifi4PF/mzsChw5Z1XDupyyL0AX1QLdRxMlMztHBRXTkg2Vab4iMYyTaG0/js6fhF5FNlAjCkQlH9VQgSZ0D8MT9jprYBoGCKVEGam1uTCZ4M530zQ5K4d3eiGzUDPJbNtho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/VFNAPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/VFNAPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62C2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713023362;
	bh=O2BBTCGiTSmHEXTMX9x3gXK2OlssE2K8utdq4P6VzBM=;
	h=To:Subject:From:Date:From;
	b=j/VFNAPav6MmloXyx4OdDqc5Ui/5iOUi8PqptBRwEafFzx6A8mRBvn/3p+O+JKKaQ
	 6WQyBVL6vR9/Fedsufd2g4SbCQ9jEx6T6HaNcGCIwflUtL077VA133OYA+Yg0JfAvo
	 gBsG8KFi7h/AsVdhKFGqAVKFhgkMxmIPj6TCF4aBAxarMtt4fdpVNsEUUClJkoG2xl
	 AigDmpphSMME2s07LlyCyY6z2oUfOCs//p8PWelKZMXCEmussw5Qd8+l6JjB6JqUdd
	 EKmLZe5E0wGSCUrQHOo1m+Y/gN8qRuifAcULiij7xlNdE/F67ddybry+aMKMFghxRZ
	 FI5y3KI2EgmRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00D5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302336276.12980.13814836232075203969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888e119e251519c1571ead8f7afe842a0f018278a671ed8713585f76a9b8f912
Date: Sat, 13 Apr 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713023362
