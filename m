Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D502346E7F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764959574; cv=none; b=X0PkmaokBbZRcyRyoswvr38+jHbz0zzzdzP6+ki/djLNYdgOj4qLaibgiFVYcsjI8hHYkkQBaAijf2BtJt2HIiajtXSPxQdH9k01uR1mT92YyOpX0Mggb4ZbjXe0HrJDa3Rupr/kvJSMQxXgst+oS2onhgBHcOVMad/SJNVK38o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764959574; c=relaxed/simple;
	bh=Rt6DUPIV+0sT2L6P/lsDGx7/zxrV17ZDwQC0WXMpi1A=;
	h=To:Subject:From:Message-Id:Date; b=eR5uWIC5MF+XZFVcuz5Jr1qMEoku3CeIO/nmMS5BAWzTw9kVVbiCxkJ0sXzi/XJZEQ2ZZJYZ+V9H/n9K1Bf9yxtutzVSAzmwddGUeww29SZckirI0PGcqYFVktJEOreErc8K5TtYxLN9y7m5wz0qtHj2mzxzVV9GExctBEH95to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYa7uORN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYa7uORN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74AEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764959573;
	bh=Rt6DUPIV+0sT2L6P/lsDGx7/zxrV17ZDwQC0WXMpi1A=;
	h=To:Subject:From:Date:From;
	b=bYa7uORNa8+RVBBuA+lqkY01KNekee1gh15dtRtstby46fwGc4xejuWpK8J6VwtsP
	 4HPhFYLxU32HeKHg1jepPN5KFTjjOcxPvfuGx72YjderyoVjHukGxTOTEWJTEXr1pP
	 fNeLZU0O+z4Jppr508wJr5qAJtE422IzdtNARiZ48bWEEBlfV32ehLYa5tyZ2ZPTqP
	 ZNTvvZPGWMSW/88D8vzaMwbJVMrIDHXRhoBRMoW8TEHtXD+2Jkplf31D0c4Bkt0gfl
	 sVZ0BY3RIYb2y46gi1f5BIgbHNBgavOP6nBDXYAE0U8DSBBaDqItFidQ87bMzNo7Hm
	 OzcoRWYuBYyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279DD339AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495957358.3058.12289405254248258300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df68339eace512c1df659c2250dc17fd309ed2537275ebfa2167fbd7d7d996e0
Date: Fri, 05 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764959573
