Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09041215F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729105554; cv=none; b=qoguz8emJO7VU6kFFwbudOzgaJygyXJhd2fae6UHDltJGmMLbx9E2qHkuhtK0OBYNwC2fE87M4zzq7xJPtvfzfL+I0kmxGUELmkXikMBSMOXvB6h/bsKkQ7V2MFLtiINWnbb5s0+g890b5dX2cRxg4026nLKBL322dWwGcpsDL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729105554; c=relaxed/simple;
	bh=vuZ8djvoLIRdF8+TDRluktm4iF7d5NF3Vz7YDXUFsyU=;
	h=To:Subject:From:Message-Id:Date; b=U3OWOnKv8k4HVIOZk7jT1lc7VhMU1PN7QgCDXM6UqDJgLchLrDHSRD+POZJ3ar/oWF4sOEu04M0RBjAUavmb0oiCfGMYqNJ1uODpt1t/x2xp5ih8QlcmAD4aV70mr4ktqadWCCeYe7m2fvxE+FuQ5cEXHCdazXLdxSfnemEsso0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoUUl+mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoUUl+mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9CC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729105553;
	bh=vuZ8djvoLIRdF8+TDRluktm4iF7d5NF3Vz7YDXUFsyU=;
	h=To:Subject:From:Date:From;
	b=qoUUl+mDboeqgb0/q3QQMZxKIPw4uia/yb1RNEeoPL7vDL9JKr0DdFVp6NQ3LWURc
	 7H8fHa6Fl7wYOcJ6lDJvX/yJfs3opKxtuC+vzGedRI1yNbL/m2QJndEQfva/HtyJrs
	 MEpPo1vat8yK95awQXeBMzirpzpLhOVFngthkBSnWvZqIITdTI9EEF2zQgU4lHmjPU
	 YMXd+6AznCjxRuQMhm3ZuiYcy32Yop7nFbKwOM8mGDRS4dvxMZKywZimDE8iItWUp9
	 KocfoHZenseKgmgZKqwLPs2ULhYLKVK0v+ghTftLa7thFlF8wD1zJXLTgKryH/egnD
	 teT9XBtuzKjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE72D2A53D
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910555362.30866.12982903408333376557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35c05fdf8c85065aebe2c2ae3925ba6480ad3dbc01cbf23c877c9c2c04ba90b
Date: Wed, 16 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729105553
