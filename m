Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D8B353A7F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789694434; cv=none; b=TBkI0NfOAIBzwP2O2xrOAY/Oic/YohpS9h6s+smZAPt0FXlfsAjZYpLbi498xjp9urq297q01kx3Gdi+4aGSvb5x0h9GN66wRvRKYvgU4lzZIhFo/EYIGqKMJM2/Ad7U0+IPt5gi/lI9OO8LdY53T1k0m6ErdX7m0oYo50Rx+eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789694434; c=relaxed/simple;
	bh=zt7T9BT5khvp/9pnwi6YIA+/qXeS93XXXkfVZD4GhXk=;
	h=To:Subject:From:Message-Id:Date; b=FxX5AC2ooSw4IYMJAvvB6R/iXGc0wmnkdtcEzZnBFbOYP+41xXij8fD40Cjvfu/q3BWCD+FhaeqQ9agXreoMMcfmTX4HIgo12/AgKH7ZybPbaKrWaIlOV8aTZSZYUHMBI0PR3T6xDnSuMXeJ8M9N+Mphx4fxjZXyD/8QTqm833M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGqbFeMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGqbFeMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DD4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789694433;
	bh=zt7T9BT5khvp/9pnwi6YIA+/qXeS93XXXkfVZD4GhXk=;
	h=To:Subject:From:Date:From;
	b=QGqbFeMV9QPlLZLoGdVjHBOQOnp69j7nVtXoEis7bdS6wd+TSFsMrdOlqm4+18bUu
	 EDN0zKzMNqCABPuCaoeenXDebz8IDGdTdJlTHF3w6y4icAd87djMpBofvKHjUSw/sX
	 19PETcjlcQAULtjcThJWxlp3cLEeRi9eIIy8c/fWQgG/0CEaaE2/f+Zcq5poR86MXy
	 W2I2D+voEXxXwg0hNtoRolIv7bWWH5ffmQY3z3aDWyaURj4MNdCK1IPFcTjYGYJyTr
	 hEELQt4L094qcEiiJoSHy6E0Nm7jjNI3g5bjd3ZecHCeZ9aOadtfhN+98C/V6cdl0C
	 e1rDJeLZeAKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93D2C982D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969443368.16524.11761397761570280505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaa28979172313ca8580e9fc1604e0587e39d8da84771e15fdfadf6404e73a5
Date: Fri, 18 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789694433
