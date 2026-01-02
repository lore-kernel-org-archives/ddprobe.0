Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A16E2D838C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767392634; cv=none; b=iVueWLGkbu+eAjJkoGY8uyAZylM3gTnPIIyF3ZwUoMTSlxn6/S2SJiOvLUe276UiGzie7rvpZKopCGKxAdzhxGBe2Qf0E9MzYQbOOfQyVzd4Eo72YhuQ/1hRVbJw37/qFlF4yLcQyFb6Qf/F24YD8/FCvmdFEYgIODSUYVWKFCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767392634; c=relaxed/simple;
	bh=Iu7CIz6T4rvlnB+76wXM//U2JoZWKty6tuKYGzIFAzs=;
	h=To:Subject:From:Message-Id:Date; b=T8l7WbLVPuqAbbtK7o+m01glVk4NFEB2ebU2NiWgHfveSUB8Vv4/C9oCZ6ECi7JLwhcQ2qg5h4ljbyPxAhXbFDuLIyGFbfUxjKn3B/WP5LVrv+4sv7ndo9TNWco3PgMbmwuWr+EkoAB7JMbbJoUc0pfNQEulOeWvLyyYfdYNBzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgxSsbyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgxSsbyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E966C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767392633;
	bh=Iu7CIz6T4rvlnB+76wXM//U2JoZWKty6tuKYGzIFAzs=;
	h=To:Subject:From:Date:From;
	b=cgxSsbyEweUrkXiSMfB0cQ3AuWf4NYklwq6bcHBcr0sBZAvxRMwp0Q4FfMfo3mw4u
	 CRhtPHVyFG95z860nVzXv3osqzdcpCIShGlnffnfD+DFigzq8rlGHejU9xzbYb49fZ
	 1l4MqLOSJUyJxdeitXxcbZ/Z8qmFvRLCw+Lorb03VWUxqmuK02DMwPemrmpW+XWw2o
	 DDyLiUFQ5EXz7zI1HGxW4uTAW3Qs5GIUIcZUW8L3+oiLs+VGdKyex0PvbqpcOGNa+h
	 /e6IihrFOsT0FRVlhKhm+8QqHjE5R4h/vArMeXUhYDlbzppJ7uKe1Q/WcqfLWbGMxs
	 IzOndvjbMRvWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C37FA3751
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739263358.7865.9262127518705356817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab8caa78be328425dde7bd5dbe7d81d5d192699d5ea4d8b31d1f0857e59be73
Date: Fri, 02 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767392633
