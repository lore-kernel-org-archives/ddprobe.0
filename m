Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F889244675
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765035774; cv=none; b=U6nZWLDtiJ3hY/V5Xu/ZqtovginHIdtPhNWFK1kzUk3NAOh4CFU7XFLSoZnZ7oYiLEp7rRcbvqfQ8uRIuBUAseeGmzqhQ4ld5lIxhuF6R08DcsYd0H5/vgdNMDgEVXrlYDIvYvYvhTtJKk3Jm6D6Yv4OdyoiJrhd1YspYK/wQQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765035774; c=relaxed/simple;
	bh=WmM+muKyrgYsYh+W4n4hAv8p+hso8qG0zdFr6+Dflls=;
	h=To:Subject:From:Message-Id:Date; b=H2M7dmHT5vnudBtamIs8gpHvmEBgkqhHf5GCamE1/4aDvcP6M2QAu7+e24hxSGPr7tXII6pnQ2mK/RTFX4+WdIJs/7PLI8L0WCvE+KsODhi7H3FE6u0uCbtEoVYvB4TuHtCxIlzT29yR9RIHHgysTGThqwc9YTUc0FF2rBlwNok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk9rPvEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk9rPvEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765035773;
	bh=WmM+muKyrgYsYh+W4n4hAv8p+hso8qG0zdFr6+Dflls=;
	h=To:Subject:From:Date:From;
	b=Sk9rPvEuuAizJ+kZRAhUlF3lNtisEubLewJtT+oF7XTO5yKpxBlr1f6Mhg3jDZME1
	 6KYlN466N1ZSRkgY8IPuD72pV1WVRpV4hK/Rg+ybH2Je/HwBS5w4Tn5ndygPY3+3yA
	 tLgaoXpbaIdVz5uwLxzCaydE7plc/bVTARWZGgkwuVZx8OzXvF9gqE4e8gKjO7uxEN
	 nO6URioWqQTm72VH/D/87MdvOgo8Tlw0I4weInCY+zkotnUFCZDZwRyTpS+q5wF543
	 vlIXCd/KRgIIduVZ1EpgHKwnTTKqjYQUylxfkCtqmGOKAsmd+K5MLZlQlG0nEj9CWG
	 ssAUpgO/bnoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90397D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503577358.16121.11376339817831946936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b32aeca335b6e1d3fffa8c0b23d437635395fcfd95d7bce0f71564a1f24833
Date: Sat, 06 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765035773
