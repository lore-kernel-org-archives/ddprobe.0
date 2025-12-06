Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134552D3A77
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765005774; cv=none; b=VUj6WZmRxPXVTuHKmt90B4qIjpivtcC8Yb9IIWb7267OFR99uIdRIEhpvceIizOMa3f4280G9WToz8Uwd+eanxkhvBmxVLvsxWCAsoRFqxK4mvodVV/wf8PGk90H3X4f2kmYPbtp8xgCPjuXWXSvZCZuKYEuxmdXJLuRVemPuk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765005774; c=relaxed/simple;
	bh=4ZoomJnVJTqGlAMalpxo/bNzTuxMJKxN7gHMQdUF0Mk=;
	h=To:Subject:From:Message-Id:Date; b=YMnkUn1q80Cf43Cjy+2MY//hcjgzVpGrHjs9DsjP9Oq68wjFla3EQJAJWci978Ypj7qYvtDOaldRrOP2RFDcuVj5FI5vBJ38uQj8/bmTyks0V4K3bfI3R62A9GAu2Vo+6Gp+0bCDp9HxLA4QFDvoob4zmzuDfdYn3ZTIhbnraSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbS7tVae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbS7tVae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4065C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765005773;
	bh=4ZoomJnVJTqGlAMalpxo/bNzTuxMJKxN7gHMQdUF0Mk=;
	h=To:Subject:From:Date:From;
	b=VbS7tVaefJtRBllxoRVOtNfxlZYar911UM3d6X1qluUA+JbDrTGGwC7EGNphvpCon
	 SAa0ntOMxCY1AlbhEH0V4VGTZ0u6ofMLZGSIkzCsWuJZoKYj/74qBKV/+SaQLAlBvZ
	 Oiq4R3beFBQP0FaKx5CPbmK8AvmI6da72mhR/rD89aJ3yTNW11TR6hS4sIBuyWB1ZA
	 QuAJ28VU5b3h41KcLT8Vsv4bDqeYOvVsz+9XV3WzOxKncnF5wxIwsgAtn7+jWmZig0
	 +/4o97+KkODsjG5mXgYAjgvAQ9WjYbUuNMoXiUYdZzU2yoVYfwpttqM0ViATZwb4Zs
	 yrW9efWwttceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E73D3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500577358.7022.7698843103656168190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2d9f0c4600569b18965c8a497e27b6af40a573a262883c63bc881d7c6d1a26
Date: Sat, 06 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765005773
