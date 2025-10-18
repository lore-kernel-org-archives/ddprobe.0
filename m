Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AF6354ADF
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789394; cv=none; b=JACF95o1+3/umUnZo30PKVfQctYFYAGEpaDEN+Al8QQNddad/XG4oqMLzCxfdtylVU+aeBtaOyM9C6mp4PnHEqfVOyugIY/fFDyCNoQJ42xvHptaah9shO9X2nVdyVyTCryH/N0vbIoPaBTpH8427Mp5zCFc/hVg02yWogx8ktM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789394; c=relaxed/simple;
	bh=SPYFi/VX8lfnR8REoMBOAgyMcWQbWZFgeFoTTgy6Qpw=;
	h=To:Subject:From:Message-Id:Date; b=RgiQzoNxX0440xIwX0zFJoRdbJYfGOttilFhYNJrgMcX5P12Jri4SFFqjBnJEXDNxuiIMaaddeMV0ke/vf+U91sxl8+fjdr7v/RubICzVoILPzBsLjkBfdmBliUO7XbwUNMAIxlerxCd2zdLpGMRaqFZPLf29jI2bngAvE5BJzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhK6lGzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhK6lGzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7664C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760789393;
	bh=SPYFi/VX8lfnR8REoMBOAgyMcWQbWZFgeFoTTgy6Qpw=;
	h=To:Subject:From:Date:From;
	b=LhK6lGznc6GHddkANjBmruBbnItYPopfQRjA2b0JD9R1joQsBWF3ssHPRqcNMRFHY
	 ARMmj5tnC43vpLFHfo8pnSyIz+cQo32tUDXcRJwjSRF51anhpw6jn3VdTE8744z1Lr
	 zZePUoLpkXGSr79oxAm2wELpxyLl1Nnby5fbNsCmia7Nz9LetxLVMMf+Pa5v09F9Nc
	 U3uLt/0T2StedjiQo9zE28zSsAgyBmxHY50wAAwq4wP6mSPlYqLkyzqDP5yOyQCnfI
	 MGobjfvpWMSRdajtrxWbcRjeNIDbK5L/9WupMfSAwlPnVoriqMzBrqolzdR4uWv8AY
	 V+/alzh5qbSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308BCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078939358.12501.12021201193047493863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10cd9c372336efb8a9ed1525692b0e4c3994f71889480c1ab6e6e9fdc4b3513
Date: Sat, 18 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760789393
