Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E1A3ACEE1
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775811454; cv=none; b=R9XaOfHmuhafCJpGgqJ70nti75uR+EXBaXtsuoYyJOXyNWGFQ8hTTmBeiJ7deHdfWYxKhEuRTNnc6m0xejqD3VTexCDK2a9PNtUrslV2ejmgLLFuNzNck0mqXrepkR8+NwoDgDNL1hCpYQvF+Y57owPPkVVX/+FD/X1A0j2LSX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775811454; c=relaxed/simple;
	bh=WuzvDXI0VL3mhFFsmmNUKT3AkFBsZhNaomRbn/pTKek=;
	h=To:Subject:From:Message-Id:Date; b=DO7jCsSFuM7KmaxDxECgt58k2cvnJ1ITMhbn6O7FpD9LfAmFBVYE3wijOAho0HHQLuVor7lhuQ6x3AlFFoE1xxWhnhmGpbGz1EtJUNWhVte6wrnmuulil4HCAVn+vWi3YOcS2qqUb0C5zgAi1DTQ+ubM+VbAvlkYCZGB/uuZhWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCyAGl2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCyAGl2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AAFC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775811453;
	bh=WuzvDXI0VL3mhFFsmmNUKT3AkFBsZhNaomRbn/pTKek=;
	h=To:Subject:From:Date:From;
	b=JCyAGl2OKZ2kDZdRRC0Km+M4NwjIDya8EGVNR2hmtTCndD3D6Hsg7+kWbGkbHHaat
	 /Y2Zy6SpgebVOvzUK4FIh+JVAzxnXcCZgPtayKTjylj7W5fr+EAJHCDOrud5OlC7U1
	 OwUrhBj3qyPkVVQc/ON7+6d/JvHw+jksX5NPZlEy4JcHSi+A4iH7WxrfN9PEFwIe3J
	 BRYTRKPc3IlI7ztG5b2WYcH+yLIsv1F9EQQfnTbkooB7VanWKii8TLmH3kaJG8p8Jp
	 +BpijU0GG5Q25XNoBhFGNrf/Lk/M2EW7AjQb0eL4PqF8tpFUawvkijdLtN5p2rOQGA
	 Cpcwk/FuWTTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967DE99056
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581145368.20980.14297732198985974207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0028074223d70a66f8aa9878810721155e4666819390a1bdd8419acdb360090c
Date: Fri, 10 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775811453
