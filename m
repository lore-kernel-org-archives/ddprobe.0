Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C77FBA2
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746001195; cv=none; b=U4W9BXT0x/DNIYbsuNCxaT4jmzbE29CGFTuOIaNXQJHsAldDzBZVP0FRpwUKXmn+o8rXeqUbN29qn8a9wPQAP123ua8ISAJcQeUSfFY28HvF1aWtFN54DHFVp7DfSBGc66Aqm9/JaSgv1wJ551/OPOhrpQb3Mo3c8xHguNaayZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746001195; c=relaxed/simple;
	bh=uRbJJssi90oDpdse8h68UE+aNm+zt5IcKxUcvj7Ssf4=;
	h=To:Subject:From:Message-Id:Date; b=byBZXZ2Hqpz2iwOwQA65MAJ6Xf2VzyIm2uoV53Pl2z80H+8ZnHkYz2vbL5n0IPw7tLBIzF0AcLQh3+UF0cJPgy5lF+AKk06yS2hQXR5uX62jiPSfCTt6NQixJy9Jcl7iHGhe3ty0wKNaGNg+4umPH/o0lZXXNywD75g9s9UN3S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmOCHpMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmOCHpMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD12C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746001193;
	bh=uRbJJssi90oDpdse8h68UE+aNm+zt5IcKxUcvj7Ssf4=;
	h=To:Subject:From:Date:From;
	b=NmOCHpMxU3P3CNonXh44VJrSM04B3yaQb/8hpr+GjgUwE/6TR5AXK1KPMjDBNJnNr
	 DGcD/djRKvJ1fP2c6Xx5e85rh0QlM8bvfr0OlmCYbS489iraDzsO5fsCiTnMPX/2iV
	 lzqpd7TH9ZevsyHwhLRifuwr/iqn5mabQlySDSuZqVhVrUucYJC9lmg/E3RNfx+AB2
	 NJudkJX7hGXXUxBrnjXS7WZGE0Hr8ln1/pT+m1taFssKz5PQUnuhKLY4FzZZUMQfOX
	 WrQlmrlIUWxv6Ol7Rflddx7sg3QmJxqcYyb1vyB9uLlNNMtvtCGKeLOpeMS1ivbcc7
	 zu0TFWrP8KnhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C4C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600119357.7052.13579363010843489011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b31b3b9fc972e9d75aa7d5eb045e2611ec23332db58a38f2fd4b927a7b2dc7
Date: Wed, 30 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746001193
