Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FA936C9EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787172634; cv=none; b=K95g9U+8brJe7HWyFuSkduoZFfMJ1yY6yXA7R3f75fOQltfOllOSDfcTyoo8WUbZham2QPc9X0p50vRt+7pSX2dYPlA4IUkRpmfOpBij9inVbUpKz6X77Oyiy0zHIFx9O8Xx+NICbEej+Y6+uMovuy8Bg0aMYxJgHBul4lrFjwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787172634; c=relaxed/simple;
	bh=x+Ik3KnQOGhhgmomI8YmkGEowDgm1jd09+OorlpRRw0=;
	h=To:Subject:From:Message-Id:Date; b=ELWi/h0o8+qP30MLRqdAWpOOU4ACvVElNtFtifaoumuYdHy8gKlNUyGPdcz9d26NvDUgdCcpdu7amwTa5F2HsappzpisUWELlPH4GSBRE9aG5ATxBee4zykekYn8rKqTi0m9TdGMGp9S4AdehLbYg8M7d1mltX/G8YETZgkILJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ertAyQ7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ertAyQ7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967EC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787172633;
	bh=x+Ik3KnQOGhhgmomI8YmkGEowDgm1jd09+OorlpRRw0=;
	h=To:Subject:From:Date:From;
	b=ertAyQ7YljMSDqassci7FiBMlS2POIOQV4PhE9o8rpkG601FO/7p4thnIctHgUPw/
	 OqsstfWyqTKYBpS59GQGyhglfnvzn8BlwGbKbgIQjfaNY+te3rI3MVEYtkhHNTU0L5
	 /tREhciqraU5eiAQksZwv0SoHnpIJAvWSAhQTYhw9oReV+PRWOeTm2nkqDWaOHFrQO
	 nzxjjVHirqQHKqnplrhFtFVChxRi/YD1y1V0k0DcMdg588Yz8k4fBl2fIok3OYvXIr
	 G8PhIvq3jWnhGrKnLgLqew8sNPcbfP8BxnBhXdKjpv/e6C/ttLDcYcWkrDyTti99v4
	 5s4Gmqfpsgfmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA9AC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717263369.11787.7153799010058437696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e52365b982e6570702daec66bfddc5c26cb1a0a2f30b563edbaaf48297b0607
Date: Wed, 19 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787172633
