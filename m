Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF43434E47
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785510034; cv=none; b=u0Pea5qC7vUX+xu/Ll3jF0Vr/XS5gmRyJhrTHVBBkM9NkTnbvWbzyl9JIP/4lgK46CgdAXVZaV5e9lkyGDym4P2mqYjqVbatA2flkMFmUtMQWWac0pEOGsohPrONGsjcXzK0vyNdXLG/oBGDYR/ajsNpA9smHP4TovjCz+N5dZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785510034; c=relaxed/simple;
	bh=tcpXEJFFuh67qO5sPAVbW64JBSV5+HTWZN8wcKOqDQA=;
	h=To:Subject:From:Message-Id:Date; b=aFUjQ+CBV5cWpxxFfO89Vv4jF7abqY09nE7OWpzB7HbManKSq3RtBkIkC0TseGwYnsxVune5bOcsfXT1T70tekxPqJLF0ynkYyans0oJO4nVXsUg8U02WVTWMWsdE5aL5CSEc3oklZtxpOB8zge2Kh0tPYg/p00L1vIqem+r4bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y795esaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y795esaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE1AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785510033;
	bh=tcpXEJFFuh67qO5sPAVbW64JBSV5+HTWZN8wcKOqDQA=;
	h=To:Subject:From:Date:From;
	b=Y795esaNj/24Hk3byd3t9i50j5DLR3dP+EEoeaW4Ui4c+/0o5J5byui6GbCLA85Z7
	 yRgZi6BggcSJ3z5SDNWbAbNBZCOmt4e2/nV4Osw4G7us48YzGt9m/xHDUIMkREKDkx
	 blkmWXpXLeWHEhM6k1PZ+IseoYaok7nxOG50W7XQidD+J1qZ9IRnh0T4plv3/qOtas
	 wGwFfdgKtij2TfUEqWEDdp/B3yVfqJqpTf3WAN1ZfgojPSv6cXTBUw7oi2NCyxDBsi
	 twe133ffLzdD/Q9kepxYVcDBAvhda6iA+k1aU1gLKIgpuzOOTsKwcwidUKWNoeJNON
	 L+vpRYvVvrdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB370C5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551003369.32754.8369547239978385836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5766f0ac1ee3feb0a165ee17ac3e59c3e0329e6f5d5a74fa3ee24e3159c4387
Date: Fri, 31 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785510033
