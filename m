Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E6D16DC28
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779412354; cv=none; b=XlhVNGA56JcA3oki/RDSX2EqdL9ublNyG3Y20FTcaigJizv2Mm2ca2jx3UMgCzTDodHdRv8WMuanA0y50zwTA0FamPJITeVnTcx/mAtArVpGGo15zasoSCR+C3zoAtGjas3kSDkIYTJZGIRc143Jd9WplmGYbkCqN/aOGPBfuYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779412354; c=relaxed/simple;
	bh=CHEueNkriYS66UhwHNkegNu4/4SIf/CVxPqAZBh/rHY=;
	h=To:Subject:From:Message-Id:Date; b=B1KwUJswTJW4KcdGVIH4p3YYbLspq2vfGKDew41U2RILgOec9pa0KubCL7oeQFfRqK+CYzc+4Qk+KDx0OSlnmCKjyq2d0f6tLmYUto9jfUIXVmkQ0V7kZd5ReAVOUWSxyrKV0qUm0HeQcAROueKehVhVXPgPjvwEKLrhNyio+hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItOzhlsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItOzhlsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB20AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779412353;
	bh=CHEueNkriYS66UhwHNkegNu4/4SIf/CVxPqAZBh/rHY=;
	h=To:Subject:From:Date:From;
	b=ItOzhlslijLvuE3hxjHK/i+MzbJBCpSXCS5OHwGzZcl36Hnzp0v1vZxl4pClMcWlZ
	 INSLa3hxAK5V/czTG4zFiY9895kjQQDyJY+fx6fYGURpv0isprdnQ+3VloWXKaCfnW
	 4I3TEfwQHj87q2ANUMJOOuDBAAxNXLgHEhetzIXL1lAcKp7G1rEmg7ILE03SlaVFJE
	 1y/87XdcDfpWBAhyjp/Evr1HlqYqEMuYlOiVitX4k4AjUSoidDXD3b2zmieN3SBt1N
	 JNrT/jaFWBd136SrRQ5Xdp71PP6Thmujpg/rdsO1Z8GPZd6kWLXhxad8ydyvz/T5sr
	 8IrXQlCfWZElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A1DCD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941235370.25094.16147578999881512321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047fa870e62764b8c73454d8cd5220701141e27c015953879006683db0cd53b3
Date: Fri, 22 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779412353
