Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0EE21ADAC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737744954; cv=none; b=dYfQCFnDzCBYQpZvG/NLbgfavXgRAa9Jmnff/X+APivC8LnU6Ji1prJ1i6yTRnOc9kA8e7l6FdF7pn7M8xG0/ombrC4bu7RGIXZh6lyjqX78SXwdE6pGuFYTJ06iYmsqRFJeee1rr/haR2Uclbyd9vmXTiVTNR0zxlGDX8smIKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737744954; c=relaxed/simple;
	bh=ZbyHo5xRRt6Yk9k67/+tQuEoZLcOMHPmX9QhhOIK+cg=;
	h=To:Subject:From:Message-Id:Date; b=d8vkK9F3dcy8KX9lBEJdLV8TkGWOQb+k+wGQ0MdgoPcrSGhaQBMozhppJW92UGRwnrJ7yUUqRjTVnMYPk1AuQlse7JIBr6stua3VbP+Xx/rC30xv7CK2j5zGt8Db0heGtgBoxOc18qLXWdknn5gDMaVJUTVL98f9y/iSPyTRU3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiUTZ01C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiUTZ01C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA185C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737744953;
	bh=ZbyHo5xRRt6Yk9k67/+tQuEoZLcOMHPmX9QhhOIK+cg=;
	h=To:Subject:From:Date:From;
	b=oiUTZ01CymTwuhJpJdbuGOP9/4KDp2Yd1x5kzR5Hjr5kztDlZtwKMeEXcQYhtIbOx
	 qnsIrFEZEmSQzdpPmJmG1VA+gt7ZmW+dozij+QK8pYtuqGwH3TEKv0NEtrtYO6PGnL
	 txGvcHGLCyU9bk+Mw/GB3Yp/sA3mDNLcqgcNEdsDCBH0tuOYT1fNTvK2ymevTb8Zmu
	 d3SDXmMGGd4zinU/lRaH3y9u+1+iCAq6gdMv11u37NzdZM5rgnay5KBsehBDnj8AuZ
	 OHlxdtUP7j5Y0GwT/w35220lTZ/Q5XbSPU2UnhDtksBIpb5YdOPQg5Td3cMx5YedR9
	 P54eh3HNpjBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99160C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774495361.22480.1028463008970748022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640d3b9dccbdb0d0fbb8ee3d4f31cd2916ae3e0aed27d38c9e3f163365cd1a8d
Date: Fri, 24 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737744953
