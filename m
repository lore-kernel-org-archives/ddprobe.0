Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C2C3D1CC6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776862053; cv=none; b=kjxmiLsC5i863X2D9fZxZuDgSuJw6H6qAkQKsYK4icsbNeAwH7S0iXlWfGdQ3mBsaDHFbQdh9xnPm6QOccI5TMoR8nxOOAK6xz1hY+gk/ziv79+ByqnobWtWOdESzH2SZ4O7R+gFDQCJQNHJLDF/iW07MtNPpwT7ibVrQcxweiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776862053; c=relaxed/simple;
	bh=dFHsONTK1iQdj9jGFOmP8QBQAxVQb1b/H1I1VDmy0nk=;
	h=To:Subject:From:Message-Id:Date; b=KBX8+XAm8F5/8E09/wpmt0Eu0dc+CmQFhEbMVT9AkRqn141qF5OtHcGPh0bb12kOHAUL1JDW9vyL5CWzfSC0GEWx4ljWBU0IzPcuO3LJU7j28uVGABUv6LqLsNBsft/vhaK+nCMhGI2QtYleFHsQYeih96yQrilD6vzmqpdaWyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxtLTLES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxtLTLES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F64C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776862053;
	bh=dFHsONTK1iQdj9jGFOmP8QBQAxVQb1b/H1I1VDmy0nk=;
	h=To:Subject:From:Date:From;
	b=TxtLTLESdZw0BaNgyFMz7neXHsJjlJCceORH6fcKWLs202nXsegFf1hsJ3skG/TxL
	 3iXoFV7vT+dYkWafn3y0As5RifdESDC7ko93ru0igSTKVUbG4J/o/0icZLbcwuIOhx
	 MOkeDIRM63msLb2DmI6rr1nJbv/gOFdca1AJLGfmBYDxEhX7poAI5RsAhjJB1hy3BP
	 xryzB3viOSPu7jpYKztFQDHoZlsUd9fhuyrbD5Y04yWGf/Fnt5yP16Jlv7QuGAIgmd
	 WYRHpufaENU47O/33rHxL8MuyiNpSwppCXmg8zlBCNHqAkNkQ+tvMJhIHRoQ3mGyu6
	 6Q/bUutNPWIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D6F9EDC5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686205368.12507.7767096300371518752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3a1605d1d8ba46190265342109547051bfbb5bd5973dfcc00ca0dcb665cc66
Date: Wed, 22 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776862053
