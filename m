Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D859E2E7BD9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789585235; cv=none; b=WVGAgBGvxg26RJm+1fvfNDynAnEBSqJe3S1g9o14PCnqC401WOl0h13h4r8CBMMGddySgH9jqvMdaLhtua/ejaRwW5nAcnp/sHuBdfuX+HugWI51Y8xyAhHKx2ijz5A3mpoUwGvLDAbjRDzB9Pc4xrLkIjoZQ8fRu9MWQYItgx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789585235; c=relaxed/simple;
	bh=823LHFSdLDcLyztxyTVmc3IFR0oIgp9ajlBnfRSh2/M=;
	h=To:Subject:From:Message-Id:Date; b=BhbTZJdtieKjgtXURr/gNH6ImoePMlKOlYI4Gkka4CI/c3AVK2aBCD5b95GTxir1ltI1k/Hc1zie46kLSnuPB8JcmBsyITMEmLIz9f+7Ch9kKlJSgbwB7l8bCfOFUPwuIGn939zIga03Qmx/agSJusi0kUkIb8TatSusQ2N+MDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQnBrgoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQnBrgoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7E5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789585233;
	bh=823LHFSdLDcLyztxyTVmc3IFR0oIgp9ajlBnfRSh2/M=;
	h=To:Subject:From:Date:From;
	b=PQnBrgoV25tGQGXLH/3Ku1RwMJM8kGVa+DsddwCAVzhzdfb2QVvzYflCe1+UdMyu5
	 OvwZYcPmbAEjOWZraowqcXzl9duCIp/dFb7YLkcjzBOV6pqduVEYbPlTsBfPdbZGRU
	 As4KsuepoFSQZoc6lyiNM4VGPO0kxtptR36wikqFf/b9m72lly/DZkiaZRocFVVtrm
	 m05RhEfBiJUJwbQFsgRGIuexSbKvPck6ZJbadc0ijCtYvgt5h8U/K6NyQv3lnfudJz
	 y/c8gnuptad+WAICq5BvyA9AeK9FUnEEQk/Fi69naJE7gxAVMnOaJAVA9+5jUPwcx5
	 vb/dWBvqrZ6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC79C88E7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958523371.27872.1536024969435576371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd4cd1b9f088cc287f89643338ee2ab144b6bfa44475e8fa0d4cb6b364dfdce
Date: Wed, 16 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789585233
