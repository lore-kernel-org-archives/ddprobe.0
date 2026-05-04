Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90981A9FAA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777877253; cv=none; b=iaVbqrX3ZjIZsDcCyE0SlNrxeGiJcEfSFZnXhoe+4lo026UpSUKn8rXTpp9kpsNJr9Se7hmQwPxxqDNtbT0KqtM2uLviw2zyawKi4zpOdUd6mQ56pCMPRzwnWAXkquZJgR1+glV+PDjm62vnwpJ3y4nB3ecQp0t2G2w+0lIepv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777877253; c=relaxed/simple;
	bh=BpBQUwkQnlpGFd1wmZE3OfRJhx5FrLn2yYKRXgAlDq8=;
	h=To:Subject:From:Message-Id:Date; b=RSdg/1kdS/Tix3e9xsIiCLhzvpad8n5ki59mXoO8TrGvww2WcFSTXSkGEM2sQJyM3KQ33RdgEYOF2UAHO6Q0shVhWavb9XfZ/sllwS86NrlY595jvuP4fsqASGVhuATdyFw/ILgTK809SXeaEYJRY8o/dPOWKAXQgVIfhQmQM/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh0Aodrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh0Aodrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0A0C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777877253;
	bh=BpBQUwkQnlpGFd1wmZE3OfRJhx5FrLn2yYKRXgAlDq8=;
	h=To:Subject:From:Date:From;
	b=kh0Aodrc3a7KfNk+ixrR0P+igl2yN7KUVm9UtrTDmWy6NFCfn7iLAIUeoeMzobn++
	 5tAqIrRASw30+7XN5PNek3ucWBVXtug/IHNqqHC4BnGhATEmeQWykajywMc0Q55Veg
	 Mbl0xpj7bpARcPg4WhQjyfAdmWXk9iFtoS5BNA5kuc36fJpg/aJ05m87BNhFAhD6Wp
	 Hz7YMrddyY0nRtuSwmjrQLoG+wDU63icJuTr0cEtrW8YhiRzCh27Ilp+Ba+mpshk5R
	 fpPgKlwKrad2VeTGO4N7tIDHq++Lq/le4D7OL1313oFG70wAHtChX+ebOvsrYZXnVi
	 kmm5SVgijTDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EDCD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787725368.8714.17557894499836801247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3529e0012c27286f8a9f69f08b35f2313947f5b376a79466054a450f179309f9
Date: Mon, 04 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777877253
