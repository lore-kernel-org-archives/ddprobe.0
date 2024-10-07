Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160C01DDC0C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728325554; cv=none; b=RQy6pdL1+HVxXfuUNLtTnh1o/5/vcHstb8yLZ0QXnVqT2Aq0LBcePH6ifPUUZVCXRWhXXbH5CJiTeWzRAytKSS3ZmYBoCmVHIr9nmcUyZhfuQ8zwhXhTM0O/L4V8nq2HECfc5zp3/WSY+CcxbrngProoINdLCfIhsulxwl3tQEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728325554; c=relaxed/simple;
	bh=yBF41YaywJD3tEQbF8I5lg1CFsZvNPczNmksAgmlbPs=;
	h=To:Subject:From:Message-Id:Date; b=sI0h+mZENRDa4hXPiSv+YcqKeYRathrjBnPGyh3Pih0N0OiFwntVBPvQATi8KgoOWFTUNMJewN6Z/iyxIQUH1lK1UoERDzpAelz9YwR3Tz6OcD224y51x2nMglfQNT9d1kgNbDUf0dOghRdNe+AA8oOu4VD9VzMd88Uh+1aeiWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFOfHVQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFOfHVQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BAAC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728325553;
	bh=yBF41YaywJD3tEQbF8I5lg1CFsZvNPczNmksAgmlbPs=;
	h=To:Subject:From:Date:From;
	b=AFOfHVQaJqjkE/0wzOFTT6wyorSFMQtyZX8EdGUf5S7NG5z+LgPs4M8jUrXqQRIUL
	 jt8Zrj1TS3ceQwOjldRojh8Hp6EqdruUB2J9H7QRBlxsieepHLc0dF+sSQgwTygwcL
	 ddNt+tyMiesR1YAQQtbLqVuGFdyg0DSbbxqbdiX9n9YG4F/5+LOg2Sxxddkcauc9GL
	 9W2LQD6iqw3i72Tet26y0Ssor0QymyyDsmwd9Qh3lJQ03LBZ5trZPZHOOoYsIod0k8
	 g4LFO3OY3Wnza6NndfELFFPLfjEOK4Duv7tK+11eDkvh9c1r8Uv3Zf15MfTx7LMtsq
	 LcDDXPM9nRqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27C7CFB450
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832555365.4574.8228628794542531191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd9ba315cf662de75d6488d7db931ee66d7960244cc3634e5bf02803762d61e
Date: Mon, 07 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728325553
