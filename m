Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D4D5B1F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718051903; cv=none; b=TXiJHoPD1K6ZXM0SrNr2MdqQIgIYS3rEmR/uyxzdX8oUdrqOAzIMdNiAE37deFaZp4PbTXVdTIjiB+JXo6zZHna3VE5eMDm2EoqG/DXthFRU8owbqIpnE1+TIRNH42BYhkjlt2nsxPHneppD/Dc/MicgmRXNT8kdeqSy5/7YGoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718051903; c=relaxed/simple;
	bh=p9YOBQsuZfywS7/B+s7JmQzNf0fvHZEnCM1zutwsnY8=;
	h=To:Subject:From:Message-Id:Date; b=g2/dB6d7mOLYBbNEMH9wPl09uBRqych/QnddMyfHIK2GkQ9OjzHLSgmj7pB8PyuNf+H3SnxBmgqOXA2j2FuTrETsjMZuF+fDu1kC4qMGDkUwzDUi8ilvMD/6Gp+0pKg6/66mcNe3JsxHBFb6jp3lCob6M9TTELIJlaw+R646uz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2PGaRMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2PGaRMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0889C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718051902;
	bh=p9YOBQsuZfywS7/B+s7JmQzNf0fvHZEnCM1zutwsnY8=;
	h=To:Subject:From:Date:From;
	b=h2PGaRMHPlOVCb8H/ULfxs/sB1EczXjmULxI27XR6GkLMRyOPecwoMp48HRcxwPg5
	 GrCkLJRK7CRZzzqnIfRY+/V3M9zWNPTQF0uR6RqcABBfMtmUalCyZqraPPD7UzmUxj
	 07eMEL+7YvXtMohW5hSXTxUJuYX/zKZ/0eseO7dYNNrQc11PycoYLJLC/12fSaF+F4
	 GvSCr77as5c+zNe6sxDg1UK9/loUv8TGF5hxjQINHqGfNOBjNuVp/Fa1JUAEU2ovef
	 94qeFnNlFgaisLc+hFoOahd1Xf6L22pgj/2sCMqB+49XkYFWoghgryMM5ClVs57bue
	 Nv5T9bavLgABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB53CC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805190275.25361.13038948804507700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3ade3ba633183d509c77666e50dbd7b46400689a1caafac8e17936b355e108
Date: Mon, 10 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718051902
