Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D60232D0F5
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771572294; cv=none; b=IOwxssa3JfJUNjn6xRJE6xI9lOqT7fqnfntyjHI8++CtgWHmDm7oMfcyO8guJB/pXRWaJl3JhJ8pXYqNTy2e4tU0x6W37LgZm8SWJ178/8sGqVxLCLivRx4uzmIw99ZJoIU/z5HhAx+ZbrXuVBut8TTP0FnNnCBjN4yWGqaV35k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771572294; c=relaxed/simple;
	bh=tOwgRYW98R1ZHE7asl0+HVKzNZROSui0zac2O8joV5A=;
	h=To:Subject:From:Message-Id:Date; b=npMlVm8QDghhX+SQ41Zz1hKTXtnpMaFV1dYB2+oYb7jH5RHDSRhx4u9bdDRzdCC78M/WZnsl241p+XSLFdCPvVCVrzXe4JBZPWAzq6D4wGxFdFwlduShgf2fPn24rJjiMySnw9UzhLbKrStoEIukTMW+VPQAbxx6KMVVLyDT3oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLnhekSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLnhekSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3ADC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771572293;
	bh=tOwgRYW98R1ZHE7asl0+HVKzNZROSui0zac2O8joV5A=;
	h=To:Subject:From:Date:From;
	b=pLnhekSejW8j249SfY7sZd9zpYy1yDV5dSmZH7JeQ8I/iJAOxQd46DBpDZHn+wljB
	 F7sdyCPGgXI9U4sshIe2Tbp1i3IWoSpZmE4AOqu5vjUQQ8Xsjbo/ZEXQMzmJ6vgUDj
	 3DqhubYESui/tbjIOVuDX2vNCq9lAppxDMYuKXkFHVMpv1YaGuHqRoVPC88W9AyWez
	 TAY+8Krd0OeZWktiHLLUM8P4oUzZby7Eh071XDSj8wWLTaTFru5A8aSinfc9x6u3B5
	 429ovVDNwcv3Xv3SHXevIl3FwOLXNXh/1lX87O1qyHW6GdmPFXG/LTlLx0m52JtvMw
	 7cbimhjQVdnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9673BC531F9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157229360.17928.16153789450971617406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8ec7299157841c8c68884ae4d2bda348fe63649a766a623fe8eac9af751cf7
Date: Fri, 20 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771572293
