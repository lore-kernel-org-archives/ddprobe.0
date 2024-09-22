Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335953FE55
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727049354; cv=none; b=MiT/A3RuWNOv+WQsf9D7QM+sY0R7jdo3d1XLWUodN7B77bWokSiqvIHrD04jXo7H8VVqhyHNi0nJdjjRy2L12oZD537pQtOyT7kJ2/Y65t+tXe+SSpP8WQE2CpudRInKTHU9De9dHnWh2xg7YYSuhp95wdgR0TDbPu3vnRb1Ygc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727049354; c=relaxed/simple;
	bh=HOq4v9MrzcV7Ic92iz0CBhLKeM6VMcAZRQKOwIi22eU=;
	h=To:Subject:From:Message-Id:Date; b=G2v9VGUsR1OcHYzYHr6dU5cf1U45tEZft12xBEk8LdHDHstnWMwDQHsMyiJ7urEJVrW9q+Ptx8PSk2jNADMTd7W5xGoRNnbBDgqDkb5gxE3urPYJ3Obs03myKFY0dB2Mk5hH/wEmbbGYpN8Q6hdsmE0/qLCfOVUIugFMsDJii/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB0yMFOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB0yMFOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B095CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727049353;
	bh=HOq4v9MrzcV7Ic92iz0CBhLKeM6VMcAZRQKOwIi22eU=;
	h=To:Subject:From:Date:From;
	b=BB0yMFOHo90IYmLwoOd/yzAQy8PKOhvmAmT5B0O6caDmWjZGpil9R0MubrZS0GMG1
	 dLOMgeDAHLluorDtyZk1k2D2vTdPb1cbaQBZWL90q0iSRje5Jx/CaUnYLuq0ftSXLL
	 kAoz7vl8wrDAr81vLiqIJoKiev3aLvOKhYoSXXOJxu206tnOSrP0wTBwiSiAoamY1U
	 EVAaxIq3YQRJ2xcaZ0t4R+pmFebi2YpcBnlYDmtsCp8YRdDPOun7/Ls+mNe3iOhU/L
	 ihnSBa/y9zbNV8oDE89+e+4jstjb8UowM2mrJxQzjIeStmS49iGlj5AK8Waun6Tdvq
	 5byKZiz+Mm79A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF0DCF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704935359.9592.5601488949349109620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2728216ff40aa6ddffa22e72fc4d3965fffe320e77be51cb73392231688217f
Date: Sun, 22 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727049353
