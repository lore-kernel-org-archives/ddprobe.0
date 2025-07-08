Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D04029B789
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751960994; cv=none; b=apoZizYtyLB4Ww0bhcugHwqQ+uAL4mCHuF/FDfX9zSyifjzN2Nnq9R+rolyygs4WELiJRNDP5FBbpTIEu6sApqO6QhcdFQ4Xsqu1lWm4VAkvyvyCXt+Kr9F1JIjEoz3ruIwZbzz36wI5/xwUqn/QGbSUui1RRTa2ErePWVBwWOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751960994; c=relaxed/simple;
	bh=BBdP2jWmrkPPO0dHwsZ2k7CyqMWPsOsPe9UvBKWiRk0=;
	h=To:Subject:From:Message-Id:Date; b=fNuaa9RAC35MosriDk3wV8NfWEjvDh73BZEFxkuesPtMqrOr5efAFmtQ+CAhJMj2Ack7xyiAr7gzxNeU9NAUkdTDMKlcr6DIM1BbD0A2yypkrzptigTbJ6cCxZmx/u3Qr3sUJB6Xx2yvhDndoz43KEgF0kHrlHqEAE1NNIuvBuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLC7ia8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLC7ia8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8AAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751960993;
	bh=BBdP2jWmrkPPO0dHwsZ2k7CyqMWPsOsPe9UvBKWiRk0=;
	h=To:Subject:From:Date:From;
	b=dLC7ia8Ry5/VoGbIrS3JDNVdv1EnNpOkTglonxPlmPsWWft6E3as2De7SyQZdBce+
	 kGQiAHpLgeSO0r2rgLuElJi59bDZwH6O1jCAuhbV9rDahNowX97k9JRQ/IBHRPus7Z
	 U9m/u6OPUsF3v3fsBeFK3rnZRVQIBGFKacAYVVxmeBtDiIazOsx1BhrgSOnagc1CL8
	 0ocmueEpfGi1QQsGFoPnxyBdwKPpECvNaN5OrNeirESK/fnRW8VIQJCSUvD4P7Z1FX
	 YaKqbxNcX/35Ppkyytxpq2KPT7aydo+OY9jPrOMDdmCm5HkZ51c7P2A4IMZLkNvaAC
	 ClJGnGNQzKQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3FC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196099357.27173.13004945271973245956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d4002cfa389b7481c6abd4bf80dbf057354c07197877cd06468b20cb85c323
Date: Tue, 08 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751960993
