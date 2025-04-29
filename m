Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80641E515
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745925593; cv=none; b=GUvQLXyNPA/CGu991L8iKaXPqRp3WlHsn+Y6/nEck7yJ0j55fBBnN9h2y96c/xeXAUDpjZvmOGRHTlZto8hXRSPvm4e64k3YZl2z28HDeNmx6l79shxSpFIqj6XHytKcwSu3RN/6zDiVoxqm9Pn7indCgovXrm1LiSe+YY77pfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745925593; c=relaxed/simple;
	bh=UUskNx9CRlIHFo5vzbpfsfG7lAbThrt9lqMNhJdvsu4=;
	h=To:Subject:From:Message-Id:Date; b=niLgdUqHZ6ztQpIHhEfTLaT3UH8TeMoFK1n95b1GLbyj0SI0cpcfi6UueWpMZW7wLyd8Of2qpoEnuArBn8/GvoRkzOion61qHTecSHruJKJPTyW5hy403x+qvhvhI5D2v6opzZQXSLd5uSM9e7/8iouXz5pSh45uMmjPnuXjofM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfwDsfQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfwDsfQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745925593;
	bh=UUskNx9CRlIHFo5vzbpfsfG7lAbThrt9lqMNhJdvsu4=;
	h=To:Subject:From:Date:From;
	b=cfwDsfQwO1u9WlOs2DWMoHq7bXQlS8ibVFI/qu91sScOjlfzM/FTM4plK9WA7jI/Y
	 xR+8I0V7QaJhqyHklYJmEe/Fxppy/nHLDxydsMqGEzKsTskeahRavtGwZ6eAI7WEA5
	 NE4dKa3JFK1ZOGZLy3ObWWwAh4W/Z9G/SK8+MyLDaxnwpJUSC9llAZuAxVcRNRP1A/
	 8kiy9lXcz+9S4MtwwgAQfh6SnbdV4bqlK8jsVz6Tpwfor7z39QYv5gganakQu6kaEm
	 pMB/kHiUgmL+679onqSsGKt9F4i8NKXgB8xoEX8LWKO8ia7mUTHK5R2jkkSNK911gb
	 O/jjE6lvjTGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98EC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592559357.22730.7089332981426071584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfd6dd4a995bce49d576f00e792a1732c97227d72fc36bc531564bb787c5775
Date: Tue, 29 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745925593
