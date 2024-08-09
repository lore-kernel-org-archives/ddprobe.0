Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219C5168B8
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723220154; cv=none; b=nrrzgGk38Trwv73pkga6TaHBsbYX+wKH81KYySMqwWCZjcnJCQNlYtTVQ+EFswGpAnSASZ107Y+KzC86pE5pXPAjFe0/+CQtt67sdCgPjIy9pN3OfHvIsva4FkpQikVsrNHspqT+oIBK1fjlSa5IEEo+TWb/9wv3d5UpXvqOIPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723220154; c=relaxed/simple;
	bh=6lmTr5GdF0l0qVXsliGM+5bjeC04iSVNIq6q6G3RW6s=;
	h=To:Subject:From:Message-Id:Date; b=K6VbBgHcpXXDvjNw1z38LAe+bIAujvXGcJCUitQ0ChrvMZCdNwhf6iuLXdNaz0OOWzehFW4sldn2lt+bd1B+rpFUZgry4SNktM/KgEGGARToX7d1tiuHBHtZV06n/ILSt12okmUZXfKZTpJ/UUfmSmAgXpdgFhzxZ14to026iMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxOwgAKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxOwgAKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233BC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723220153;
	bh=6lmTr5GdF0l0qVXsliGM+5bjeC04iSVNIq6q6G3RW6s=;
	h=To:Subject:From:Date:From;
	b=LxOwgAKtEaTy9fYlLAorLTRKLsIqaq0PslI/n2asmhmiqzzhB2J1uricg4rP5ALs7
	 FXq47utR5UDi8LN9cuwSFAMO6PlDL5hur7Wa2WJg/WwXvXvm69zAMbxE1WCz6d1ZEP
	 Lrab8TQnVVlLWgbWboLWD3yOr19+PR/wBFZEXQt9pikiQE6aoIV7fpmWEvnQdd6B2F
	 laKA1+kDjfm5yAU0sEDXMeZTgdXZGj/BFRorbHCBsrz/B91WiSAUYi7hlI94NpA9cq
	 Bo/A2VqMv36tVYPdw1TE6IjtFxMIUFPMIS8A69gVnlij3TuEn8GYtm+suc2Vml3VOn
	 jPLsw5Cr3geiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322015358.23012.11733297804588874093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e542e9dce56fbbaefa382783cd69ff5727f91c7f5fb7aa3ae505baf3958761
Date: Fri, 09 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723220153
