Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B3B259C80
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780530274; cv=none; b=snawCSnFk/0ITXswlSKY2CA1uxu5qkpHo64C5X0xuTGaJre4ALZPYcCGcJyDQDrB+8DIevNJyRhMpLFkQ3wDIzZpPKGOrYoMiHQlcQ6yJ3lB9H4PghbuHm11nwl+Jugu+5p7egUYokdl3/X7BB38E8RtyEVq68cYCgKiTbI+C0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780530274; c=relaxed/simple;
	bh=jPCL6KB/4yjBNsqX9yp4z3jp4HfPtWf1PcFz0gvyU/4=;
	h=To:Subject:From:Message-Id:Date; b=byi2lOJMUxjfu6tBzvzG/UbNMTm2+o5APuWDiR/tHBDFLXcJf9guzQJKXzuvAiHf3r7U66e+E1z5YJoGM0mQcqTf4cipZ85jlS4SMgv+PYs0OftLCt0cgC3vEwHeEJXbBhWHE+ruSDeryRpj1D5fEKYRuj5HPx1nvWceWqpc2A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYKiCBci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYKiCBci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65CDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780530273;
	bh=jPCL6KB/4yjBNsqX9yp4z3jp4HfPtWf1PcFz0gvyU/4=;
	h=To:Subject:From:Date:From;
	b=iYKiCBci2hxFEUXiFdRBysCv8xM+wk9rb7uGDy7dpzfhp5lR34VembO4SKr2lx1xt
	 zyn3ldGtFm/HHiNJKrWEDN8r41E9nzpg40ZFKPEEvlYTUiVMudOw4EmzKfc8w0gMTT
	 WfRmm96UK1a144fQzuYG4ukAtW+7l56XnJDWvTAkxGRLEHH8hAktx0MpXTGuP9Jx96
	 2Tamm/8auXDlj+oUyUW9aR9fJRs6gwOnaezAcGFjgUDsXM4iKfEtYDXIqY9Rt4dN7b
	 qCeoprV+3WCIsAIjBQxiNpaz2gsUXARaD9BrDu7J/R3tZbJ0E3HNkCfWYrrVTpSqNd
	 NxR3NhWtgotHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC74ECD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053027369.8943.16955940474557258744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e181a5a3e9f0b3edd0ce6573869f58c8cf5ca1b87a6a5460937fc538e3e4325
Date: Wed, 03 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780530273
