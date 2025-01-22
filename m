Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48927ECF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737558354; cv=none; b=Irr8vAWwlc+8bBhXAfZ6wL50twG/lujBU0jB4FzSDD7TZUHfP6yxhpIjptNzqXoI9bGAQzP6cnj8R/dLk910Mpnp92PbvVbUN4I5f5CshwolokpZGDRO9p1U5fJ4TxZp9p+USRukLQiJGL2aFVlrBDjxunr/YF7kV6B/B+9YbLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737558354; c=relaxed/simple;
	bh=TddhKm9XA3Gm+tHGvr5cUZ75UNt44sx7lFRtis8Yb+g=;
	h=To:Subject:From:Message-Id:Date; b=FmPT80r/Fq8rKY242j2XXK7ZmkTq1QAczXPQp5+26BfPO/L9xphDIKQvnWTZjcGMqUQYkBTkaG+T1Nge8qfijDHPoY7SzbvwLsTOqjBz7euMX5SKaDC5/XyZoSQ7PgIr88V9wcsEA0VklLsq/qYPiN8yt/VaNGi1baFQ/HURfdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1ZlCrps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1ZlCrps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C5C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737558353;
	bh=TddhKm9XA3Gm+tHGvr5cUZ75UNt44sx7lFRtis8Yb+g=;
	h=To:Subject:From:Date:From;
	b=r1ZlCrpszJUszbNKDFpLINS1VbteK5A+Uy525uSfuA1AMlmVDG2dZldPQrW/9dY/s
	 sfbP0ujcOOD4YH+X4UZ7h//DAGkfwqwUZnQKiH8ckGfSvz3dFYaQ9rxTZOOqlyVs1Y
	 n1s1X9YsWuhukKtT9Fl2nj0/8RUY7P4EM8yDtEPN4Qgjc7+bMui7ktX0D7vSYCkZE/
	 f6DpNe7DgOqK2FcA6fmM5o/w202aXA8KIDdk7jUxF7+Y0cAY63WfvINN23mt4eCZTG
	 rS/i3tZnKV67ZsbdOy4j5d8zS6ze0cBHM1BdcsI6aaFRkM4/9fSfah/K3WRBK4Fo1d
	 0fI93Nr6xZkHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A614FC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755835364.29594.11050064551327256698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd3a4b56af196ba30051d10ce8f8714885366df4fb66e80698184af76bc8817
Date: Wed, 22 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737558353
