Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFABBE6C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728132954; cv=none; b=grNLTMq0M9+60g742gxOxpT1KVVubqGo/6lDcHgHvm/F5j2N70+ap6Q4f5Ooc16xw8DGl1RzJzzy5CrqIyEecVe/cG66Z6HS/w2TaTV+3kf00ytdPk+9Q2R4B3n20epm0jRQ0+pIYm0fdyLDoPVAosZoaYtefY2Zr8HUhhAXFaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728132954; c=relaxed/simple;
	bh=q5ek2UfO6+MdkMxVIbmY5mXACVlQhVyR9in8bPiQw7k=;
	h=To:Subject:From:Message-Id:Date; b=YOiI7nuRmgstyXXjNeDjbSvi70oEopvTEBdwub43odKOe4kmqrQafSBX8ZWcX5ds4t91bOh9TWmGoL6VvA4LB0pX1zQL+IC3TNOZHItH9GnEjFofP1q9ZDDGPkxbOqH02IVFTKn86Tzes+I1W3GjgpPeRK8oXsLdw7DIcueNqfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXBfGJUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXBfGJUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65FAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728132953;
	bh=q5ek2UfO6+MdkMxVIbmY5mXACVlQhVyR9in8bPiQw7k=;
	h=To:Subject:From:Date:From;
	b=NXBfGJUBx0PUl3MaU87dn+c8VTCtr8xM6ZqJh4WeYSgmclBEcdFaiZ+EmOSRSsW6v
	 AwCRuhw/OJ+zdad0W+IV1BIoIWZDMGNel213N2Hulj2ypXyPyncS5Rb6UCxWV1yymK
	 huGlL96vS38NWk1x9O23DtNhPBeusBI5HXc4HrOylmiObYLSexoox6klAc9Eg4/jPg
	 3OXg5ZShGBFfC+Uco7cfPZW7bXcenjb1qvlCz0dxINjdPaTLJ9ByJeve14M2ExMckq
	 8XwdiDr5k96EUWXWjT3K7ZHb2poX+0Nr4z86x8a+zX7WGD9dkT71D4fb0L54JcM0x1
	 xfAFRSuqjKYsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FEDCF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813295362.15741.4698334875310374557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfc2303d652c0eca5731d48a0376e3899fd2c1c1ffeb53e01a8169b6dbc5b2a
Date: Sat, 05 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728132953
