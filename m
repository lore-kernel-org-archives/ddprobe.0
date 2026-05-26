Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2AE35A384
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779791554; cv=none; b=ngFmKqFIpqVrmW9NXSoV1fsh2ePmZ5Iv4FIoHu3pisjB+N4wLwk8XY3FjLqqJMIi4D1UQTaeXPvkobO2z28WiWWQqBYVrjXaqGNLu5uAneMxItGuiy6ZO/8bycpKZyQ8h6Q9kgn9vk0s3eNnp+pVcBjnTRUt6AxkrIVgI4npdq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779791554; c=relaxed/simple;
	bh=QOpGdSygsdP1d9olB/CxKq0+mQmBRzbLxlhDrRnNkzo=;
	h=To:Subject:From:Message-Id:Date; b=HCw01mzueOFpDHW/+CFnYJ39RuNPQF21mcfXaYm7xKMEKoM8155DKUTgc1Pu2Yj9+l4ZkQsTjW2KVLAj6n6ygZ/H9yuUsbXbYf+f/kWbN55smNdGz2F+aCxBI9R445IgWz9r9pN3z9d+jlkLR8892OqMqRF7V/Oi7FMmloh61Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+4mw6Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+4mw6Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AA8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779791553;
	bh=QOpGdSygsdP1d9olB/CxKq0+mQmBRzbLxlhDrRnNkzo=;
	h=To:Subject:From:Date:From;
	b=Q+4mw6YzhcX1HL3kCH1VDXiZO8EBd/xnweEOFSErgwtncWWm0Ci8cSte/+1/6gZ/x
	 KUR0+bWFr/D53wUA7HmXX1ACEzhz/0z/1k9R7PPII3lE2NBYvO/WTk6RG6l2f6uplf
	 HIqznYLgnZKYmYHz6bMh/hk9vdvXqOkhbOaSkHugi8fa2WcrM9Bn1hwwn9JUTv8pGw
	 jlHHgsw3KIicGgKL7k/E+IWTXQJEfTqFMKCzRlxk6wjesP2EH5G5/vW5a+fIEblrzJ
	 p3hStnKb2jQEFuEJxeLM6XAGBaw6FjBUmb9hLaUA/esuzkgb8OT5e+RcFpV5uJfp3U
	 5Ccc2LlCUSZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD73ECD5BD2
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979155369.24859.3783522359979546445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26b358068710300706684ac3b427927ab3ca76cff1797f800a29697d38c8776
Date: Tue, 26 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779791553
