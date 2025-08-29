Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806C2116E9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478994; cv=none; b=oB28ZVAFNOG3CLk4Dfq4TnKfUY9fG/tuqS8BoTxivvPkFzcURlTBhW4Z1AU65Mb73+9n9aEqci3yZ09vc66GgXGkFMp9XK2DeGaG9Ksr+9hiC8UFCwv0uSvUUqhqlBNc7rU08YqmLAWd2c6RQ1vAmhJLqFAqqIfWRpibpgq/zUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478994; c=relaxed/simple;
	bh=Ie0Ryxuy431iMHEHnZRSps+0/c1dV99yeGRvPow0THs=;
	h=To:Subject:From:Message-Id:Date; b=CYxa6TZP57eHFzBjq5LBc7CLF80KELHgKQNICb0vXHScBOftwN+yKONgUY0Bf980KkOHrvR8aNPDZiv8JnKwco8DU0hETOfptJW4Fr/sj0dyyw/UvdwalR0gymUGeqNPvBqtUUfxIxOY4ilt8dP4YL3Lhrc2SdSo/wASwycjBk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4hFgySz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4hFgySz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA45C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756478993;
	bh=Ie0Ryxuy431iMHEHnZRSps+0/c1dV99yeGRvPow0THs=;
	h=To:Subject:From:Date:From;
	b=I4hFgySzg5T6YncksgY6W9oyZHy4SLW0gc/Pd6Brzk+rn0cp8hLhws60JjEU/eMi0
	 xD7xqESV8yelCV7/KVmnC/abxdV6DM4QjUpWYC3bINnm3oh2/nscbS1qmWOQ1l6fiH
	 OZyU9G9Ahx9FQj1yfTo9qY4HkxyIWITF/QpsbEc24U0fvJF59AWBySuXyT6XzmF6gA
	 lwAhDmGoYZcDIIgvzNYK7VAbQxSVqHoisxR9oZhrF+0jJ3cvP10kaxQ0vjbsv2VdCp
	 7n0nGaMx6lE5ivr0eyPuDbhBAOAI9cgwAJxQ38JCraOUjn3Ou/2BKsyomJEJaVrE5t
	 gtHCtHMX7acBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD8CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647899358.13343.13608202043565850702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177b2f25e95ead745f49da873e1c205aa21e3569c490ef70110b3047a2e8267e
Date: Fri, 29 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756478993
