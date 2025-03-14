Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF455228
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741912734; cv=none; b=HiPkMxa1NRf+OEis5xaXIU3suYJWYIrEyMfyWrcM0+cefvuj49/JDssj6L/kxYqwRN2+dq+zVV36PPAWrJ6yPe16RZ1jIRPtSOJKmj9W1TDtZY9Ay+QRY9hcrdr3gIgBoiRixBSUrlYEcdUHtNfS9SKThZP/0YCrTKEHlhvTY9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741912734; c=relaxed/simple;
	bh=BXop+PYpvoJgk5EvW/c4wAsDvHai/mvAsDDwWmAKnVs=;
	h=To:Subject:From:Message-Id:Date; b=qRwaI/2yOF7zx24MW+L2QTxN14dObEI+YzDXxKAEYOkjM1YvDA4ox0GH4MTtScDDCWQAvDPfTT/ahqCju3GVJv2r0+HSccsaWidTnlb6tFKM3eBenYz0fWWdnu/qMi4L+tIMAlUOCneDnvaeS51nHwZqey7pe8gQuAYlMfHnppM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBA57MnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBA57MnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD93C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741912733;
	bh=BXop+PYpvoJgk5EvW/c4wAsDvHai/mvAsDDwWmAKnVs=;
	h=To:Subject:From:Date:From;
	b=rBA57MnKJElf2RjLZLgTakqjJr2fnLfuPZ2gt3Pr8UTwUbGiM5vrU0borUhPQu5HM
	 08X3BuOZCvsc9IvIUpv+JwZLkb7zGazPHQ89965Kq5fwQwNlNatHsh3dhI497SeSci
	 CbaQ1EI6LTr0Tu8TvBR2ApB6QYPXZX1x/xulDgrd0YSAqM4aQ/hSwVVK1UuvNpwPF1
	 CPH+iRNzVuelJvTv+AEBwvI7DUsVxqqReaEDX4+NZ15I+gpeCnLUTHR8qFsSxvmI3l
	 Lzfri24nRZAmtal5iV4Bx9SMp8DmX11+Bw17VHSW6k0YJOB5uKDKuaw5KjqP97ANl2
	 j5jaA48tIjRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718EC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191273360.23233.2724343633923017051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff570a0a5e69c5c88adbcd84c27d7fffedd98bd34a863e38141b34a6c8180453
Date: Fri, 14 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741912733
