Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2F329C51
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761229193; cv=none; b=Pn4uWs0XM7+8HjBbYiQ/TvxCa6suxXcra7hez7QhtsgFxRnYRbvlnBjRHrpr6+GZ/SZMypaL+WzYgPaFe2ASi0Bc4XZiZYSXA33ntDELBp4nnN0u4fYh6ODSEce6of4xTyuAoiasYdiKNZsC5KZZLytMMEQtXVXX3t5eer98+M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761229193; c=relaxed/simple;
	bh=GYZqAYNAbYUzO83Bfz2KSZc3fBU6MG1Gj/jsq/n09oQ=;
	h=To:Subject:From:Message-Id:Date; b=DOblswe+GAG+NGk1zAV1ZeJn9NRxyO6ekgQzS4DUQMVapcSBl+GVDdPAq+iLJkhE+bniJrI8DViuPAA/6H6GbICTtByfU1MzJi9dTjJ3mHpOC0jrJaSLc+PsTO9bW3en75wJmLAAhBc9hTfV4FMiZgvjUUsvO6j5327RAqoFT70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiwFPwuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiwFPwuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0079C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761229193;
	bh=GYZqAYNAbYUzO83Bfz2KSZc3fBU6MG1Gj/jsq/n09oQ=;
	h=To:Subject:From:Date:From;
	b=jiwFPwuWkQDEp1D4Tt2SA8Y+iaOJuEGW4bdWQZbX+NPep699vwBEcmhN47MCkP+Rw
	 ZPNaljIxA9d+VqRsktPFyfRjMjLFnEhcwpZ0O0e0rkpJ9R91mhPYZkRuGZVBfIU2k4
	 ucv80359PIlazBrK9l7xDiZ37GqpDutbV3Bcx4NhyLl+YvAaft9o0CRIKUIPg6GH8d
	 aDH7BfI6yD3KwK10dNhoGP/+bv+WvhHG/OjiqnEdPu0kxwQANR7Cp7ZbwgNJROg7K/
	 nsqQG85eAyH2nLhm/fstbWAgvXQ//WVKY4IQ9Os/86XNsnZOSokJHRA3TrvADF8/af
	 6yWW/rcs2Jq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1ECCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122919358.22645.9729791603175522078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12d43a4ac1841b2de34cf574fe6f0bbef2dab34bfe91e762ae62266ef923db2
Date: Thu, 23 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761229193
