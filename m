Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6BD2E041D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767138834; cv=none; b=O/XKgUUcIq1e9MSTyLuXZB3qgposckKNKNi+2XCOA8cKE/yiuZ+g+LkxdqZgPA9qdMFIr8oASjCtwzViJe+VfW1tlZ1ahNyQ1sDgE/LLKeoFO4I9G4Cce4ppyIx6LrIu5qNkDgS0byZap/KSsx9KWJ5/y5d5QCa7fpOxdAxeskk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767138834; c=relaxed/simple;
	bh=XdHu9n/2klHnUeFDI7BC/3dmtMp5h0a+xI8fO3o96RI=;
	h=To:Subject:From:Message-Id:Date; b=DCtqQtefIDDs18ZguZw3I5lGgbnNFvjD1got9yz6EnA0t2Eb00YqWjKfImVj7dm8T0nfNZkep5GbXyapVZU3N8vZrrBRsB1VTeu0LnN4yUXpELx+cvIY2Z+s1J72he0+pKhKUL0ujWA3rEQwMGzUBh9DpCL80ZbArTapeRNLrv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYqrrCHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYqrrCHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767138833;
	bh=XdHu9n/2klHnUeFDI7BC/3dmtMp5h0a+xI8fO3o96RI=;
	h=To:Subject:From:Date:From;
	b=bYqrrCHKzCbWH6oDaNZqjd6/FfhhTK/B6R10andyQqGwO9YtQn/w24DP0rSE7vMMR
	 ChBj20w0cJT18A/q7y8S9oBC7mSw6kp/2mf2yNSPjqIAey/EcfYmjCHG8zF2F3fowc
	 Sal8s1WweyrsGTv+XTLjpDv92I1tYTIqjet4XTd2RTw5iOMaRv/X2GXMpRp7xDavaP
	 dA6Zp8GrqdfFUXN5v9xNHZ2PwJnN8tQ2FHfFpCi3qFChwCV8YOFLOJKfGehob1/ayH
	 eANADKoZJrREuN+wkEB2M1R637Zo8+tpL5UU2q6TfCfFHkeQVyxc3UG5ZkLQUI1CbZ
	 uLMY0jcEmzSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D06EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713883358.15599.733739568820919272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98027b1c58904667d7ba2212b8f676df34c67ced14a0f4d18bfff5178f788be
Date: Tue, 30 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767138833
