Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59990375F65
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791238834; cv=none; b=fZVFCZASsR7xutH8kqbfcv4uzBTTjhr/8z6ayPfsgsmWYlWI3QI/D+SyidKy0twbmGAdb9ITmGB0Es1kzQDkFFMEQ+zEuYjbUEwW0gdKCvdTyM0jZAwU+Ag/THbrliQlMh2n4dARk6f6RtnJtae+uD6EaJixR6CHg6cGSdmOe1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791238834; c=relaxed/simple;
	bh=sWwHq1w20xfh0adEJg44aeSEBVOrz9chDcZhr/+p7RQ=;
	h=To:Subject:From:Message-Id:Date; b=lsClKBjh6CJ/lztYw/B0VGy6oT0ii02RVddVJylP+Dyz7ZH0zeld2VijGXgH/npU45298nkEo1qVgvw0k3Zrx6OzlpUbT0S5WYfIUC4Iyp7jkFjdEmMfKc8/7DNv42KpVk9nEn3Ixet/yJMCKfnKSqQSGhFos6H8olmGo8r+jNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoUN184B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoUN184B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4215C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791238833;
	bh=sWwHq1w20xfh0adEJg44aeSEBVOrz9chDcZhr/+p7RQ=;
	h=To:Subject:From:Date:From;
	b=SoUN184BlQ4P8IWoaaY3pBpoZP3ept6jUrsyrBtFAq/hq0iHag4fXNOKwf+CsgZha
	 fUoTthO5QDuXMr6vIZ1vf6qVQOgYbcDyRCI3hhgyCLF19LBMqD0Vd7s7hXrtqSPxwG
	 EJffOBiL8RNJzCPr5xm8Exx84pXbfuLOy1GICGXGTErpyvFY0m4rKEvx+x5I3Bif2l
	 SeHRiZDoZw5MMf70xYRMiVIOiQxH+PkP0d2ZYdx7nuFG2uB9zEwrNc4oblkN2MiAEY
	 c59mu4MvLAR84iWnGsrqENTsWG5Wg8bN+xnJIi4+TCzAGuxoey+g1cq5il91Iu1q6S
	 iqoCxKQWKuX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB516CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123883369.12117.8305638390114005393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61881f6a0c5c27d9d96c493c1756174a0793c47f7e7c9ac8a7917123da74725
Date: Mon, 05 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791238833
