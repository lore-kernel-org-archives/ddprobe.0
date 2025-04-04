Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B651A315C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763194; cv=none; b=sssPEeSMuq8lTU1t3TnNFeDVeLQtLfCcVaS7kVRQyGL6o2kvwIwaNr3jPvt8p6qaCWG1f0pmkO+QP8EqWFxH+0/v5UgkghX0g1zMoNbQocL5RMVz1o+wLvdT8mp+oxh/c+IMveOKT8JlIgpvoHUm1/gNS7VzqAgKZWFLK4YTI7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763194; c=relaxed/simple;
	bh=DM/OodYEZpHV5EUdQ9XQWQhcXQdYBRXisaNhmsC63d0=;
	h=To:Subject:From:Message-Id:Date; b=rmdNlHodwZ0sKjaLCgK/JsnSb2gEgaURJPZdB4I/TCrXqUTV9ZYX9R5YDyFlLhJbMEKrpu/wSKItIeyS+9kKZhyjpobhKaWIfNt/A9ljpWs4hXuWSUPG5gm8VPqxou+IM2cjZw3H3z6b9Tfw1ZITjmHajKmLQm4z7i4c3JuSbeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us3jerJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us3jerJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EBAC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743763193;
	bh=DM/OodYEZpHV5EUdQ9XQWQhcXQdYBRXisaNhmsC63d0=;
	h=To:Subject:From:Date:From;
	b=Us3jerJki5nR4o13K+PI26DV4ghRhMH2CXDHaLtn/qMRj2lAFGZJxHwysKPSuHjhO
	 /NNvzzWPolSULyhCewQ7QPeZRejVP4XttD7riZJ+EBNACKJfeGs9Hy1W2j+wqwQ7V5
	 fnwkwNAURWWlwAk3tR/1A0Obb3Bt7vUXr0YywljW0lUAsMSnuIyC5OkQ67fldcCihd
	 uzFZOfaM3W9k85bijZ5KwRxdzc1EVmzPU71wYxHGqwJdJeK+t+rNmYR+0bo96H11Dn
	 TE5Bbgs42a4HvzdNxa6jpRr5H3q6GRhjqAffYcuOyqNQVGpPGdjKjFzOOXj5q/7SC0
	 4N3uam8Dw853w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E95C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376319360.5017.10414853334992081441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4209ea85156f35d334d5ce1b544ba4e87833aa283a0e751b6a34c7673df6842
Date: Fri, 04 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743763193
