Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B23921B9F6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760679594; cv=none; b=sufjU0p54r9VXb8ObHZWFCZ0632fUO33I3Opei0N2b/6pkD2rUwEsJFZjvNmWTTfyTYBG7wxNK4H6PN7hatvFDqgOYIlmpuRLamwBlesryCaQasaucYKMAOhBzfBI7Vmz1EyyKd6s1otcVllmfmnBZrbyJW4nDfmYdPNtkkMAOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760679594; c=relaxed/simple;
	bh=3lhKvHCq7lAtVCl9p4nK4QADPlkOZ562hoD+S38LdS4=;
	h=To:Subject:From:Message-Id:Date; b=Mwr0FVItGZ+4aH7/9Azp05LhoBmY+JnGNPwS2h9gAUN8wCIfH8iqSnIXdfE3+MAuupMMkzPew6S8n+OzWfl4XYj5UMEAB71v7FJDtqmINIXQ9fMtM/ymRaeCkHFg3hqzQaTQRrEmQ5NSyFCbt26DVo/ddtgFFClI+sYFckKiOb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9NTal0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9NTal0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A849CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760679593;
	bh=3lhKvHCq7lAtVCl9p4nK4QADPlkOZ562hoD+S38LdS4=;
	h=To:Subject:From:Date:From;
	b=u9NTal0q+qXZ3GN0DcwukIaD7pfULKbigdwE/RsRl+Nr5UbF2HT/835Qcu4onePvC
	 1L1Pm31InNbUzmXtIB2RcoFTvHpZYNiF7b7LGR8FXovO6HCQIRKYCeT2KfiSgVNDWg
	 +ihM3YCLSGUIznfZ+rQ9X3XYOLMWJYPVnONHoLQyIcxLINzXJ7a+jY5mjxRpzJAYm1
	 hdf88SFDQX4NAoB1r6SS9P0hES+bvVUo+PPDCf5vmtEhfVnxXWT5Q9wEfb3yo4oRpc
	 3UuUKcRtJD75JfBGFDXGdLNGEeXIm1pM9Ff0q6KEXH1qrjlBHF8v4yOhAAxvln9za+
	 rsT10wLMMuwzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24ECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067959357.27546.4203060638208131717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371c2d6e13414f07c60aa1390a6309555ba12974eebecfa02b4053e843bcb73f
Date: Fri, 17 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760679593
