Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390881DFDE
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722786354; cv=none; b=qMXVlD5Iy29Gv/P0SPikVdkq1vbhYDnVShpEFZ0hqgxngpXdu5QEumcwVzeZOaSGCzLoNO9MsymZy/OxQXt4dY2fmQJ5Z294qJBaR6uNXxOZ298VDRWEniaC26xsVRDSD0Rl7/Cu9bDDEUgmm4+/PtPsSKlZAJssOE/6ZbdjKug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722786354; c=relaxed/simple;
	bh=ILoRp5Ok9foSjwbfXr4S1xoPHfytMgXFasp/ZwxHwfc=;
	h=To:Subject:From:Message-Id:Date; b=V9CwJuDoQIZ6LcOp/L5nQR668GaSNaPLz22CAlSSjYMBh097yRDrqrMo8aq2FdujaI4uJHF1HVs5SxhLwhkQuwu4dTc9XNaErJU+TfNxdOA+xX+yNEOLBpQI7RjSqAh/BMnrMRurxHLzFBMOO9uO7H/rB1lnaqOzchxTb2E9WS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhLrdeMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhLrdeMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C75C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722786353;
	bh=ILoRp5Ok9foSjwbfXr4S1xoPHfytMgXFasp/ZwxHwfc=;
	h=To:Subject:From:Date:From;
	b=BhLrdeMhde+iPHNiixoRacRTIiV3Uwt4m15Agk6sQpndM94DgAeqvq5qgaoEF9E71
	 wCaQz7ksojL3uoRUh5rKV3twj5FUbe8frMdRBMCyUvKAJfSdio9m/MxaYdPG/Yj3sq
	 D+Que0czT3is/ICS4BcjivGZfM9da1NFKIgY6KNnBKwL8JoOeqWRUCdEFbpbqkPU8O
	 VydTJQqbUDWEIXczHHojptL7bDICbuzVIbpsCWGw60rvd/kj7xfUrRj6zdWfQVpzUN
	 ghf+jeM176y+kXEaQrsc/5OvuifF4TdTBbEr4+cuQx5huzEKlc+rrtoH5D+jokUvhO
	 bMWQ1d++XMtGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93738C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278635359.25165.3045313409322617677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26eba9c3ffa4ee4db867bd5988a6556f4e91021558b71c1d3539e69033bce33
Date: Sun, 04 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722786353
