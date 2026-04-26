Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1749F26ED5D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777225054; cv=none; b=R6ErwoEFilDjAEpRasgOU8e6fpvQENuznnhMIk2JED8g+R7OZ4VzE3ePPBKKbvUKym1qHBPrbcXBJeVHEAJ6+6KibZGybO7SVZLRNcAUYa4WjlXESZcoqE5GxhZHfkRoZ4/Iu2XoRxAbN7SU1ziaxg0A3HqWERdkOwG+WOAIu78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777225054; c=relaxed/simple;
	bh=Hrgkx5OEe1XG1EQnBa/OWf+bFi6KEwZhPQWggMZnm0k=;
	h=To:Subject:From:Message-Id:Date; b=CHeTFFTKBO+YB9CADMnoCEZwEUUhnyUIHAUM7/sUKr/PV53DK4mX1uRYfq9ua2/cl6bdofNpGrSEsJlgSXUG8BBHHAPrB2PPhGf6NitKHLaqWanmdk52dA0zMBFbD0EpucEVaeTATBWTsWqeY3A5fF7Osho7PegdIs7t7uBx8Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqlM/fDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqlM/fDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAFDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777225053;
	bh=Hrgkx5OEe1XG1EQnBa/OWf+bFi6KEwZhPQWggMZnm0k=;
	h=To:Subject:From:Date:From;
	b=EqlM/fDqzntoDcyJ+8nTINK6coD19sC5DXnnVEqGjKzFWLYjPIpJj/U9geHf4nLKd
	 oysVauWC3qj76x3KsBA5I03eEuIa9iWdCrI1uvMf45coO/+jbEnXeCsUllEsfj6B+j
	 EHeUFlQW7oFXRMmDRT5bYL7BOAi8bkScpY8I2CTavqENXm45n9klHLSamCjlLgIa/H
	 cejwLzJHVlUefntpEDMhmtv1iYlCgRcf2jNYd/X4O8//sbIFNJDsridXRNSrGyIouu
	 x2NOIXwfjfH6R27ZRJDwd64sMTuOSk9i8KymloXinY/1aFEXSH8I5AnKZN1spGTksF
	 DgVilOkiiYdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9EFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722505369.11489.7311021799814068496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d9eec9bb7e5a1751bc5a2ab8f645c8a46c6319db80e8156f33e84e6f0cb5ed
Date: Sun, 26 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777225053
