Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7D829D294
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786557034; cv=none; b=UC7py2LmgsAgeaSRKtfMOqmP60kDmAUfvwgHtKEZ0I80TV/0oyRfj04Cv9jQI1wMC3wAXvoQqX8ImRwAn7hCP19U5njJpVOMqw8eVathe6+TG7D2Hw25xLoGQ1wgbsOXL2bvMhP42d/en4UoUuKxKbtnB2Ls+fl284wol66H0rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786557034; c=relaxed/simple;
	bh=o9ZpbwZYmvpIsmMgD+9f/+Ojm8LvnCFeMd+mWho/Se0=;
	h=To:Subject:From:Message-Id:Date; b=QRbJEZAkRTjW9Ks60Z4YVgZxBz7xgr6OR/QyDpFJfFBSuxkMfKooUBdUmyLgqSpImj+D8fW1oPxc2LzHAc/eY5vL0UatuG12DteLwZSqN/tYpD8IkYj80A/dFdbeJhFejvGnSyGOyDVSn53x9I9fSMmrJKMxoeRLa/5YLGfRLbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfSPdYpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfSPdYpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A02C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786557033;
	bh=o9ZpbwZYmvpIsmMgD+9f/+Ojm8LvnCFeMd+mWho/Se0=;
	h=To:Subject:From:Date:From;
	b=XfSPdYpWsFwDKDSq60q8O+5L6uwGRtfaYSzxq43cgH7wsJgvXA9MvnWbatYuJJR1/
	 NklCJf1hVmRpcAsrkJ6078wdqCDC9vVRuso9LIVJoytfAacPpgBAEiSxTZsz56vYAO
	 BBDUNW0HgByCDGOIUEEnKjRRoLNStKoRyy7svUxUteBwliDGNxbb75Nx7VnL0zFnJP
	 hXF1XhCXGa3N1NApFdMiakrOH3mQlq/oIPylEBf9wKrmpt8zw1lz9iRNPeZDKsAxe+
	 p+YxmVI0mwqCcbsILhZ2mp5S8iLbp3RpHiUrcW8QJeKqwoAg5VRCR1bgvbynFCif01
	 rctLJHz6Hpn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3226C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655703372.4989.12321333536962122033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f568c587c3f2336f8fa5753713bb27784c17dca657b1d59c01aa43a1fc3dab
Date: Wed, 12 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786557033
