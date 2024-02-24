Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FAF1378
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708747097; cv=none; b=GTDKAIXO7rbChbZlUuSE/tshBGaw9wG7zI5dMsLwj7lpYea+pw9RSJ59eqlnCH2rjCwVJsOJf3MBaDVJ2l7TVv2rygrudfQGiHksoGfCuIE2LlJ9cQ3+bHyIaPq0vZiApkx3UFt6vGZHkQSI91pZ/Dh9Qov7WgNA5c3xpD9Qd7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708747097; c=relaxed/simple;
	bh=CC9UIuI39XRUUtVmHWMldBSa1ME3PwtPJzMSMuJ2iN0=;
	h=To:Subject:From:Message-Id:Date; b=pBnZEYzdxsJ/NCDMu6yex2y4r+7Et16LJajH//QVTopVVacRVw4u04mwNL6LtNCKK5/IwR7CAJieYvnZ8twQyPFUSy7OogiTZpAZcgMZr/R6/5UIUzVkWuJe5Wc1jSSc5iU1gjpVEK72teYQalufNCfF9+hHJsygkgFPPYOiibs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ssqqqdmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssqqqdmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80782C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708747096;
	bh=CC9UIuI39XRUUtVmHWMldBSa1ME3PwtPJzMSMuJ2iN0=;
	h=To:Subject:From:Date:From;
	b=SsqqqdmfCFG/XvvNkrk75CWtUMmvCkhkRCopywXT7WDbEt+4eGRgYn1DvyWOFjaEj
	 wZ9DZMxE7M9EHlouUJCM9br/IsPwf3etoA8WfOPtklV0+rDXXnm9MHVJLi3jcYR0kH
	 NY9BUyqiG4Ia0L1siNAkC4LP9hdEdd4T4cqT+Z/FLHzUL7SDIqsYokiDl1/gHF30C+
	 ec9Z7b+4Ant703NtZX+7w2rRNRXPgZ156ioiZthRIg4f2vnjRl5l1Yy4/HdByCH5f7
	 5YqqdZtckfJEM8pk8Rm9+5vnIYGrLxvtBa02+/ErSMyjN73lPVTirsPZqnpKfHcFAW
	 R2ceJqg/tG1QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F889C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170874709636.4593.17143528402386847972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7978803a4c05828a556a1ca2fa515724ee6beb7170f3b878add48349589f93ff
Date: Sat, 24 Feb 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708747096
