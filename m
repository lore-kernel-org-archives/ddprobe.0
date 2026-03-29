Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0EA313552
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774791894; cv=none; b=QoPr1B/JT3cB4aD9KsRhM1ITGto2x/Z2D/B3j2I1BguInOzVY00s/M9El3+NUJ9htyCIsa+clg+5Vl64IfhZ0thGSBvtzvTZkE3B4B5s+l2wzO2qblZRflXTKz7ib2IcDsgQtFZO7gUDc/XhGst//o6HOQHECJqHYX5XwijD9no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774791894; c=relaxed/simple;
	bh=6Nx/2y/fT7jqU+Y7guADz3JZtLfR96tqYIRurnIan6c=;
	h=To:Subject:From:Message-Id:Date; b=kbTzqgmH5qC3U6bUh0L7VJeMgyquH3AfAV+2GCKpyRXJvkSf+6UissWg70cfHGbJvKy+f5aKMm75i9qkvd9OJwmTDyzRZx73zxgq1rJ5CPDtylN/oBhjFkSPbNKemWmPNzQMX19qqMOg0DZ7stWadao8WEYvV05MkNtTV1E5yf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXYJVq50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXYJVq50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA6C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774791893;
	bh=6Nx/2y/fT7jqU+Y7guADz3JZtLfR96tqYIRurnIan6c=;
	h=To:Subject:From:Date:From;
	b=SXYJVq50vIY6T6Odz3HIXVEM2mhUMmpHQfHsjtvpoSgxZGUi0DUrVFIRdPDTd3Qh9
	 87fOlRZgiB8wBRLhpOWn/84CgLMIqblmMUwVpoHQcbAirPFm64tTmDCS24tDJXyJqB
	 Au9WbNTBoP/tocJP+ojVRor45rmJdh1zA0J0L7BWMPjAqPeh/7GB+2LREQkTwAr93Z
	 XApbSCY2tBpRaJyYlWTwT2RWIp+SxLIarErY+H7KqxgXVEcu8KpKLrnWeKuh6h99dW
	 ToQIgnTDow+tMdGwaDOtwiJIqRkYcuHcJDqOs34TazwsHuhhkl/Ud6ZL6/wpH0hONe
	 FYgYcHD2cwuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC6F3D604
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479189358.2327.15223232822110417841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66425a4a6dd66fd938700524dc797ad154de175cc61b0ed1ec67d66d0efc6cb
Date: Sun, 29 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774791893
