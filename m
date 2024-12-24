Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A984C80
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735058754; cv=none; b=daOVcxxJbR/85P08hyqzRGFxEKuERDyWq+py4xkKO1SO31NqG/Es914+F30wJoHAV0p3LPVWIy1hI0J8prls6zs+ZMTNS87qqcmjww13C7w64TTvUwHMnNwdo2kzy5SnIG1PJNTWDWoagjY5Q1YMb8BhrvmI3DTaCe2Z+Qx1tx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735058754; c=relaxed/simple;
	bh=1u6tkyQR+QmN7qIJyv1vBCxjcCI1gvjZYmiZn+brl3U=;
	h=To:Subject:From:Message-Id:Date; b=RzaPN6IZciDtsIp0CMuN4rXoH29DvnIBMTZuaV7JK4P3gbBe2W5aUprkTDZDHfLUcytPm1bxaCjCdFM8FZRMDohp7CX6VIMmxfhiNaVPElSplPHlGqD+BkUEPssXCzXhTmfmnq1flb5VDvFaOZRhy6oy00TZ4Na8V9Ybl/RaueM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulhwOFmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulhwOFmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BDBC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735058753;
	bh=1u6tkyQR+QmN7qIJyv1vBCxjcCI1gvjZYmiZn+brl3U=;
	h=To:Subject:From:Date:From;
	b=ulhwOFmdm2um9oogiv6B1v2LP/Q848JsNZRXAtPkivSTfr5lr5MImS/7Pyb95UohY
	 S+yH5EkTHjqLIcUKtwQtWwNSLuTEFlz+jZi51qF31CJyz2cMRXpYb31JCj8CDkzwN0
	 XP8JwFBOmdz3JIAP0OxspNk5F+T/YCOpsdzfpTMhCyaytc5EpLNV2Kpl6A09mGodDz
	 vtFJuProQzjFre9GRnKNnanj0JW7xeMGFjx5ufgAnD4agNWr2j1SpO/QXIsWdnvJfI
	 FpghP9MtOFwVySRg1h1lMYXxHRR9Yx/ib0ApnKiKw1dhXhxAKYClsCfvoCZ6dhCV8A
	 MRcKmClJMvGzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A523FE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173505875363.24439.7347962810454734537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc85002df5d0964b726f118f1bef5d7fb8304d78c57245f75e0123cc4877468
Date: Tue, 24 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735058753
