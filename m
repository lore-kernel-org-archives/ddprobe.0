Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250672DC784
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762423794; cv=none; b=LefknmAuRv8T7OdGa1cOjFLdCdF9FJIQqAbOY9m+Nzxno3GgDIIHOYSDTsu8nYS0nVKWF+HaU1XGRCeRuOGbdYSiy/Pi+3UwBeVHtSguLsBs7eg9uzps2R0jDcVx0nVOoTjxYyU5ggQ9Dnf75V6yZiy10Ygd6+azkfskm2JPZ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762423794; c=relaxed/simple;
	bh=lXANM13H2YkXRFzwGE77qXjGPaFprmOPZ042ETdTk2M=;
	h=To:Subject:From:Message-Id:Date; b=Em0NSw2yWXDIAZ6XT3xej2QJBCw9WmsrGFFJgO4P7Qwmbg5RAdc0EZBGaNoeU30vLkApSXGxxg18IpuX+veOFvGAe0IxUvIBj4W1AMxK1+80jJVaPPvX+BZDM+zXsSQW8THECYhwP4Ze+G0BynkKhitl8RzklfClbIlTzaCCL0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rX9QHGPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rX9QHGPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE40C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762423793;
	bh=lXANM13H2YkXRFzwGE77qXjGPaFprmOPZ042ETdTk2M=;
	h=To:Subject:From:Date:From;
	b=rX9QHGPNXPBOOAiDsGoA8IG8CzBJLXhF+I5wcmo+uNclW4LVq/rgJZwpdBCV6iXm0
	 uG7nEeQuOOM1ECeKZjDbMH9aA0XV9fiTm6TvB6JMOiWKW1CkGC2L1hL16Ds6rk5Amo
	 3iStGNIuHE2uKqwZsxL/x+lexFMmf0ck1WdKbba2q+KD3nHqHn5Rmo26ETkJjRnmm9
	 Wcipj3lEUvHwf5SI6jjfRXkkSlsHhYHvz9MP9Kkd6jtThg0cuTyhbs2Lgc5lAlwIC5
	 MFcrI0bJLzzuYbQQKiH+e9v5d65ih0wRFr+wKKbpaS2STXBgoTqV7yeqFeOq/6TWUJ
	 z5TgRHg6VR9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B3CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242379358.22434.16102155208766731013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5332be74a37112fb208d0c383216710152a2b7ae42a9c03240b8d893ef2d0c
Date: Thu, 06 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762423793
