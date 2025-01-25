Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE819E997
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737792354; cv=none; b=jyr9XpY9IzPxaeOLze20IduGb6PbcJN/knzKmd5M5JAq9k/oprtXOAzNGqy5PhEjSMA/L+nxrBRvJmo8e9dxL243QqOJjR5yrfA5RIEZNaIog+TK4dbcSXUvKl4UUJKrbRJq8/vq1WqLZlQCOV0zfETboj74KKGdCa3BL5CY9Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737792354; c=relaxed/simple;
	bh=queO8lE3P88BCkE6AmOmsjtFB6B+OVWDx7UD+4kylZg=;
	h=To:Subject:From:Message-Id:Date; b=MiV0uCp5hEVCwkTbFvbsPBqhOCkVal/tCy0w1OTj/tIRCI5hFeKbAaqFFtfMHlvQtXLz3D/79Nx69MkWmt54K39OpArv3PLf1YVzGQ/6fSqD4XGbQ4HWWyPNo1yfIzwRd9HFoVJspTFV4aXHxAcUdtw9okFc59ydYO281stPVmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3FKw7RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3FKw7RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D2C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737792353;
	bh=queO8lE3P88BCkE6AmOmsjtFB6B+OVWDx7UD+4kylZg=;
	h=To:Subject:From:Date:From;
	b=Q3FKw7RDcQQ1REYJagl/Ru/AGnlttLk7ifA8d0LQl6hFn3FYhpMuKrWcbZcpkphqz
	 9t4ihgMwXai7jqLJ7rM6PZk3WSqCOxxjbJqoUiqwRGMf4CmBPLVluexOod2gTh9ESx
	 gLl70kpFs5cs20mj4ohvAGKga2yB7u4T00m+XIjV2pH2fp3UugjHdlb3AZcWvtNm5c
	 Zj+j1hdh1TWmHzSJb1OhGF0mL+hUBDN+Bp9qfSCqbrbzhwMl1tEZZfbzFeKHiOstso
	 d9758D6HJKv05qZUCJ64G531n/fgq3JHsz2wbAlu8oSNLAn7/pUrwioFASBkDUoj/S
	 qj4C57QTuE7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BBC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779235357.15699.13282912118599010342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b85e36d3e0866bf84a23ba5f0788702b972ac2a0da5e8e829886361bf640d5
Date: Sat, 25 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737792353
