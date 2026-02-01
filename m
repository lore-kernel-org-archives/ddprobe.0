Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C9F35028C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769955234; cv=none; b=av+uZVVRa8ankDGN+RvPcaAAv/Xp/XGcXHKnTv4yuPzaCV+dD6s8zpU5iThDcbPs3Dme0+vrbcIOrBliIXNy55dE6CtrU8prm0NlzrEkRiy5LOYJnGmArgGMY6x1kth4Ir5eOzAS40jrShhyTsiyo0UsirGycp5W+Y/3ZBnLGyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769955234; c=relaxed/simple;
	bh=LVIs2D+426VUhNcZ+QlpSocVd2FJid4nCrzWt+zaQ1Y=;
	h=To:Subject:From:Message-Id:Date; b=TrI9uofouBrgyDUxOTGjL6GV1oaDn87xiqGc7P15aYxluAEqFXj2D+PD2YSh4UkPFcKI9281LFPanrGIe7VfxW6qWBN1bJ37Klt7ugDK/fxUyU1au6QEYmGEE/SsY+KEaDQt3Ew2mG1igDWi7RA0OUPa2mrgBdHHEKTq9vJWhc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ud8hiDsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ud8hiDsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA8FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769955233;
	bh=LVIs2D+426VUhNcZ+QlpSocVd2FJid4nCrzWt+zaQ1Y=;
	h=To:Subject:From:Date:From;
	b=Ud8hiDsKf/Z2toyG1gc4IUnfu6Goio4u6h0zpuTyAwXIGMoZ7G1NyQYB7tni6ObGQ
	 K0ufOBePPC9kZa5a3yylnl/uGTFITYkWZNsQARg8hUQWeeEHsh9YxkVwcQ8GYhI4hA
	 yR2iopBJNyeVNFlfs1pKNZboIcatIjx00Yo7AdTbR0l0kdNmyHq5bhHdWfy2IQEMC+
	 52wRjemCIphgqyZ22/WMBWj7ba6xJiQ3uiSCX3tDoYnqLnehvPOw8KYxkHDSigq+35
	 VdLKm5fojkZsB/k13gcRXzOaa2mCcV3x8gCq0U0XuHG9IdMFlWqY17NiIIOP8RgKdR
	 EsDMcUl6/hhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2ABE65273
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995523360.15312.1551454525911101677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed217111d0fc439d009e8238bcb25d41ef51cf8c2cbfa1fa8924eaf3aea78ec
Date: Sun, 01 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769955233
