Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26953595B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767843233; cv=none; b=X/H8aA7aEspR/U5lBC763QnA0NwVrFP79VBuy4uf44cJgflr8uq4rs9M1DqbkF0O32k0l270SYGarLjvsAIujJoLipPHJO0p3VDs01ujLwMtaVGsrCR5uNr5Sgi23kX77k8i7e2fqnqTSzWqXI+dUhFWLocrVL1BziwRnZm8GOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767843233; c=relaxed/simple;
	bh=sxKmiIiNUE81/5U2P5NQjNUGS5s6jrrE7zF+v29rpko=;
	h=To:Subject:From:Message-Id:Date; b=IOLqneoUNHhbqk4wkGlZKlZLH9MbZtxClmA6KH3Jmvye9Kt21xRrgEscLmzfKnZr7xBIMZfdsXyg9AbJ1Z5l/8NCUpUrRrW0EOUu865DL7+2TfGi8ndDWFHSXhXewsRROt65RmbSNYn7/cl6XkPvEgsvsHRnDzNbfGnh3XUBKR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6O/U3el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6O/U3el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0389C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767843233;
	bh=sxKmiIiNUE81/5U2P5NQjNUGS5s6jrrE7zF+v29rpko=;
	h=To:Subject:From:Date:From;
	b=m6O/U3elt98YAXO2kl/Oy1mJE40ueso9H9i/meD92tPEOrIao9o1abHnMsGD28bxF
	 RNG9pkAn8O0gGECJk+5nHv5XCWDjkBhOkViGhBmSntm0B3EfzH2OL/6omSSx4aMSwN
	 npryBw8axxMWu/3VHt80FXcBXEsIDp1aLYs0lwVU3ez8RAqHIye1mI30Ul0h/f7/Ww
	 kIkW+5WXgAN+IqdJNWiBfWiAgfS5wtd/3OpJR5y4uA/4nR7ECbx5q+9trg8pdK3qdr
	 b4fJ9tAf9F9/z+ooteSY7nO2/aG8jTDlEkth3VS1GYrNZtaRaj38/90PMPLhQYm0ka
	 +TzLmtUXegg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4AD1489A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784323357.28286.9442415284848985933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97081289c2b2d1856b94f48f7c70d8e4f5ff071500afb43ddaa86b3c2371dce
Date: Thu, 08 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767843233
