Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D081E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736573754; cv=none; b=lssC5qjDJbTJZyWGqkEoJzQniMPNZQs3YcOzogkBW7thqDnM5SojAvE2iQl5hHxW1q+WCcZtFe9OeIDbCp09Bjiz1342/iWbYuX97jcrlKUIxeDeotEIb1kgJFvk3Rn8ofbHVU97JNrUabEA84kk2+dMH1NXABX0dSzmgq7MTws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736573754; c=relaxed/simple;
	bh=cJnE/fWRAPKoT20TIQiQcCh3fsV9FZUREejQbhQP4pc=;
	h=To:Subject:From:Message-Id:Date; b=hPYcnk13lFITFgC6lNXt6wwodIC1O5p0AE5f5Ivem5fev/i+uJTzW5Zhfdu6v6EcBowtArPlIfMssVFB5zLMWUKWu+UDltgRqVJJFyYpjgVu7XP3kY+LyFFJn+XA1+svkR5/AkAr274s9zjxfddWi2qaCWEt0lTtJzcLVD7VXPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSc2uM1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSc2uM1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A732DC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736573753;
	bh=cJnE/fWRAPKoT20TIQiQcCh3fsV9FZUREejQbhQP4pc=;
	h=To:Subject:From:Date:From;
	b=kSc2uM1G5ghs592vfD1tqPm0nL5Eub4Ang/OK7VvTGMh84lDqMuCXFsFPRs5CoxIS
	 WypvEdn7gJ9CjC6vijBqn+gMXjltIB8EMWAIUagOqh/sdb0KGDG18SOPjR7sdfTdjU
	 Il2ivmbRKXdGo4FpiOTlwnChOhjTeVQ/ryifW283Pqkb7s9B+Mwfi8U3LHKTWqsGm9
	 p33079VnXAb0rJDsSOqxaDI/FFvZwFPbWA0F/xkZnj7tvUHv8C7ev9i3L58QxZ7EVh
	 GJLxNguiVnugcToIle5I2ywyIAusOa/d/TWHDC5bgmvC+UZj3NMhSg3E2rg81On46d
	 f8fELtKs8uYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C17E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657375359.14892.11203374488598298737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148e1b746352ce28b7db5a5bccd4eef8f64aa30fa38860379ec96b50d926ac10
Date: Sat, 11 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736573753
