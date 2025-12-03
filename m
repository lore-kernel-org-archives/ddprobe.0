Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D108405C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764744774; cv=none; b=RTph6bXF2P596NpjS+2LSJMMj5HfIGwNi2z81U2wqzY9G9wzwkMIUu2IX+rRvBXUChRcGnCCqi/y0pP4AJh7dtZzLLUQoy2KCyCSLuZmEzlf7f3N2drlZY+jNHYWooJ2iCC0yNIRZ0RFjp03pQnDUfVhOwrDmSuqe/HbkJrSvqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764744774; c=relaxed/simple;
	bh=DZZ2feEy+3hjObnuO7VojBnh5k4YgC7nY21fF7nF3S0=;
	h=To:Subject:From:Message-Id:Date; b=uvGG/aXxjdoEa93BBJ3CQGaB2/xi45sjosI5QKllx2f5z/MXK91wQ7DMG8oP3zpk2j59yxDv1gl2GG5zxTCSidZ31nrHDc31pgriDKUx7b1wRxB0vWhvFqyXOFxdCkxkmdhFIXP0AvMxp3by53v+w2crCM4ayPK+9XN/SAsh7mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYU7h70p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYU7h70p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8156C116C6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764744773;
	bh=DZZ2feEy+3hjObnuO7VojBnh5k4YgC7nY21fF7nF3S0=;
	h=To:Subject:From:Date:From;
	b=YYU7h70pWkoyqkv8/JYxi9p2UrKPXQQptZgZZ4tF9kpreWxht4encicpHGOk9nU+9
	 F0rRfsMV/K63BttIaWAsP5tieNt5JNAhq/UejUTTZtBrJrEZZKwiLJ8ttPB06Cx3cV
	 Eh6FrK8AAGoBgZWEUThwtJelbwd5qhJRaipidEwqOIgJCFmRwgieTMndAKTvywGTjF
	 2BDCv/uKQfMl0J854ffMux1cF1hopfJjlyV+q+e8ykyKANvgvqKDwUhlI32mX2joND
	 /k9P8a/xY3Sbr3Cg5MzvLI2JaOCRyYuKsgyyIPaeEmvJX6JRa/0StVCuW6y8STw8F/
	 wy29bprcPSxCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A4FD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474477359.587.15345043084001838717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7145558aff62eac8c4490af79e2d0d984b62ff951ef01e6443d34090ac5a330
Date: Wed, 03 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764744773
