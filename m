Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B825C818
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759901394; cv=none; b=HyOgcoCwJgLWUR1NIpOlQxwfogozYsASzN2J+w/N6txKXzEqWd+66j3FoBAigK7iqZjT36WxknBY7RYw4jX2X+tkL8/Wa6uZM434kpstz8DHTJ9JwqYpwC0HGc0ksjS+MKhWZFVqeqM72WJUWJoDBLg91Ny5S0wDxAY+Fs4Yg1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759901394; c=relaxed/simple;
	bh=Spm+yNbM86mhoxGmTo/0U9mhtnk4eBcnG7CjuhFxxvM=;
	h=To:Subject:From:Message-Id:Date; b=DOR1rVcnz+IhNTr8ejgHlwp0LGkCdJGGmZtlTiTDT6oeHSUaxXJFlV5Vd3w9fOav+yN9ms3ZDErA26M20TY7mJXAKudVo76IZbyco+JKqTA9vu5kP96TLGQe6LF2MoGY/6knNjkOD7D8nggsOReTnRvXDtIoHxSdjtO7EAFly8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyOGm/4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyOGm/4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3CEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759901393;
	bh=Spm+yNbM86mhoxGmTo/0U9mhtnk4eBcnG7CjuhFxxvM=;
	h=To:Subject:From:Date:From;
	b=iyOGm/4BODx9tTMR8+hQNCxg488UZvv7Q1YfXCSWAjySrRi2lZxX+65n8QP/mrPeB
	 j69ySKvoe6qNLa8Wz82oYO09sLtzfnADOfvda0mWlphNwoZxZEjSJeFN3IQkNXFBTs
	 7ySXvzi4wg0jzFNydq/SDATY5pOJkukfs8/4uYw/9drLchzTaQWYNCuSW6pzB4fTSE
	 fw5darH5NY3qAOj2xiijD1XoNzpYs5CxyF0d976aJ5ZsrolyiwIJ5+1nClS5UAvNZE
	 CxWKthx6IpLZDt92Bnng9mLOE9JO49C/D0lTIDcnp3yFvweyfM9bFaDvLIhFXEo9OU
	 2prhiMogJmIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D3CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990139357.6874.8914296985092808813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5162e41de326729f84a293e72d346dd6aab5508c53cdfcf0bd15e856aa28d52
Date: Wed, 08 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759901393
