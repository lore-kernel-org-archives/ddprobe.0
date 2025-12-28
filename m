Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDAD2D0602
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766934834; cv=none; b=tFovwudLb69XOvJQzSTr2QC5yt64JFyk5g86UpBpRXiL7FE0RoqDgGUcxBJ6/ZM82GZvLGPu/dnvqFwzNNEDPWfI/d4Wrme7pN3ciOV0ex4kBr0mrrZ8I4VRtUxgzn1pO1us3OyTyX8ugYTQOZpdMNs5Qp8RPU2KbpUmANGkpF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766934834; c=relaxed/simple;
	bh=qQTcep0nnP687oDdde6I43VUTJhN6HY9rDZV1AIHOc4=;
	h=To:Subject:From:Message-Id:Date; b=uAHeSOqKPkP1LSJ9XVhB9TVmbBeMEc0xwpF/K53SUvwFcAgLmhfwoBkYkqoDiIBZhRshzzbI/xqqg0FcpLgu7dkyidfdVJqGs7AdicAPerefKlgfYv9zT8QnV6sKOxfmBFJ7cCH2rT3jfjGbNmwv6MV55GkYzwAoDvXlqIEH5tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqdmFACj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqdmFACj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B5AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766934833;
	bh=qQTcep0nnP687oDdde6I43VUTJhN6HY9rDZV1AIHOc4=;
	h=To:Subject:From:Date:From;
	b=qqdmFACjTCcy+h3eaLZnmm0a6uyiRdY64yX6MeQ+Ysqavvn4mka8Rq60Us0Z2G8uE
	 egXPNjLOqTaRIl9SEQ1F3IISBurj1e7pwm9Lv967recnPIjxD8LcdqdmIdcCKV+4zY
	 S+hsy5MoQ4keY92hMEeFygh1PYOnYxs9kHZ+tK4bZukI+7TjSd8YsHs+fAGeLvcZS3
	 /j4QBiZtQGplSimvfpS8IXJ/RwsoIhemLBJfLL7aUAOH20rbim30Javj+IBmcPqAwO
	 LJuinxU2uod8nU4K7XMYUBJlkRO4lT6ap5sjKG2Q8ZT4FEbAgjYctoDdNQEXCwZsig
	 Yr+4Xb6kl2epQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE36D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693483359.8049.390558508538581313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b63254ac11181249dca381f080eb898eaed62a5b1f1a929ebd051759f231046
Date: Sun, 28 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766934833
