Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E963149C6F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723754754; cv=none; b=IuW+EOxOgym25LeS1N89DO2m0D/KbbWXhlYLDfIu3pQgXvU0pENKG3gBtrKXulCy8fFyYJfL1FHWvEs1tQ95ESJ9lOxaH1vyZQaLEyyqTpAHNBTNyKSEPbacZo2LjJyC0hkVIdTeDNyHqKhFviLC07UHsXUU+50fYLDowZCaFis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723754754; c=relaxed/simple;
	bh=k/YKGptXaI0eeExI9+bTApIo1ymSCuXAS+hJ0nnpzsc=;
	h=To:Subject:From:Message-Id:Date; b=Cm6btIH3dnSshYAWt0c69WZRcZWZwObVuibESrlY+vM+IDc4aHMw1WirkYHpfbs+1kCfJbYlKjP2FL3a71QeUfFjO4Oqtv5q7vcJ+P+A7vu0CRt20wMj1iuCi53/K9Bdr9ZcTY5P6h7cK/J/3pf2gmbRPA0o2991WSRPSF4+hPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+tMq+L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+tMq+L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C2CC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723754753;
	bh=k/YKGptXaI0eeExI9+bTApIo1ymSCuXAS+hJ0nnpzsc=;
	h=To:Subject:From:Date:From;
	b=Z+tMq+L1+ZLPiG7IgnPocterCHVXS5rVI3/gMAc28zSKxaGUYjHqrQWphxpee2/kr
	 j1iDrPRjZTujGymx8wa+kXFQc8kBWpZsrP3lkL7PEUYosnGM8CaJI7BTHIbE9rQJHd
	 q+iWYfpZn2YnrGo0esqGbT5QWKrYa8lBuXUgPyvYGhojNKUJ+02oWVW2eII8LrD4G4
	 6YNro2SHXgwWZi4hA+MeZUaIf6KpBO1bJVfyAAOTNSp5iY+wgCzP5qumC57KBTgn96
	 6m0lnbu3duJ8lB9zCHxSVy3FHlFFhpz0f7z4ojBHzPzmHGMMa6XTPOuu0Iz02bU0MZ
	 40e0KNoRrt55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D42C52D7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172375475358.10671.5314565180372763999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3b0d6cde925572c747952d4f4d0606b8ddb76f28fee66d0043afe968541996
Date: Thu, 15 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723754753
