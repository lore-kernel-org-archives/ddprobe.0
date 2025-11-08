Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE8818E1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762642794; cv=none; b=ToClKJX4aQBmLdfZqwfaM7AxWOMXoS+AzBvJO1DPN+8yiHhEy7Nm633KmCJC+pRFfwLjdtML2ibDpHRK6BaGX8Toasr2PulwgYOsU0Cg1pRRlgB0xcSpBHKGHNbHkstjOQYBB9jvpzZxM4pvcMSSqXZ3cQCGk2Q9/lFx4OjWvP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762642794; c=relaxed/simple;
	bh=Fata2AQsbyFEcXuO3Sknae+U7FxoG5lEY5q7jnMJbfM=;
	h=To:Subject:From:Message-Id:Date; b=X4j5sIriEr1T0HGVfQ/r1GtUZtCdzX4KH6QVX0lpVr2eV0rF04iwM8ex5zTDDhVxmzY9jfCloNGliwx9FBylWGFtdCtoahVQXxI5eMpTrtpL0kWab7Uzkibj7RrjoLGz3kfsNjSnrkw9dZk/JP5Xro5DwReIShtvrsHvdKz0z+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkZ/wkH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkZ/wkH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA303C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762642793;
	bh=Fata2AQsbyFEcXuO3Sknae+U7FxoG5lEY5q7jnMJbfM=;
	h=To:Subject:From:Date:From;
	b=MkZ/wkH8CsqcfpQ5zC4dYwDHaU3wYSvWEUaV1DZaVY3ceZdKrTQXEzhnUstcuJylL
	 dnxrMQJelCVLVuNTMPajmwRCni1q9hkDOZZLsO2x7wWmjl/0hUlcuJ9+1Bmni8L0f2
	 d7vKxbjp7WomKJW7/xEuwH2AemdYKD/GkH3V3EGa1Q6R23+EMJFMvFoDhorlGaFNBU
	 LSCkFZYI7uIpSvQbr+DOMfpzap078mSGNDMaoOJI9h8DlU9F91DftyxcoNou9fY1zW
	 BEJOBnkL8BslvSttUXiNmUNM5cq7493iEVqDxbFEvuumLtKLyaUTK2P+jwnuNw9Jfp
	 StSmPx3eQPZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD48CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264279361.29947.17569148252710408359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5933bfb91cfa00741bcd24d7e9a11c6dba1b5f18c9058088d846cd8150e362d7
Date: Sat, 08 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762642793
