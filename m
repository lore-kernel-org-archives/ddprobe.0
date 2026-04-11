Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C770150997
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775908654; cv=none; b=k11cKjCLMvgnyqoZ1yDTZl10nd6QQH+BHHc8gN6ptjqjzmmYwQ4DilbSHqhrtt92EegThWdlZP0S18QjAM6awuspIyIRHdbF16P6odux3ckTorZjiQBrFLVFQUJgaLRfb7QcgD92MezhD1MkcjwIe2k3N9Ina6l9g6WgFJUzDSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775908654; c=relaxed/simple;
	bh=4RMrSgs82pA0TvIUQgPPPOiNHwe9Yo7o0ZHQhp2t01U=;
	h=To:Subject:From:Message-Id:Date; b=AOfgg66v9o/PvP/dFoSh8UdBsko9i7xITLCpzjhx7ltkVMMmUS9kLck1j0puReO+uxIPz4USQPal5dpMvmB2CQYRX8XOx/iBX1Fk6DP9Ke7106AxTjEUtVezfGiMCjMoNwFd+PpeaabjtOjZ600bX0sqqFjFNv7dYxDIqICT2Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfTBS6BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfTBS6BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4B7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775908653;
	bh=4RMrSgs82pA0TvIUQgPPPOiNHwe9Yo7o0ZHQhp2t01U=;
	h=To:Subject:From:Date:From;
	b=nfTBS6BSCJ4Agl16cCIhlnhOeZytQKkwlkLWOPXgdr5/7Pa0LL509OXxrEqkq9zIl
	 yzRI4kwqRGBC4btZNMYGkX7BOTjIC1CK8YswUvL0pDdBQxXb4bbE9SGB63D2HKHyFX
	 9xVsQpKjw3v5920O9Lda1LlL6lOolkoJdu/ge4nF2DN3+VntkxUSLs2EamlXthOc7L
	 6t5XIasMiDew+3YGhFJKye+LsoWepx5a2ASTmjASPARCK7W1Lu7Pov1ZOdKWDwh+fW
	 9KPYU464GbZtZQv2QRzx3cNQiNKgCpk0AkxDwkokjDq6hj48F4H3yGhlL9NGg1jGm4
	 enEM9yCwMbG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B012BF3ED4A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590865368.17399.14961088275429648447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3e6f86cea63b15f31410be717bcc37be30186c1384c630411879be6f4d8a08
Date: Sat, 11 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775908653
