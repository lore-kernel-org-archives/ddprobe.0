Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A53E153836
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730364954; cv=none; b=V1vh0yhTTbeOUtwqpF6vlzY5LtvRSN0a4EvDUrHrnFS+5hInt9ZzqZg4azf3E1uk4ciAgtMHuFD+/37X6AZN4JsrzBXnGJSUxHzph6Asp9ZyPiQo9aBGeJY8Q7EpMZ4qzvqgIUoRqMgOiBuFP0jTs1rkh0c3JkuDKix44rmY9q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730364954; c=relaxed/simple;
	bh=PgrWSsGuYA0COzPC5A2j4tdqNAr1q1a9oaKxxZwUeko=;
	h=To:Subject:From:Message-Id:Date; b=h4heRfyXgG8FGvPFXMR93B2h1S4OjfaVHDjDJufPkBxsDBFadee9ErDY+9BTmljbHfZ/CixE6DCVnxs7eSHcVT0LmH8XZACWRnCPw8dpcJoEtt/7iYJVKrUD6uK2/g9aXvjxZVWMEiPK5TokvM6Yks1lqt2AdHPxoHIO+Srt7Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKDQKARE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKDQKARE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DCFC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730364953;
	bh=PgrWSsGuYA0COzPC5A2j4tdqNAr1q1a9oaKxxZwUeko=;
	h=To:Subject:From:Date:From;
	b=EKDQKAREyJ8/FJDjl24malHQatGmMwHf8VZH3FtV7XfBXvTYkQTedEtocG35Hecus
	 AhQkj3IZBjw0E2PcCwDOUO4TU0qWLt8kASPa+HV08KiYTBRdU4xUykqbI5WaRuta7b
	 EuRJMCCj9ExbKwjk+0jjm/aRAAonJ1yeaQ3jQ1mSxxdkbHRx/aoMzj+zsEuBURPDQd
	 nlT1nrm0AccbniFmy4CeCF23zTGd7X/kzSfhhAkcGzP1gln77B3fQ1LitIOP00RESJ
	 r6eZD8mZO6Hr/gRd2ep6iBIs/rsvwLSqJrL7vue4DUJJyAE+9ujLnEWXNiyb3aZgH2
	 7PUgkm8ZXQo2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F3E6895E
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036495361.8597.2548636802324287250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45df9467589aecd9ade67544b21563c4a86c1b068204262e9bdd972c67451280
Date: Thu, 31 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730364953
