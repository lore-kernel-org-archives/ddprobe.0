Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DBC41760
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714200743; cv=none; b=SxCCBE6FAGoBWsS0Bvt9xWnfdguwKLhmkxAs6pUPnZm/FKJoAjMPT8qvrjsdLGJtfu4HqYO0agh92Ay5h7avmHJBY/SqokWXf5b+eMd/Ht94FKwox8sEKjcB687Ay/9/08i0IrtdDZaJZvCgV5ki4mQ6I6GRtDcc170PmbLyNbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714200743; c=relaxed/simple;
	bh=iwfjPpob0DYs/41WVZldwmFvbDiEvwt6Z73IXIn5uvk=;
	h=To:Subject:From:Message-Id:Date; b=XxLBxt/Sv1W9B3QuRF9PAnxOPulwt0DIpABcnqlcrJ75MuXJpCZVwvdMUVbWxO3ufgAbgn6dWFySnG1IR7elwO4kES30NgHGZTMhTVGRE/sjGbyfHkPqbBeXkK9Yo/QApYA2iyVGUeEvtzMUn43mWcvDY6uwiKFW0wlaPAWJwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmdbLHtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmdbLHtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA849C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714200742;
	bh=iwfjPpob0DYs/41WVZldwmFvbDiEvwt6Z73IXIn5uvk=;
	h=To:Subject:From:Date:From;
	b=HmdbLHtRwFfGz9BrgodEKp2AZw9azX1g6NglgeBYQo77uk7dm3MBZLOmkcL6fGIT5
	 8Ekzh1QpjcL0iGt/q1+FhtQfJEqnLlV+8f2w4cDDaJroxbKG4PYX95dQmRyY6sAF52
	 5oEeuosKbHxh3QTqQEN53ZBW7cEhojq1wNBKLa1GWXl97aG3n38tKmDepC88uEBpIi
	 sbLtsDWK3557EjhOrlDWXJfvyLiUHxElzcR+Hw9Ak1gzgSJj1IqaG5tsN25j5GcpXx
	 CBjNtxT3EUi9v2rGHt88H6+FlEe22brR90h6vfWMuHWGsy2IA4NY/Tm8JOzvWncvr+
	 d0XteHB86+wLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD55C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420074275.29553.10223344493984722030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8883f1d0b0dbf9199f9b86fbcce5a1c31001c37ed839911e2f3e112c24603216
Date: Sat, 27 Apr 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714200742
