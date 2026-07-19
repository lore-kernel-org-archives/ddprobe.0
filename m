Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648F41386C9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784461114; cv=none; b=Gx00dKTsT0q1VPfJmfCMa+Td3Fe2jpE2YfaXDhnK7UZQAZnKZsZ7pmudFxrHevLUClgYY8SAq3RP/muSXA2Lex0pFlVasYgDbRLa7g/o/TOhnyelxURI36IYewCampCQJAMz+fTLE3Ve0vF7COMDo0CXRJRpqeFnhO6Opw5tw/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784461114; c=relaxed/simple;
	bh=adX2NWqvMppqGFxx1RPgJWf2tSfIXP/ZUCrb8K3m1S0=;
	h=To:Subject:From:Message-Id:Date; b=nwHmIrhgNSNcyu44jKOClNzCjS9roO8pTztqjHLEtGVHQQHfstvplhbKeakB0DW82aCxduaQ6+1dlla3qxK11n10yQY7T6ppb059o9kkFdyojncpGanmxkzU+5GeF3woJ3Ps5cRqYTOONTc1fLjBFYzK0UzayLjenIHdElbAxls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFaU6Z2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFaU6Z2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD02C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784461113;
	bh=adX2NWqvMppqGFxx1RPgJWf2tSfIXP/ZUCrb8K3m1S0=;
	h=To:Subject:From:Date:From;
	b=MFaU6Z2cUtHUguC+Wbr/2RikyQMUOFLSy/bgbePxX19Du28P77dhZJfYIgnRZl5Bx
	 j86qWv9ePMue0tSQ6kXLs7DwVB7TjvShUsKO8tiA2l81trl6grUD+wYEfxvXUK+LF8
	 YkYCO77K6I7OI55Qw/L5nF5djI3wb7waoA5x8lp7mfy2WZYMyUp1N4Bu4260ocs+RS
	 yFNy6hi1DpXwNrPdVoKNC5+8cuON2C2LTRLnHpoN0YyXfsBZWYXrDg0dHTV3DgpvFX
	 JrNROl9ZbQ9lpMvRTQSlndTjSj2mONdSQmFHeXpa/RFoc8U5lCJwsZmFWOy6//IiDb
	 KY2yP8DQyNQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD372C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446111367.28952.12686205550096320371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b03e6d32459ddb715138987b4f6cf4b90b0162f93830def142478e54a77482e
Date: Sun, 19 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784461113
