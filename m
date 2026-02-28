Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1155B270552
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772272494; cv=none; b=TzlHfVwKwKhv2PRMFrDrjhZXQ1RgaUrPs+zwz6F5Wcyrwoq39p24DI1/IXweBqqnTyTMRgDctfMvOx0BybOYgFr5u2okrnCJ28cxguhSrV07M3Qmp3HFyTqGOKQhZ9+HFAjGsOQkWN9V8ak9YN5fwB2v23O+uhBnV66hsoFClLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772272494; c=relaxed/simple;
	bh=H6yGWmxlVwAvYG5QLfJIlFVYPkr0UstnQwrhRKwK1fw=;
	h=To:Subject:From:Message-Id:Date; b=JD74gCMdWZnTvtGpFCgXUH8AO6pzMot8OStQPUcR2hjMCok+tZN/Z24Jz4eOLqc40iqwSxShS2xvzPewkcLBFe7p+4/disy/8oomesonIzx5zhVmLbEkpqtqPvaRkTzG7AtI1G3NsO7Vyw2+FNI5sP4sLembh9RwzqMVET0c1gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYCgWsk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYCgWsk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E61C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772272493;
	bh=H6yGWmxlVwAvYG5QLfJIlFVYPkr0UstnQwrhRKwK1fw=;
	h=To:Subject:From:Date:From;
	b=KYCgWsk/+3Ng5NHuwH7mYxfZN30n4frXfEnmXOSbWF/LtfNSOXkhT3NdCs6BQaHs8
	 6v13HmU53f7/JEW2ZleLV3Glrzc0d7iibriCFfFziWxIBwpvZ2x1TMavoqxYptCDxO
	 Ix3JCECrT62u4ZiEiDWVleauofgNTMkgg78S+J0LUQLpzDR7wiavWn6oxAfk0t95pO
	 riJubwmDTB4d4HWmqKkDjDT3IP68OK7Y09AkTLQ+t/sv2LyEMv1RnXBLfx4m33fB9N
	 bhVWMRIaw1cwh7Ch1PVyE5MmCNRSNIZgzqW0ZjPFR42LnEo0tLaYDTQ3sYlsqJpnCF
	 r8E4wtTkrZ76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C80FEE4E2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227249360.20190.18303031882079663060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f126e78d9e4190c020b7c9157d71dc42da861627d757a9c4ed274733fdcf1f
Date: Sat, 28 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772272493
