Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573A186250
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742559595; cv=none; b=Ns+T2ivecCG7Y0EGFkr+IpjIpkk3O9UUgDFmJIc5pGODHcNrqbx9OdMiJuaZa4htFVtEvHvx3o3RJlfce8pCPJckiGHBuTM0iADHPDOJWBZOUuiaTSwfXl/TREuAm6y0i1LfbDZLF5yEOvOcYYz4EUfaJM1VfQ0xbnf2dGddgeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742559595; c=relaxed/simple;
	bh=z2ayn66kaFzNOs+tR4RihT3YGRUpfFbGr7GwSaJefHE=;
	h=To:Subject:From:Message-Id:Date; b=o6hAS9bylHBFCZtTW2/ozxT1UaI626cGvYP6o/LCOf5xcY+Yem0F/0P5C/3N3kPphlK4O5UI+tCIvbKsEDLyheH7Je5y+4ajqAcKx+mux93mLTgendgw01WEz5NfrpD/NnzdxBTOddC4RmbtI+FtA1S/QzIssSpYqU1koohEDcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg0A0ZmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg0A0ZmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2415C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742559593;
	bh=z2ayn66kaFzNOs+tR4RihT3YGRUpfFbGr7GwSaJefHE=;
	h=To:Subject:From:Date:From;
	b=rg0A0ZmDuK6+GIlOd6FpBXUpFixYFxIYwbiZHYBdw6WrMq+rwyp/U036kiZywZ1ar
	 ufENb3HXo6oY+bA6+nZIwAgRWr9hboVax/sJJB3FW2bzbOHSkUgtsGIZFaxB0K4a6q
	 wP8OoZrqdocjeit5VrEW5YbMVV0bpynntpFpTPzCz0xRka/QqoOz/SietHfOYiB4SC
	 3mOc4gNFQQI2SRolel5RRau9J+VcRzBbkd+rBsQol/5kgu5/qcGaBYOFRtY6qZEIyc
	 2c2HU1+Wh4o12BMS7HMkwIt3ZGvD4TMq1bsI/Cbov5vk+8JcrEvFtPf00hLfagufmX
	 Tayr9UItpDP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C6C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255959370.18311.9854133232087408419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e526773b7115eea5993ae278779498c7ed098036bab951f12f55cc4f81e9e9bf
Date: Fri, 21 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742559593
