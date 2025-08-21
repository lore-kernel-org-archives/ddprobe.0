Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B92342AA3
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755790194; cv=none; b=TrgUEsJxLFQ3jwdNXfaEJ2nE14qeIFEmEdfiImmYyZmLp91N5xYBN0S+n7GLs5NX6NaSkYcoireewc58uSYZURxTf7MlBhBQOzY7cSW55li6uBT1HFMxjajctoc1V+iUVxHRiJVILNsX+fxB6hMCCCjPID2ktAiULnrEtZzDtlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755790194; c=relaxed/simple;
	bh=O81pbKIvj1A+62hIgPxXosTSVaAusoz8dE2QTYyt3vM=;
	h=To:Subject:From:Message-Id:Date; b=Vn2GiQ/i2uS9fWp7H5JxwUWqw69SjorP5pv48fy/RnDG4uRVCKd/VR8l6ZiTsioAs39AdR/Iprs2bfWtHFYW/wm92hhLD1z78mJ/ZpKUtISi+sYHfT3O0JActq5LlHQfDYKtfLiKVD8tHEig+Dc1fLqSqthz/mvLl5I8gXJgrf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE2jaj2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE2jaj2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755790193;
	bh=O81pbKIvj1A+62hIgPxXosTSVaAusoz8dE2QTYyt3vM=;
	h=To:Subject:From:Date:From;
	b=lE2jaj2JyWx7JWMI5YgQbx/sfVaSCiyuruOLCQo/WZ/V824BfaHTD2+TVApOP3tsm
	 VNu2wgsotYNxS8v8UxfMuVT0RNGp8M7PwrM1UaOgXJ5nSFlLEbdMzYPmgacgym86vQ
	 ytWlfPbGyPEG2oAgm+pIDT+TtJLo+MAOobfmRmwNIn5EUdUOkHbchCLHT89DH07a+d
	 CP9WT2Cmabwdh+2L2O7RHfpydRRD3vjR/eg0cF7XVEB+ugmTJSCfUs3YqPSUO3TCz2
	 vnYi+h0OJ/EsuqTR067rwv3GGM/kZ3m2bTaGjPa6+hyfRZ/8eAXHfM7ygS/kLDmfvJ
	 +SrJn4l+tswsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F35CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579019357.20106.10100239161436708476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc2ec47293723b6e1d2367c638c0f3ea35298d3f6e173e9ec5cc25574892b12
Date: Thu, 21 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755790193
