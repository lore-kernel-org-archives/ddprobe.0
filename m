Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3195B3D47D3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779061234; cv=none; b=qzwGGKEZssBon+iThQIWXtmYN5eHAEuVdS+zfKC2qauVG0k/51BoIGsyzmWZtKp/GskSOETVGbrDPe5MJXFXMVtx6sKQPfSI2aa95gcOvoCQUAWPvyOVuyViX4FqyhR2AvUNCw2luGxQSZ8Qs8HWn6jgneYbybMXsX3DGSxWLtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779061234; c=relaxed/simple;
	bh=XLjAdiporAhQxhnfalfMV5N7D/9ad2FZBwENZqiivs0=;
	h=To:Subject:From:Message-Id:Date; b=AT/Mn6PQV0r5hkwFulhXrJr6r5jbzOb6H+RTvcjJnAZx9s0+AiIhAM9OxKzNCVbLIKj01JBq+sCiZ1IG+YAMUKS/niDxhL8P/Gphnnf0ZHiChWU2Kal+vuz8GDQ52RadwOc5SqYRznop0vu6nxTjnMB3EMrijLCrbmGO09aQOEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR3KwyRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR3KwyRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A87C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779061233;
	bh=XLjAdiporAhQxhnfalfMV5N7D/9ad2FZBwENZqiivs0=;
	h=To:Subject:From:Date:From;
	b=WR3KwyRt58QuyK9a1JbuSgwKNJQjqshoTFwQaeuNDKdLvhjpJHQyVPZ8dnDDLDGqC
	 FSsOxLUFjmiWgD+IlnJglS6qAECKrB/KbBd62gb770SIvySL9rVojGwfWFWH+Ub+3O
	 0uzCj8F2Urvs+plKhbAyas91c8Mlb95RDPJfu+ELzm17R+lMBeJG97KiIZ7UeFsHoS
	 FiAJoiYtXOvozRK7qwbYd2jMfdSAl9av4gL9NNoPIdOFknZjRAhb/4c6NC1n3WUAXz
	 hM5ichiwvxW4q5B83BtL6dSEhPAskfe2JQ06r2EgQ4q0bwJ4o6+BtmCxe9d+YVBtil
	 cgEqMzYSxiOYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB94CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906123368.1132.17130878933189489328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9085956bc5eefa8fa8a994800a4446e87c3fa2fa219a8ea314a45c81575cbd41
Date: Sun, 17 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779061233
