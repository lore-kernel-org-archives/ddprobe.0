Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A553A1681
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775664934; cv=none; b=iN5jFbAuhb3lJkDtDhH60vKFlYdvdQuA+hlr1onODfn0IsTims72Fg7sCTXwlLck0MpFmFQdGI1TTHHXgilFSYHFXuW6DQqvkHF8l3QzfF+04zSgfiUJziLG0qOXEcYGdbJ5AVihU7K6X2DzUrKW8IfziC172i1RQki7uVfiDeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775664934; c=relaxed/simple;
	bh=Yn2uMH8+HL6KzDlSK+6xooTQAQXKS7MXm6zUrErGyDY=;
	h=To:Subject:From:Message-Id:Date; b=DQeLalNlz3vCVDyzxdb+9/s8+ixtSgpxwdj3teewaItkWSujcqylKEYA7Wps/msf7gBGaJQ8HNSTJwy5W4xa+Pw3ROoE23egPYqVd5OD80LhgtAev8SMzFOkHxKShvvHbVZTDhUxQufFEiIS9IH4wspBREiBbr5E3plyKOzZ1PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqQt1+iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqQt1+iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9442C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775664933;
	bh=Yn2uMH8+HL6KzDlSK+6xooTQAQXKS7MXm6zUrErGyDY=;
	h=To:Subject:From:Date:From;
	b=MqQt1+iEmdXJPCeXNhp9slmFCUr0kIfePLWZ8R4VdDDSXytz1vuEYc7aNNAL+Cqxr
	 Rq6LnmkUqgxcJ/hrvJk7kQVSCFxjZPr6f2eyIkPQI2dOILEyh4XVrAeRkLW2+/oeQi
	 81jaoQMwo8ZsSKqG1PJTFck6t5qv+mAxoKwER/sfMwpgMvGjaLnEui8zMb8qZML/ez
	 OuFuEbqt/nHxk5OjVLyk0l08FkVgPPLnWZvnM+NZwz7k0eRvwbFS2bb6WWrC546cX9
	 o6eTZoPjqJ6yFXyiUgvkb9IZr/33daO2/69f75oIA68+TJJRKdTIRQSlUcPRDQM0FR
	 rLvq4gPO7VhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0BA10F995A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566493368.21022.5989156709410616714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd78a32db4be23612bb5807abaa24d1a62892a8c3d7fde905b8f1d7487a00f97
Date: Wed, 08 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775664933
