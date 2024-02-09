Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A3356B63
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707457697; cv=none; b=h13Bb4fohCjbdobYs9E7SEKcfs8hWvfBs05ef+nIFqQ+8vKcSS0hDGSX/nTewhScrAYqgEyiNiEeDgjuSyFEHberNQT+PzAl92Yul3Vv4pmmqAV9t+UCjVBTdpIzCEStwQkO953MdvUH5KZviUxKZ+Kqb6As49tat8nLfT6H3iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707457697; c=relaxed/simple;
	bh=L7nyQ0K8Nw0Oh19BKrdYe6TXtvX8FsX0WBX2bmT/uxQ=;
	h=To:Subject:From:Message-Id:Date; b=r99bo2dHYWDYUihwaMGE8uA7Yaso7EJIARRrympkJ38Q6tCqltxlvuAil5QCakvcndwTfLb0CXBDoOET2+Pg948nCJvYOpAvjQKJg1R/eBO5HcHa8ci1E8PCDlxBQ2GksfUZADNeRBepLoOyXGFt4pVmcV+a+oSyuk+Jmmm2e+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxEObf8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxEObf8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81480C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707457696;
	bh=L7nyQ0K8Nw0Oh19BKrdYe6TXtvX8FsX0WBX2bmT/uxQ=;
	h=To:Subject:From:Date:From;
	b=JxEObf8zaezVxuaZpnR6WVECq+6xbO82ApTndH+xOqTwWAlushidtJ3Le9xoAov1R
	 NZ0+5lASWDPCeTzWlFffHsPq04i10rfBR6i2wAJWsVArzljSFmcQoBens8qR60pEVI
	 BHKGylmZ5bMphz+rwJY8zSIJvuyCszgP/oYmf+tDvqVxWPGBrhjEdCFbogbEH6wonl
	 BnAexWYeNpym5JxnlMHRDlQgFhH3mvtrWAVtysCVYKW6hdtJWg6nJ6F1acKTR/YNY6
	 icv1o9hpQz45bQVuumHuPRlswg+QAi5fVO9ZubqKSfKDxqkVEwD5WihJ0DS+r6QJKa
	 WjjPdpiRNMq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DA2C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170745769638.23715.4240174071935404285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af628032874d61f1b45e39302efebf7bb125cfbfeeb3ef695f1e9ba18ac8b6bd
Date: Fri, 09 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707457696
