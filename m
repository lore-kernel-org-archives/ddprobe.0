Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526412C859
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765647774; cv=none; b=aSR7OXm6gOTkxZWLsMsUvJgZgzQqfQye3/iejQPKY28UCbMypgiUnxTZOaVc8c3ieI4oNn/IRLR/rsreA7gph5DJykLRk0npnAYXk9WfA17hMTUxay3eKNraYLEBUdgjUAppw7PxGWBeitQDWNGPyZEPdV2YlFp9JxK2uzpDKfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765647774; c=relaxed/simple;
	bh=7NtrEqh+DsCi2K+LVQRg5/2wXD5qoWPdXGrhKlKswBk=;
	h=To:Subject:From:Message-Id:Date; b=BlklIpH+2L0Fj5szLuHEcFzxIl/x7UkQ8Nb6qxy8GVsnPw2S+v7p1P/MLxNk6sbxMY0mxhaiiS1QylW8moPY1VY0iisVZvy1XvTGrkxtVuWK1nzjXoiwzmcaqzXZloTkbMZp3QMmxs/aGYKL6j8mJ5QdwB+Kq/+9V9Y4VowQ5xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOeBXrU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOeBXrU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765647773;
	bh=7NtrEqh+DsCi2K+LVQRg5/2wXD5qoWPdXGrhKlKswBk=;
	h=To:Subject:From:Date:From;
	b=IOeBXrU2VC7kxcaNixmF1oma5IshqnehUx0Rnd9km4ZEfrYV6Dk856F97wlksHoyj
	 Th//7WED9uWWcRjzeJT1kJVw3mOJfjXewHVUXFsF8P5ayezqm5LZTlOmLeM/xWyDgF
	 TiXf+PzgE2mp/tNqeBIMfmXnP/Dwu6EfM8oimf/WqWhzX3eRb0O1B6c8Q4hpgDcjyy
	 Uean9g7SyTjUzX889mAqHpZSPWFBRtLM2Xtc7TQbXyE9e9pK6rLHQp2BAifVgDAG/5
	 xbRLmj57Q+rmz1xdLIUdJviv9GNl/CrhDuh+suPmn/vZGInB9N0sVfMYc+zlpMRyWb
	 nXJWEaNtjaa8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92365D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564777359.31765.1397036274055958761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d042eb2c38a35edf9aa31778c9e6362bccd213f60530cbbf7363f1aa9a8ab1
Date: Sat, 13 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765647773
