Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011E9352FAC
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331694; cv=none; b=hYbFdF6paC39xztSiSYbgvYCbPpr5yHuACeYnW229QMq5pb0exON4G7uHKScUqdVN5E3GY+x77uibOiK1gSpM++DpS3BksnfdTuBtD4405AY/sSDugbfPEQFCkcQ9xT62LpIjEfAy8lLspFhNL3hHLL5wlU9fbTHNAmHmSIT9uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331694; c=relaxed/simple;
	bh=pbfyEp4wam/9y7T6ugXa5fuh36XYty8tldTk8WW8NkQ=;
	h=To:Subject:From:Message-Id:Date; b=bNBMb/Ij5drL1ej55itTobPOfS71RSekMww81Cf1kwBPTP5lMtk9VBn1sKP4A+m6aweZsGIf289qcMz7k5fGzPUaDG16XECMCegto11P8smfejxwYB3Sd/CboSZs1u8EIvZMO1VQKkEkL7xnybIJrLnMNYy1LfhgQpDl44502vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNoR0bw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNoR0bw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FEBC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771331693;
	bh=pbfyEp4wam/9y7T6ugXa5fuh36XYty8tldTk8WW8NkQ=;
	h=To:Subject:From:Date:From;
	b=VNoR0bw2v4w8wnmliAcAUC3MH8soeZ5ZKj7RHYiTwGmXJW397TsYiEp2MaT7jcGM6
	 ajjR8Q8rk2dvGaQMhO+zS7alb5raFkc/JdE1V1vjNutllBTQ2npjrN+IAFG2US6C7K
	 JW0pCkbabjinzboGu5yDgSZmZKUOMLHsEAB02m/1TY3P1ANcY79/FkB5lzXqWc26uI
	 xuicy9Ywjo94sNuPezef1/e6OEuFDhZ6sXuuJJnumywBcO7wlrPr2yrTo2Z7miIGtE
	 UMaZLtWSL1vMYYZoYEBvxeVCZ67BBP291bwHnJbE940wXOYL+OlKNVXSOn/rg55icF
	 C4tThtMS+O79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C19E6816B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133169361.1282.16686303299257498063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d479186f390ad4b819178e0855f35778b4c84f22ff0ede087cd30373dc4358bd
Date: Tue, 17 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771331693
