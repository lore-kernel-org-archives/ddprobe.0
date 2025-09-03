Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34E123D287
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756913393; cv=none; b=Ga/1ywvUclDFdehHB424yuXWuq0lSJca5PVZtTAK8ZMvUSFfz+YQHRZMLv03mEmBeeSfeyF5rdKG1qCZ4NIsT5SUOy6sNzWazeooHVlSarZwltSCBHVgnMRybPvynqEh+PHAEndCcGe6PLHq+kioLwSitM7IiSVWeOwlAqbHc8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756913393; c=relaxed/simple;
	bh=k6oboG5WpnachCRkYhx+1kRswwP2jQ0o5e6UethZfRg=;
	h=To:Subject:From:Message-Id:Date; b=gpzCjUGMp/ZcwClvXOyrXuZfEW09wIGt51IBXpAe21oS9xnjJ7IobRjdEvVh0aG82pw+qj88enSOpmiLgH5cWpsVpczvL5qsr5TL49aS9nmOkmYeQdYKojNQs5WO41eoeewATjcfrhR2TkMIbpXUeEvZ5JcHB1B1ecAk9nnfUB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFQG/pNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFQG/pNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756913393;
	bh=k6oboG5WpnachCRkYhx+1kRswwP2jQ0o5e6UethZfRg=;
	h=To:Subject:From:Date:From;
	b=uFQG/pNcRF/7F1AmCA7CjCShRKNljicgGl1W4dabNKojLLGqSdwNc7awcKUN1jOVz
	 0OPC5lkCPDJb3/mD4X4XJzA4E+vB9Li9MJ+W/Lt65GjjWNP3wb5FYsIOoUt0JRw+vj
	 xJU3VgvxOi2dPVapwa6uCdERhBMIqaSv6VijYDj3uxBGMtrim60uzquck6+qx/Looy
	 NDDEB5jWdVPHqpDLb88TJIvUekZ26VrN57wiuan9WZKnsMEQ4RMZGrZqTLf93S2FPu
	 wkvkisspWeTxmPsdaVkrOzZuCx/mvXXoG8BTyKJS7ZFoP+H+KrrFaB0GXCa1jqL/rs
	 EnnBl9WsHxftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DBCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691339358.8181.18109057721903691687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a503bc8ed391bac0e9ed30f607977652c8ae28257a885eacd3800f77d7a4aca0
Date: Wed, 03 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756913393
