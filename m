Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DD32BE02C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787374234; cv=none; b=WhmCThXdaT+JlfdQfyNsTh1+PipThcoa6QD6af4IZq6TQohENh4PHcZcP8s/Hm6XYTX2FkRbnWazDj+n6NsUYoKaDS3Ogljo+ZPhQDVrbplp8+6FbvuETGJEpMPuirIOVbyFrzcl4adD4Jl5psK/KjwhEO0l9ma0jUf01S1FkYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787374234; c=relaxed/simple;
	bh=+m9NB9SXAyRuE/NEYErDILxI09zueQR6tnpv/n3Gs2s=;
	h=To:Subject:From:Message-Id:Date; b=M8DgHA+NEfvMAwAvw53sth4ZTqfN9cA0EOJXMenC+qOeQUkfv+2oxT7dJVyVIW/GkB4dcV1MLFe+5X/VrGxxie99yMhw31KbWqz8rsRlQwwmjNuRrVCx/7QjUQ0jE/JFdOCgOgWG88j9iQadCMPI53Wm/uM6v5o0pa4XXj68QIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL92zlSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL92zlSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD299C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787374233;
	bh=+m9NB9SXAyRuE/NEYErDILxI09zueQR6tnpv/n3Gs2s=;
	h=To:Subject:From:Date:From;
	b=jL92zlSKCOxkuugRjuloPF3fpVIUpoDN92FVj/1WQah5XtPIFkNuA/39MfF2cLcEG
	 JJ/KfBCpiTV7sCFstLHd9nNKMrs81tIlUgfMyh6n9lKd4DULdYJN9kXW4p8IHuqTaA
	 E6LBmXZQaLxdQYKTInSxJnIxPanhc2TK2DIHuChp2kqgKW3CMuww9d9kTiv9fQTXyC
	 Q4ZqrR9h0Oo+NglU8grYxUPWsVAGO+l5OIlWDFpy4CSzYxsSobBaHi/oXg8taxerGO
	 CGJoYc57LFPJ/+PflIfY8SqNLrttmsKuwiX+8YAdkxBkrkiA6TWwT7FtOnWFhTlDu+
	 xPYO1CtAryqgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29C1C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737423369.30414.17309517765726896964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9c27c0d59a7c16eb3e777ad4f305b47af6b934e43f71927499b5c9afa07696
Date: Sat, 22 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787374233
