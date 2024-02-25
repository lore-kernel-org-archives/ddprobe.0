Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1569B7FD
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708825097; cv=none; b=G1svmic9+ychsOl+b3vSa4voSMOaSOq6I5COHczEjAQFkOblmRbMUIBxiVRDdqgn2aoifn4/gtiqXUgcQ52Xj8+0+mVY54cEB/u/jG7bbp/R+W0XwNfo6kVAzMBC/V8nclEBycWOrw9NiqiFU7H2J/AUW3fMRi6sq9sCxiEcynY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708825097; c=relaxed/simple;
	bh=YF6ULPwNPDnedhkVl4Oiyw/4tLCst7JpRIRL2CQ9AUU=;
	h=To:Subject:From:Message-Id:Date; b=gGW3zES6iWHOgSEHKOOTvx6qtDRtYqVx15yMwlJcZ7f+0ApT0wNqrm3/7bpg3XvdQ0RdK2dm3fnLaMcWxCnfZ7G2fytanfrKUOBrxbo7gBfYF2UXtKFacSMurS70S0zkps+CgumZu29pStnAcuUNkdWvPK7fbFKyZIDO6yOTzLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdEci/In; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdEci/In"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 912D6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708825096;
	bh=YF6ULPwNPDnedhkVl4Oiyw/4tLCst7JpRIRL2CQ9AUU=;
	h=To:Subject:From:Date:From;
	b=rdEci/InnoqWBbpZeAhMpfOMkhTnaIVK8Y0W2ZNjfRqLh0RuGHnlwJLBRy2KW8pDF
	 91c+P5RR3FxTSQO2iDG/M6/jkovWSQ0yJPBDC7pHaQqAC2XJ+VR3n1gPZrTcStSSt/
	 NJrp4/6zwVerSNw6h1VGc7uinIdbSecWbU8RTs1Mc5eD9exQQQkIUovARADVKiZz9n
	 L5c9TuEEpG0QsahB2ciLWbAHLtvw/b9fDKTF8I6poKd2I/bd127Anv3VdEI41drrOS
	 zOOBWO/J9EtODGdiQwcdcz6TijS17X5i28haaLIrWMSB8X5OzzeHIG/QV2NosaWMbf
	 2zVykaWu+MhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7358CC48BF6
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170882509642.22643.2513264489033746567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cf32501ced1d5128b015c72107b1edd53b2a14c126675432438641c5090cef
Date: Sun, 25 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708825096
