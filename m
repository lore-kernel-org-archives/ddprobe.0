Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6074312B171
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720729643; cv=none; b=IJdWAUs9OLUisCCJWsPeaE6dbIb6XFHY816+dViUahiuz6m72gBL9u8VSXuMnuKQKVbXks7vzmx0PJ4Ahr1gnQyWzwyPUJawpdIjOdWpMcwhJuXzXzzSJ1cOZY+iURPJoLJw5a0AQCmg9ozKNrQzlx1E7dfspEejMr8ckz1/wZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720729643; c=relaxed/simple;
	bh=0x4LlbMjcwFHb+c7W9dRxPHWkE5vmOLKhIJdIcuC6cs=;
	h=To:Subject:From:Message-Id:Date; b=HXSeeNCnS/SJ+r0NkG13eUTlWI2DqKRQDHEwWQVYnLWu4kZzCZoujhI+sPAnIWX8CE9YEL0rw2W89lcPQNf8L+JPWr5L154sYmiBZWD8ou9lYQuPjE21TsqIkkqksnf2iWCjPWB5fzLlyPykstIbbAmsifwEl/vagouHaTfBNWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTs8KTWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTs8KTWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD801C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720729642;
	bh=0x4LlbMjcwFHb+c7W9dRxPHWkE5vmOLKhIJdIcuC6cs=;
	h=To:Subject:From:Date:From;
	b=jTs8KTWtWN2TBUM5CmBB9UTYTkafBdafyktyLbDBt/1X0g2RcNN9I/5f6/ltkX8O8
	 M+gXoiLe/1k138D0paqkRoabHV+iWeN7S4OVZ3TK+iNX+qXVXHD8bt9dqH5+sR4Uer
	 x/ih94ICN6EyuZlIAJV+81ylq4b38RW4nry4S1YFlIEOMv0Lg40yNFdnM2uNaY/+F6
	 X/l+Bp4a9LkzWQQt3FIHxxAJ4V/gXQkPuNySkMq0yMMXOuyX+mud9Z4ZIbe4UH9gK4
	 s8KDBjwPr/qIXkidQGPeLYRsBEqTV98ddGu45cK4pigfqkvLU/VaS8Z1VbSnqmO0dX
	 GVDwAFfzsmZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F80C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072964281.21066.5998796638397885670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3d448e2b48832ea5e7219047b77cb6afeeb2ae387a02e14d86a8ec90906c65
Date: Thu, 11 Jul 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720729642
