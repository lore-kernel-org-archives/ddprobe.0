Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F21302777
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758653994; cv=none; b=sYEjPb+XNKnlYTykcEodqdZ+NiO9H1HS0/UjTxSvtwRVP/fQrcKTj3jzy0CycnMR3shdfu62zhUksCOsObk2heRxtOAvVKeGT8AmQdV1biAylw5fkWW21EM00KlEC9rIOGyhT3XEEO3hV8HmgUV9U4iwu70RdOKdLZCeLJqjoa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758653994; c=relaxed/simple;
	bh=0L6u85aGjvkjv4yiVKZiY2nsv9Eh6QUrAOoTYsCrK7c=;
	h=To:Subject:From:Message-Id:Date; b=SGU/3+mwYumDWJYzI6ddx/IsziPioS4tH7hYGrIUVT+MCYrQja9+Z/4fPnk+h24xDYOMH0Dz/B6/UoFsq6+6XpGcbKqIRtjQ9/tt4eZvezScOCXHFMnmkWaSEHKQagqlEDSTs+UH5sHwPe3yW25+mi39ESPvrECfdHso5Pe9mkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsB0/44V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsB0/44V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758653993;
	bh=0L6u85aGjvkjv4yiVKZiY2nsv9Eh6QUrAOoTYsCrK7c=;
	h=To:Subject:From:Date:From;
	b=KsB0/44VMxnRS4HVbnX0Vx3JzoiOzUhM8rnJMYG1g45MwGQTSk5zH5bXtKGJsOBPo
	 1zvDraOww6AUQ5Nr9B8ACmpLG8pFDjyt7D126piq7TytueL56+WKc2/gzj8hA5MAaE
	 0/YR+Ja3/wUDBZjMlojIjrqZUhkpWh4feQXfc3l+ebEjtA8C3KC9FaZ2LROBnXmnZg
	 8GEqNn1IYtjYgc7eyAGseNrd3oo/G1k0Tk7kb9On3uMQ5GrLziBqUyW4M2akMJgbT6
	 hbqLlGXTUXV20mhpWd4GafkqpKb8F31PKY9m5pr9MiZ+Dznmvvs29sR4LA65n8fsWG
	 ldaY6zic+N16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B1CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865399358.20326.16691900720238391169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31668b35e947d64eacf1d85ee1fdffe5475fe784d3b8c4892b678035e515d890
Date: Tue, 23 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758653993
