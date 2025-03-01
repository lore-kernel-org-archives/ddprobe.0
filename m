Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A11B423C
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740868134; cv=none; b=l3/DOdLV0zqf5zPSjSS9UJDc8cgfkWOlkqiZDkpuua9KFq8gFGizkPmsIG3r4bytcW2a7rHhMFuqpk419oA7oRXwZap3Mx1nc4rSscYVAfvoqXb5KzDRqQKsWtYFadLtEzBJFsUzc1NVtqqaGkgLu22uWbXtyJJed8R6AFAIPiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740868134; c=relaxed/simple;
	bh=vvlXcBgUwn7JX+ECBxCoEYAEarIIgK5Fqe5DWM3OQmQ=;
	h=To:Subject:From:Message-Id:Date; b=GkY0Hq8lglm4AR96MGRDvXV8CnGs+dAzlrI+CNgigZzv0uSUvD5WDoThYQ6r1LPXngOnW+YKGcoFDeV8zHj2t4BDL3lXJ0/UmOCzZ80vBEW0f3Kd+NOBXLFE579wy0giRiW0DegKqkzFcqazPacvGx66WvR/085VBvJlGGeJehc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBo6+rVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBo6+rVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABECCC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740868133;
	bh=vvlXcBgUwn7JX+ECBxCoEYAEarIIgK5Fqe5DWM3OQmQ=;
	h=To:Subject:From:Date:From;
	b=NBo6+rViXkTEYPleBY43svg6zyRYR6pP8jsgeoGcNyhVEr4MfOeThydpWscLImxQM
	 t+2NoYTZ6pdiults16tLwouABrXXIskwdAslN1SUey9YHI2pCf491uVFStBn8OVg+O
	 hduAZwI3ho9StJ1yPxySijdkc6KoKuEPgvpFqPgTSybXuKaS47azy2NX/WfKbdNx0N
	 NT62ATbYbh/XlkH5WFztjGgErPYHrrKVuTGAqgGiLqrZ8MV8hZgOcbzYsCzNWmIYjL
	 wR0xnGCI3LbzFwEG3Brj+ZXrlVexr34fwXWdhjmBvzvP3kYSx+e+kGabnym0E+INOt
	 7588Y4CrnkP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99511C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174086813359.20268.7444514157674928961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b039049ff9260b991c92d135cc84e78402ed9b5135c90d6f784bb11419a9eac
Date: Sat, 01 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740868133
