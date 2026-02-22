Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE6A18AE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771763694; cv=none; b=HzqJoltlajl3Gn2hwr/UIOq+8fcTVmPP/FUjsi+tWbQIZVDOFdF3I+VC8mAhXatgBje0qonn7ryeot7bTcAD+0zbbVzTyEpNwuFqxGxlOZ3FF56nJHgQPuBmTtzFCxkd+vnA8xn57S773LxgOD3cHryLo6m9k9R5dWrs0z04hZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771763694; c=relaxed/simple;
	bh=Bso9BtB5MqrTbvmW80/2RtDCEO78uRIUacNhn0FMxEI=;
	h=To:Subject:From:Message-Id:Date; b=LeuM5/Ix1/N+1L3X1JFLGdafz4N3QsMMuYBN1QhnuCiE/2drz33Q8aEmxmuFLH26QR6Fbh9ET1ROTcSPAXW1XwvpTRHZltViqjX3of3Nj1OWho4ZperumcyuRtWhLEvhjxbEvhjr3EvqboZHl+Drbdu9ePBKIiUBKOVKcVJ8YXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fbi3oPtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fbi3oPtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2C6C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771763693;
	bh=Bso9BtB5MqrTbvmW80/2RtDCEO78uRIUacNhn0FMxEI=;
	h=To:Subject:From:Date:From;
	b=Fbi3oPtB2MxpNlSVj+0CyOkxwO6ve74I+xfmhaGYUMVOWgze8JDJ8SIhpm5yMY/eh
	 OvWYfWgDBltf6RcSsizDJoMghus6KF+0UsFm4+0HgLwQRCb1XWUBlW5m2+9OvADkPH
	 hCrzNdWfNbrbhhWydUG6oTrGyTrhmu203eV1Qt61JxEtbZeMBbzET1VpQfiN7Bu4fb
	 i621+OJXATmEzBjx8kdZh+vo3E62MS0eM6jU1LdHzC6EwHgXZGmsOdKE4afqhBhpg3
	 8v3lMaeJTaepSI6WUHSUdsjhU2AhN84miGR91byTR602UGDPoU4hPtxBPENddgCY0C
	 90jOPBN2Lma3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A708C624D8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176369360.3739.18110727872829025965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ed59903c7fb1459faa8ce28895b2f3fcc4bad2d018ca8f2aae8a83e7f32889
Date: Sun, 22 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771763693
