Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34B2A1CA
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760750394; cv=none; b=p97YtEYrVsVjnQpuDP8H4sFpCLPk1odE6qFCkxUcXsIMaLn/cmXH1Nz+XdfYX83618jyN2PikwF22A8VFz65O35TdGnll/sPatU1uq5tqw5TQPrvl+dX4P4Od7/S2y+yh5gD3nMrNc3q8kpo6MmQKPIw2RP80t6vm1NdDWKltg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760750394; c=relaxed/simple;
	bh=c67aKoCrgWJkRdP3+wdHZLnt3YLtXhnmgSJVxb5EBJk=;
	h=To:Subject:From:Message-Id:Date; b=FU41y/U8yh8YDs1NnotLNUNAPpnN5m3lzXw2saL2yeIfYvIap5K5KuYfGw0TvpYleLKSNE3lnB1Tsk487NIyXLEWQEjDEfPEdHcQKvNe9fB0th77PGgm/1Q89ls8Dhqha6tHF9/0I80qDt1FewQ8NqKnt3F3oNmjY5dGi42s/UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWRdvQ7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWRdvQ7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9182C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760750393;
	bh=c67aKoCrgWJkRdP3+wdHZLnt3YLtXhnmgSJVxb5EBJk=;
	h=To:Subject:From:Date:From;
	b=nWRdvQ7m3djQKdq3C+Da0Ch3YkMwLBwbL5/Fhd8choHF1gAm8u30XqgSGPmD7jN7B
	 40c1GZdLoP3j/r1R1clMpailHRlg+xtwk96cBA3brnHd2UeQESn9pftiS+feNzMgX7
	 ZK2zihaxZ/d2ByrJ1k15A1qc2S6lEwM1nB/K26c1rdvZPerjCgDZPkg8zGCpp5kt4f
	 Qrfts8EPB9FAwEMlpz1JSRTs04OB3975iNh3dfsoGXPqnrF2JVvV7vge+VL/642Vsf
	 8M/QeH8RCz5Ev+8lLDeUqhOH7X6BqDbkTHs8uYc1INCH2d6SET4i/9IQ1T570R7dse
	 ieFj/9VGVTWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E6CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075039358.11827.3908091094665233400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62db119cfd41ad1ccb38c7857ab7c7a58e059e2f961092784bf3f95c0434c1e
Date: Sat, 18 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760750393
