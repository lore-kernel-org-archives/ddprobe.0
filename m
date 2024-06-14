Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D50A3219F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718384303; cv=none; b=blsM6rskJ2ugrWdeUzLJrDSC84Y8BqaVlCY528Q+guEr7oK4iYPtvICXlh4tjx8oeNB1MLKDlfZ0PkzBbsaNPdSQIuaIVKq4OTpTvWN4uG7tlsH8Etsr71vud/c+TV/5K56FYCzJJTFdCb+SC/d16NhoGqBQHllLIvwus9hJ4Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718384303; c=relaxed/simple;
	bh=Ws46yMphPAbMjRJSsUPwuD71pw/S6SOCTPAWIYw2fII=;
	h=To:Subject:From:Message-Id:Date; b=DTh9k1D9YtVc69DWGGJtXUn9Fb1zqxJsTZ8qVitJmZqVTNIuY0kt02vPcOebT8bHpnsUqLz0rez9DGeDJs3ybyqrELq7ZFTDoRb0vh7vncQCEjSx+C4ardAiZaTyPg142BWRm+9oNpvQsqFb4d4Dgr91eqTnL526TgF0qt/4oE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVK+wMn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVK+wMn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC27DC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718384302;
	bh=Ws46yMphPAbMjRJSsUPwuD71pw/S6SOCTPAWIYw2fII=;
	h=To:Subject:From:Date:From;
	b=mVK+wMn3NLYtDf8fZFznUplOLcTi5IbSNo80VE1xurUZPbB02CQJPx1Br1D9GkNPA
	 LEqOYrDlxVd6bnBCrzhd9iyBTF5ft7qWVJJ2t+Oub13vBCcbPicXJhLcXxMmdQGIRJ
	 LIryxog9C18p1Lvi5xWChoVolmX1SD1oW8q5izooY1VyA/KBNmW2zJHZWDVRJaikSn
	 v59kRqKQ1kP2cfzsam3YmRLNU9lmf0yjoHXwbP33bhRoNqbCA/aXRpvE44TGt/eRAO
	 D8EPSbFBpADJEWu0PG4Sw7rvX5a1iN63VZUk2du49P4yvjhxUByk6+y8y576xGWzxq
	 qAIMX9vU+KdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73B5C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838430280.19854.4847382862979457764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415e2cc5f0c4aeb7294badaff6f8e1c20768172a368f1cc290f7ee9cca564e3d
Date: Fri, 14 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718384302
