Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D90242909
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748302194; cv=none; b=fVBL+M/axLInNksK8JcjRlrPERHeqF2S5IDSAw0c8UgOhQvhbbd2Z486fVftfzfc2ZWt0WTsdnLLP/qGxJLyIRTnbuMa36F3qffsDFE9f+xaIO0KpURKLekdMhEnfhSwlzK8gerFah75h+aB31MrDY/F0Blyg0qG7V28DTCqCEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748302194; c=relaxed/simple;
	bh=E+zEe0s8431NQuprlfO4DNounJs2+nwMyz4EbG9LHsk=;
	h=To:Subject:From:Message-Id:Date; b=IpWQlr/1XiFid8Q4PThhSI9NXnaEOO2mrKUdPj+PA8DGe0VI2e4DlIHhpxnBJXXxSEEODYYRETbd8nsTrlRs6NSW+sxnb/C8VG6o+yAfiik0N9erIBWXHoBRzAm9Gwo9hYm5lp4ob2TmbakQ8x+2T7SmCVhGr/unnxCXNA+QilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EalmLIXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EalmLIXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBDC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748302193;
	bh=E+zEe0s8431NQuprlfO4DNounJs2+nwMyz4EbG9LHsk=;
	h=To:Subject:From:Date:From;
	b=EalmLIXcDWTgvoOliFHQqlLYlsJuulDhJrMBfOieuCkbkiIQ5R3PUu9G83BQVaAFd
	 3M3EfZX2fH/O9oMxNR1AuNS1kuk4eaACym8XjSuouQMru20yX6d+2dcdAeA/4OLlRd
	 veNcIbH4gk18bCPbkANl8zVdSj7PqpVX/hX7TlxW7veB+WiwYue1Nu60t1HgFijlZp
	 C5Sxrfk6WUIfUibNrPgtGBo1CL3wDwUQKeHxI/YyT8DFq7FBDc6tNdevYE/dTKKcn3
	 X2mAA0A3KPNJRU29apV0O5ctSnjK5UZTCuCiWMFAFveloc6fe2xPOlGUMrYcd1tv2w
	 OLSd7n5B03Rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481CC5AE59
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830219357.25774.5916552338511059019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe5cbd60c42f1e03e7ed9abd95225896b99373936018f4564163f5c9ed02605
Date: Mon, 26 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748302193
