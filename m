Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F9638F230
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778281654; cv=none; b=TpCix7IiX0OBDvL32zbOKKITo0iiV6soeUj4spXS5SIxw7nUnTCPsGmgzNfldfxdBZalWKW50rhY8R4m/qc8rGhYmXsf3OKkkp82anBelXmxZtuCJ+CZK4bcoXBwWVRhlJId8Vq80Jaeeu5ILCWcDDuOyAgV8Pf66Z7uMoAYfcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778281654; c=relaxed/simple;
	bh=DSD9LvxcppedYQfgxME+X20ZjAJzX1ANPXrPZTqjefo=;
	h=To:Subject:From:Message-Id:Date; b=LKifNC1HQfrehqlxleo2migZ1ZlICjjm3wgeVlmD7RVOt7CdcpN8woeUxN0CxNdyb4a1WyGX7Zem9qlqzGc16S77SDREjMl1AQ3UtFpRaeT6D7rkGCV+grorVGxVhkOYBvLbPR+ausHm+CZXC0k5uifFNBRG5GvVzHQpQ6kglnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpdXmX6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpdXmX6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D2CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778281653;
	bh=DSD9LvxcppedYQfgxME+X20ZjAJzX1ANPXrPZTqjefo=;
	h=To:Subject:From:Date:From;
	b=ZpdXmX6jvZ1IgutdWvCxxEs0KWn5Nud8yPK2DQ8E8b8ZwR+qua0CpL7wFjJ+FJ0tJ
	 ihDuP1PBg45Wn546dzbfWGljUud3UE7oMAYrgw7/iwosIxFgAP/lKISocR4exQ/wQP
	 E5MfpfneoBah6dyzI4TbBMg+VC3MAgHuZa1iH9OLztfOGeW9UQEkxBi/Ti3UyP4sMI
	 lx6taTOiyB4vFtI6A/Q5UnfL+s3e/1uM+0ghtIgYyjMxbBws+U+Ymq2DmD4lORDagP
	 UaReoUGNVXrY1R9BRknXMct/Ndg5EyLRrpVTAcea5a9DS5uKEMJmNYUrbz0ZGQ/0gK
	 EwyFYl7vZgDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB840CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828165369.13610.13157406234659798012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dee29e0075038d1105ff519bd476deac6eefde05cbdc382d1a0187268b4ec3b
Date: Fri, 08 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778281653
