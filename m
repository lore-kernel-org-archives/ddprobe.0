Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC6884FAE
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709642297; cv=none; b=b8WzlKfG1kXtOvqxdQzF7Nrlljk3X+pIIwnuGE+BOzkB5Gtw8d5FmEm6AvlCBE0zmuErzmmEaebMch6mtmVsh9/DOqUhuo3BsexJfWRyISN9tkXqKmds/nm+RZ9PHn1gCX+lMkqKaoA5XmirwBpCl/D5Lotv4puWtZXuriEl2IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709642297; c=relaxed/simple;
	bh=brXq76bRK40fGpHIgxXCtPTr97Dnbi4SWsNFhrfYkPM=;
	h=To:Subject:From:Message-Id:Date; b=LmtTf+XFx9dpwL9w3iOgO1l6q8ZKRe58KlkQPayHzvmmTHekDX+VqjM1F3581yYOsdE2Qn0UsCaZqfWV9qpbwx4fGWU+vVYjRLpTk3YdXs41NUy+YivckmkMo/pe/qKkLdikFHdqoSAvBUlsdeqtQFDGRSnR8iTB+29RMDvdkDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1Shm5rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1Shm5rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78526C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709642296;
	bh=brXq76bRK40fGpHIgxXCtPTr97Dnbi4SWsNFhrfYkPM=;
	h=To:Subject:From:Date:From;
	b=k1Shm5rwmW6vqOkVEJVjppldKsaFsQSjEzRjAIm3HarlPq9YCedKQ7fTmPhMeODZ8
	 gV2f8RX3tDI7xX+ERgWDVch0ktF8ErHuRTck9jKRn+H0M03UBxpKsqgdkHZ2n2kVQS
	 IPv0fuTcHKZwMfXm1+KD3DCmJydfajSmECj3mPwK8mWyLgws8cElZdPJVWwJzQdEFf
	 Q3sZapTa6/NkRQCH+Pl3wgHpbXEku0O6BctumlOYpEfiNpXsGFeUlzLW6Dc7QDYJz6
	 n+VVQzzgPSYQwKxAMwHXq47EgHepD7rsYhDSAQ+wqvVj90Lq5rsFvAF2YMGjN5yhwF
	 PNWW9ds4XPJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F063C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170964229638.14151.2207561298117630498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0018bf0f83c47af7bfae5e1941ec33b46ed337433b5b78d1e6c5ef64edd60b9
Date: Tue, 05 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709642296
