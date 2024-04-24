Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8915AADC
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713958223; cv=none; b=L1LbFFxDrHtjoQ4dpN+AuGiNeYE8J/64Hwtg9I9gbF516BWP9OW614SiW145+xIBRd7PxinpKAhkP1/TX/Csz0wF3ZU6clnREo3iFE49s93yfgBbsXvY+/RURp0B6WgHUGpAy+SBIwrJ6Qz0RTKBR8L+otrJ0K1O5XTOf/jQPsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713958223; c=relaxed/simple;
	bh=1rRMw4qvVvMfHXxzZrGjObMUi8DECMYj1tzVFbwwKiY=;
	h=To:Subject:From:Message-Id:Date; b=V0SM07yN9nLSzgbNK/AQQirBJ1DuzRofUZVi57dOVzMXSoUp+XTsEdP5cl8b7D12C/DAOm5sGV/T/PH82RVgBk+q0W9fCSDh7pauNjFo/dOLdrzQSyFs7eVvGNgjbBPjfPenOYiHfQY1aEPe3eCvTtimChnzLt/qk7/qOQIj5V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqxSWGw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqxSWGw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBD1C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713958222;
	bh=1rRMw4qvVvMfHXxzZrGjObMUi8DECMYj1tzVFbwwKiY=;
	h=To:Subject:From:Date:From;
	b=IqxSWGw883nuphc9fBjXMjqGaEjIQNZ0iri/8TzlxZV06rfW8Xn+Am/XzJXn+oTIP
	 PkKJyTvxL0xFjdZRNbwRBGq4XnrqPi2c5fjFiq1IrACTDtwOHxLPUOx9RxVZZSD0/Z
	 PDytzRgk+DqP+/Mj7ifd3KWntJOlrFKlDsmUZ6rlVqMonAH2aOdv0ye8vBB6yCbfD0
	 P15WfedfgEgH9bhSJ/ZyLNdMH/s+P+WUm5REuGc2xiNxq1FnZs5OGjSOmQQaB7WDpg
	 ckn5dniAL+Uyiam+CudFL8N3NiNbFG3/QihwcKsQfXyLZ+Ek+mynsEdPaBBvfNOhHw
	 7HB4+wLlo4Vtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EECC10F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395822280.30684.15260143564688697326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371ef7b5cd60dc6a46e2fb03936c10258c836ddfa4ca12782eced9f1586594a3
Date: Wed, 24 Apr 2024 11:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713958222
