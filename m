Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5C9261591
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744097394; cv=none; b=f0YHldEZqq3evebrHxisHxP6JcHh1IswEIWLYLGugyhNvRJ5i6BIadDfIbjTcabQVVMoP3vzgm3ODSzXqTO8uf4DcSf5QNwmyE/Sn2XnEWQmOFIgTeDS4NyFIXWDH/M0nRRWBYQLEEjK9z80I81cbt9WlwXKEJ3hckGOeiTQpq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744097394; c=relaxed/simple;
	bh=P1Ev/VpfbL32fPZwGJK9Rs4nih+vEbUgpb2jqI6rOHY=;
	h=To:Subject:From:Message-Id:Date; b=rqplVcgPCouUIh70k9LXsC8mK9M1ewhUfxiSzhtfMg8iFtageyY7SBl4w491VqJfSo2UcSzyneBzHAQ0QNI1d1/UQJanytCuInpGlcxgFZNfNcvQTc2AoWbpRbsDnmnsfaRpSXpvHn6pMFvHDYB4zI5BFA+bH9ahLXeOMOhrzwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwwNQw71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwwNQw71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4401C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744097393;
	bh=P1Ev/VpfbL32fPZwGJK9Rs4nih+vEbUgpb2jqI6rOHY=;
	h=To:Subject:From:Date:From;
	b=IwwNQw71dIMCzu6dRg3O9pVNkVsIdoaYNmDHvRNZnQ43zNWUqJL0KlOUan23ZNs/5
	 YMus/rPTOZTSNAkauhP70pF9WO/qkz12Ka79LrHxvS8A90AE0zJAnlhngBXT15dIWj
	 3WCXGoCnRCT7ysnVxePmitM6kC7oPRmuJuqnu+Z+gPqGe1e2EPXj8/MXjp+iZ6H6k9
	 /ipDiWU7WNrcrYunDNoHYWFbWKursaIkrcYeGdOVxsAvc4tCcLgQGmZgXf4pgNI8H/
	 LwrxRwdpMtSN5Ibq/gMHE2zGPuGq/gV7uThLHrzyl5GQHL5V+30kagoh3BYc7jhD3U
	 mfXcc8X8d2zuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B95FC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409739362.28069.205146318331759781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a908260348201f03acf2149dbe020fb4c275e24ac80ed52e35b07a85c82dbd
Date: Tue, 08 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744097393
