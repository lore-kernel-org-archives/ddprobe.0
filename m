Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC1015A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724285754; cv=none; b=IpMZEGNIeCyehGPHv4g88RqmZcWl8GeBeov+8O6NWo1uigVHOwEHPZ052Py0jBcdGT+jP8vdWC/LPyuKnF972+8McBtaI1ZHf/qUvNhplF31Ob7BLiixkZ4J0egur3jMUNmePhLjQYmI6vetUHD4eL+YfUD9ayJeEdN57EYbm40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724285754; c=relaxed/simple;
	bh=zZNnqhBSUxZnz8LW6bBZe0wPSKE/xWLVCQ/O3XM6fSE=;
	h=To:Subject:From:Message-Id:Date; b=IAkmKmo25Wbo9CNtwFRtyVKWGE4/JlBS1ZiFZDO0HZt3obG41pHJAmDi+QNXcmeHWmFjCGYWl4hv5yGWDE0iUNtRZrIo0OJIimMgTcnAcLNInUmqDvXrQUGsD4odJj4/CXzrOxxB+gmMp8aaPLTzicyaeAhJ9Ux8aNB8otcPshU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgQ5LaL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgQ5LaL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD288C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724285753;
	bh=zZNnqhBSUxZnz8LW6bBZe0wPSKE/xWLVCQ/O3XM6fSE=;
	h=To:Subject:From:Date:From;
	b=lgQ5LaL4nHv/Y/ZCPpfuRy56ksJ2e6p3EpI06HkC0Y36uFSbNwOlxe6kh4LQfaXIK
	 boTutZPBLqz5TzHZ3E5d45659agJgleQ30oi/3RNu+kBu2m+NTP9WzUVgbCcrQzDaV
	 MzKx3uUQUMfphY/zamBFvgnTu2vxQKeLe0iUjhx0oYDB6c5h9gGbDYANRI2tCJ98Di
	 kxpRtHH5N1jEtq98movVezVkD6gZgwkD93IrpyYA0eweLwkMLdtHK8CTUzVQ4BgvBV
	 slDEH3+BodkGseyMIx6aVVRVBtgdeqFont1N8tZle5pA0upGCyGfQeGUJLnUUvJzoB
	 5ONIpzpqwAROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E50C52D6F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428575359.9638.14181480882497281403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7e2242a12745a64863706f3e67d3f306dc24bf6d1f4aad38f1efbe7875c819
Date: Thu, 22 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724285753
