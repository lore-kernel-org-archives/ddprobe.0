Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176D818A921
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756345194; cv=none; b=kcpLBJ7Pt5iOkJv45ioi4tWdoUGgYJGKfAjF+Ey0Oxyj7dS+NLuJaBrbvj4XFw7VY19W9rQOgqaMMknZwVHr2ot1HkKOvSUXdVLvI9FAdd14QG3qfyzvf4+rEzmmlLREIprA9EOLuvALb9zxFRmoi/ENLgOvB5zAIjrNz4ktU3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756345194; c=relaxed/simple;
	bh=gT659lAKORwDDSqbqu5/vcZBCMMwPaWAGRUKcy9TNJ0=;
	h=To:Subject:From:Message-Id:Date; b=r5qxFkNT7DgdIxcgeGUm832mf2KEjdzhdFVDVH+B6YBvLGAtwFYy/qjcLALe2ig7/Ew4VhzzQoLtCcYBMDzMr1U2sNKlZNcR9YrKF8bY4mO6u8rNBddbEpH0jJPkuFfADR3ZjvKThqWWe5O1ynOTs+aATqP9IXqdsHhuNXPuPfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFVluqyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFVluqyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A45C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756345193;
	bh=gT659lAKORwDDSqbqu5/vcZBCMMwPaWAGRUKcy9TNJ0=;
	h=To:Subject:From:Date:From;
	b=OFVluqyFzkM9q1VzqRzEZhp/QiQ3ABQhlI9RqLb6dPn+ydd3ld7uba+7S3ey0wHHf
	 wQ+K0PVUrpA8paVQ5Mdoyrz+JDKkviCHteZoKBoNmEAZR1sIg+Mvw6mKIKurBDeLle
	 G339i5QMjOIXveruyGJqU9UI+TL6zBjdsSUDDyDl1YYc5Hi/brwsW9ZZBzrd/7zKDX
	 BDiIFqb/Rv0/zxJzRmR5z9d2+jh/T9OV/b+rE2136VIxqn0lSdA1uUxxHvHbXjJJZn
	 gHZoOOziGbUWKv/sQO7dMBIDjsnninvfHkkMjVVpdY1gQdjIeQc40LoUl5qdY9NBzR
	 aKndpCEgNrqlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D7CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634519357.11917.12159272485651200841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed6d1b3039f13953bf32646f4c4c6da194c7c58560c25a1f62f7523e93bdfb1
Date: Thu, 28 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756345193
