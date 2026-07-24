Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6403117B50F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784858434; cv=none; b=Yd8Z26q3N5GEAFAQovYe5xwI35Q6tZMxn1WiLT8mhRcSRhIM8j6k+73IEbZCH+KtofC9W7gyoxb68h1E8X9IGCMHs99joXnMbknusAs/L4/iXbxtQjkqG70x5Kb3j/f6iF/emp/ErpIztkfQ3vPfrGYNzV0H4rMmfixo+Htucjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784858434; c=relaxed/simple;
	bh=kjyRsjkIIFsjYytgYpxZ2Fa7sYIQQfpaLAmpXqgd0c0=;
	h=To:Subject:From:Message-Id:Date; b=ZKpJNDS315vrBCise8Euwazsw+QIxSqeAiOZzqloPVX4q3uTGg8boT3v3x/6SeT8kS9CutqXdMSvb3BBzlczwcUs37o8kBj3FHLiRLHLiiMnW0WthnbX/+yW53tI2xKFlq1hLfKtVv0NX+CNrzJXol7KyIgR+H2SViZwxs/i8/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvcMpB47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvcMpB47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC38FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784858433;
	bh=kjyRsjkIIFsjYytgYpxZ2Fa7sYIQQfpaLAmpXqgd0c0=;
	h=To:Subject:From:Date:From;
	b=cvcMpB47XAlJgwow7RIwSRh/C34Hb7TTCmlbrRtVwVqjw1x1N2bS5IE6lRg7Eqeqk
	 hinpXNP8fmKux9wYf/e51QsuZNmDF9ZBkxTOJMhCkUekqz29Df2q2rkE7Y7v9BQMpd
	 5InV90eNuQS42xy6FfgPJpQ+PBXUiPYtPefAITOCicfIOgjGmUGrb5PlkU0FOkx5HA
	 NoKWMw9/Nj0QRkH0z3C6SJsh4ZpjvsORv7cyJKEinmx5zVYWxkxnPTizz4YhGmi7gE
	 vp0y8JSq9qo6xA2zJgs62BImA2BggQhm7REx0ajFLrvTSKmKjmCl8tY59F+lIRr6Pg
	 9G7w2kXaIlUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF7C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485843368.27738.10886035914602411161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f277c9e5bc658f83851ad5215ed9072a715251c9795a797cf1216b6e23329b2
Date: Fri, 24 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784858433
