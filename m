Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1E8205AB6
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758260994; cv=none; b=bMdAvcG8ZmckNYpVY6xAwT4TnAO19IVj9XcszyAQ2i7btLsmPCjrHmxkakiJVMcqO/5uO+5CIIFHu2qkKksmXweFXiWZYT5Jb/wkJu9WJFmg7boc2QRglglXwby2FflEOmoBJd8WoECWV/qJ8bMHjbd/rKqtTmKaXscUbf7+bU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758260994; c=relaxed/simple;
	bh=Hp7DsjYuUfbGGf5Xm/uEO80gbKFZ2NMKrJf8sLNV1Mo=;
	h=To:Subject:From:Message-Id:Date; b=tTR0Li20BJtbr1VZyWHzfIaYtr9avbhrlKQgrxNmcgNN13FsZ+r8LrEs2Cfmt8CX6h3G2GiW2bX1lEO+dQiI4LzDAzzrYxTo0YkyszEfLLItZgKMtoxDYMOHTZGD/zTmu66bO/9ET2vBLVtbi2+F7kRzaXDJoxcyVnbDvHdPhhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV0Ju+cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV0Ju+cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6201C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758260993;
	bh=Hp7DsjYuUfbGGf5Xm/uEO80gbKFZ2NMKrJf8sLNV1Mo=;
	h=To:Subject:From:Date:From;
	b=XV0Ju+cJKvkg1Au9h4RV8uPxpjgL7Bb96phi/RTKsPvwi6h5KX7liOdZubmXz+jKi
	 GQ7t58o6hUEbTjD4O2VihTm5gFncpsfTJ9JgT+RfKIZx7Ija5sPfs9PSazRFvbZnNy
	 707bu4N6Gqg0Jb0FZHd05iGB9qIFVYeQ/fSNSPElT8uhvSw6yZ25ZnPZU3Hff3UD5m
	 XEMKACeYN6onPtDU2dJCIiGZD45kUNo/6ndJQSt+7uptGP1Jdf5OoPAi7dxXzXdPUg
	 22EjodDebsvxaAfST2vey0OWrDq7iouk5RjF8ydTiow2OEoqvSvVRay3+Pehp3V7pa
	 7fuGQDwpd9J7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C04CCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826099360.31227.2824203245970425856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb50861cc8899b5bc3e20ccd20d21487ea0bd67c4aa6381bf70b33ebfd89567
Date: Fri, 19 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758260993
