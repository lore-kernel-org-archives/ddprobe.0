Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C08C8BEF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719370403; cv=none; b=oUVsXu5RagbXnOWObvA2ZBDlq+hLPK5A/YDqiJOscVxWbI8gFJCqqnt57HAb3MEnrw+zq3wgFQKSpiwC+T1vxKg1DDQEsYwDKrPMNsaBpWvfSG4jdDUq8yKcBaVWpArjWiIvJAMiSl180PPFR4hReWIDaYq698iEoLfH2HcRqHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719370403; c=relaxed/simple;
	bh=h9MkLpk8k7ULzNGJJ4DfDxRgINROk+QbL/A7V7f748g=;
	h=To:Subject:From:Message-Id:Date; b=reeQCtQdurzoqfHxfp0G4TQVVoQeedqNSZJvu7ollssdyYniJydwauO7aQ55cyDkPMi6kWFk99JGQUGvVZW2lLmBeuzlP2s41TcqhWzqTOFmTjHA0ywxqFH0ipCwCiqV7EKqf/GOhcVcP40Hbte5JafWIc5BZsnEXTf70c6BL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRPdXssc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRPdXssc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2035C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719370402;
	bh=h9MkLpk8k7ULzNGJJ4DfDxRgINROk+QbL/A7V7f748g=;
	h=To:Subject:From:Date:From;
	b=tRPdXssc3r3Lw1s3Igt5tuIBs2i+9PYWpXh7tdDIm4PmBwcxfq8vzKRZYTXkd3s1S
	 UKh4G8m6HHcdA7ysu5pzNZ9MiIvGUPExcRdMuQeBC0oqs5Br2l+emEa8OXIavnlaik
	 hMHLmRLQOjb+kswkFAPSidj0HvnFPt3Ocy0N70OCrNX4eq6QspEXkZBQEMWK028gsZ
	 nD1n00anMHZOY0DVYTeCWxIBDh3dQB0tNoI5Lsy7aD8M6bJW7bxuhQu9bw5eWWKVNy
	 SJBFJ9JVsn2r+6jCAtE6pZmama59eXTRiII5tLUJo3ulHhMCo6sSuBA5R4+xHgA1If
	 RqwaduuDeqxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB7BC2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937040277.17607.14023595186340724835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49ae8e1fdd3485acfec1385def39b596d443e37f0427b5f166b73c763e23697
Date: Wed, 26 Jun 2024 02:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719370402
