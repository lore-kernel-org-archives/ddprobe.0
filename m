Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04C1D9598
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732277154; cv=none; b=EKVqsHN2gvP45dWpRaxR8z9mJThpvFOgGFlzd5jGYV8lwnutreU+GQ67LfuiL0gpWq/be0VEwdGXHgzRYn0ohkU3/nrzx8CaEpznOeVHrvIgPlNV8xLJj0DGXTy6+WQ2GjraO9o82ZnHD3rdpC3y2QVwP6fQAzNFvBQw9iYt5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732277154; c=relaxed/simple;
	bh=JvZRenPaV1GMBa5stw6edIqBSlabU0sn/EHd52Nd5I4=;
	h=To:Subject:From:Message-Id:Date; b=Ztc+MuQ+41homc2GbZgGGA/5BqX+TZKrQSkgptAH1kiAw5ev3mgZqZTA7OJdLDYnQJ6LWzRypcvuFnifbJELTWCKIRzCYehTdExuv/lxxaOV0PgqR9gNSjH9aE9MsOGTZvsSfNyY0iDDywFJh04rIq5GIc69BZckJWg6uH4C65U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYlDC8bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYlDC8bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80E5C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732277153;
	bh=JvZRenPaV1GMBa5stw6edIqBSlabU0sn/EHd52Nd5I4=;
	h=To:Subject:From:Date:From;
	b=jYlDC8bHSMTYyYK4Baw/R1nXXPst8eaq+9EJeUklVVrFyAcGLteHUWALJGtFKOn3h
	 2KJsh2/TXnSXQ1qwfKPjYC+U47d1xRgRF2U3PHu8qtHmtApqDvGaEgGuBx1XX1jVgp
	 91rORR4Cxme/fo0d+QFZf0VLwXcmqKIf+tRAbT5e4ZuZY6WQhxKnqzpXrj6bRMUpB4
	 KFMQyrZ8XN+xOPP/Sje5CtyMxq+VZc2I8HoXKycMf86moXLHXfsqYvS/2/aaaCnCKW
	 iOyqF6g7hFBNB0zkk9kLYcZlUlpZBWAmyFVEfoUCi0dwCC/fyS8Ch5c4pm5+bjtpji
	 sJhDVhVrLAZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77FBD75E2D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227715373.10900.3898619646241672595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669e2654a208dadb4d6ab1f799a693f16294a8f43d94bf0b1812ed2b8ca0ccc1
Date: Fri, 22 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732277153
