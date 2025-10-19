Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3276F18DB1E
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760887794; cv=none; b=o7G/m347wLPvEIFwKYW7sjlp8hq8/92wGFeard2o2V6C105AZY9LSBmiTBbsEfG/+8DHnYowcShZ5bV5o6fUjQM0RGm8mqji8fVjuipvfn7RgDleJ/kaVq7cBuKUdpRsmr8ak1c84NO0tKDdh7cP5OENz/C7DhausoF2ToERRl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760887794; c=relaxed/simple;
	bh=dBKZPJFffsck9sKIsw/5wzz8GYInfHflAdRrovOSnCI=;
	h=To:Subject:From:Message-Id:Date; b=np9rYZ/Q7HGXb/e2iDWcPaYTgOewvTBAPAhEpfiAVaG/P/thIg4aJC9WN4IPWEjuTi1yAF4ZPc6OyBZ9EcNnQBzY132WXypirzjQodgcXmtFCwnvscwYNb1hFO+Ze2wcSM6ytmj7PDsi3hxpgnrz7xFgBmi8/HOGunqzW1fMYeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV5EIxIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV5EIxIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8255C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760887793;
	bh=dBKZPJFffsck9sKIsw/5wzz8GYInfHflAdRrovOSnCI=;
	h=To:Subject:From:Date:From;
	b=BV5EIxIhUV0+Za61vP/N3Lp49KWBsmr4YU0MAXwr1cPBt2W8fNDRST555+cMi0BZW
	 bRHA3FAImVna6zLUKLWa0/dN/D3Pzj2twDMWHDs1g2bHFuI7OXYF0UjcK2OimeFv2O
	 IbyiashQkJC2FZ3GwAFMogytozOMXK0lQrkWEiEsMJd29Lm3NBrp2H3Er1k+WGrSkw
	 bEMR0vqofY4AegNUHgMaf/4OLyNk16jAs4ey724pQYEisJo2VBcoATI20HZ8KTIqk5
	 ELSEU8fmhxHjTbtVLZ++3DtjUMADBkpJYA2gB7PB+sUFXdPpvW0qNv8BYz5cI8+E3K
	 BjtYVojYGtJAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3FCCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088779358.20224.3895064473247314390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380573bcc6c642ec89e4d87f9ff74a90a1960c6e0fbd7d0f017f780ef3978608
Date: Sun, 19 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760887793
