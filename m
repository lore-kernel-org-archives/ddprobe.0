Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5CF330B09
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776257854; cv=none; b=YVndvX5Xxr92ignEGgjRAl//ei1gjfOpRzzj6VaW8oGGyxK68o6amNMbjbxc8wSQAZxGcpgO337G/G7oK78VakOYL/LH56G2hV/Zq/M9uz8gicCllQ/ubxRAGYskjFVa8w6VUhc4hTCyL+DRMg1qncOmDysC5XhnX6x+Y1XWCz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776257854; c=relaxed/simple;
	bh=VdBs3/jpYh0RwNkgmct+/tmWCiSpj9P61MyrR1d42Mk=;
	h=To:Subject:From:Message-Id:Date; b=TymLqjch8oIjM07ZpKJjd4hutriaCqUPHrzX/7Y+q6Wi17/nVb31K0UuHnFOewUnkQNMX+NllD/fU7Oxv6sji1AiJwEWTsH4RJv+t75JiI1BfPGtpvTTzbFerjr24HKj1NqPsQ0V2Gwb7dQgtbf68vy1RlUDvPamLAUcxxf3vnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmi1wkII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmi1wkII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB32BC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776257853;
	bh=VdBs3/jpYh0RwNkgmct+/tmWCiSpj9P61MyrR1d42Mk=;
	h=To:Subject:From:Date:From;
	b=rmi1wkIIB7erQ8u9LD3gNrN6YrAtHt87KmpwMvQB3ihiiTKQXtU1MqRTmXnBKRlsl
	 GWexrdWU0mAk32Rj4Fz6Dso6IIKus1tsxx2JSeimH7SbFn3R9cAoNSr/eIZm/WQRx+
	 /U1gQ08+3aGucDiQFuGze44/sW9Hno5jWtMLMcvZ/m800X+JxTdh3QKR71Mgs8tou+
	 A6n3knVUj0k0iAowYAFG9Mnkw71a6fyLRyOPCfppxIfvFMxbbnDv9hI4vXY04ApSRA
	 86QOk8gr+BM+l0I5ZArNJssbQfbS9UNtgkGushqfQfKN1djhJ3Jq/fFt4w2SwrFBb+
	 7CfSTbI3t4JoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD950F41998
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625785370.5538.131650773022391132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dbf9ca71eed5e211c0c21b76406c4cc745f42271c996fab784c5957314e30e
Date: Wed, 15 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776257853
