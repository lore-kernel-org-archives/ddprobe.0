Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B120E302
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740565134; cv=none; b=WMjO9tCgnkxNCPI4N8Wo3CJjMTGg5TAZ+TPGMjEcpyxgHLXC9DABy2MUC6crJa4wZvJNohXCi9L5mkhZEEopdlppUifShOO19x4FNHOb3cgVk5lsS1qChS/Ny+Ld3slUSzOsTYtncmzZ4is8FmVnW7kkThfWmqcPH6kU/Z7wXAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740565134; c=relaxed/simple;
	bh=WT3/dKKa/6nbDQqsPTMifaSzW0ZTTJzogqQ9SWfrKVE=;
	h=To:Subject:From:Message-Id:Date; b=LvXTdqxxpNHEeXFPyNkPKwlRn9AJSanv9aNxOuf4SXKCDRDWpJ/xntH/PUbgW/gstTsx/puY8ZMGlZITg8gbECsV0xz62wIlCZdUtOdCNTFnswHEIuOrHLNsXFBMFfGps/0saSZYpL16R7P91FjJPW2nbXysZVo5g25btZEnllo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4WaGEzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4WaGEzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9E2C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740565133;
	bh=WT3/dKKa/6nbDQqsPTMifaSzW0ZTTJzogqQ9SWfrKVE=;
	h=To:Subject:From:Date:From;
	b=R4WaGEzwRegtJjRSurOVpuLOdrty8+QwLCBiIB4W+1zu2lEaUo6+jLOx1X4nxGEl9
	 Vpf9CI0aTHTWt5ew+amtXiHy8aVa0hskMoEJqGwW1BZcKDqS2ZNC1GLszAiIE6Y0pw
	 mZRzXPkYMm4a/+RdZPbK1gl8ARDgOWWnFZnoBdWLziFZROcD+J+UKhX8XQnw878wI8
	 Sdj/qUjnehVo9cmBiQDoIT5vsaayPA9bjo8bfO/IWkTqhpfTV8FsbwiB/H6l7Zzeg5
	 vgyp1fX6uQWPrmALKYh77So2lfYwie9NhOyXc/pc/bqZDqzKTfLMHcw38sxJvChP/l
	 AgjSYjpigGWow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A787DC19776
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174056513366.20458.6513903593976035762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6fb0c035b3a3d793225705739e66ad07fa91a2e07eb427d56855b641639086
Date: Wed, 26 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740565133
