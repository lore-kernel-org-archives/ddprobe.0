Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EE83E2743
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773248094; cv=none; b=dSQ/KQx5oFyXIdiHLkFjayzjz6TAs8DICV+iOL4xjaUPgdutKVXhZHAat8nTs9Ze4wTxLw9qWhS+Cq7yg//a5pnhYwxGXLqvRCleYqtJHJ6n6YUk8y7k0O3d12kNd3RKdsafjSwSSFXerZgJxL5yS86+I3yffHvXvlhbFxank6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773248094; c=relaxed/simple;
	bh=euEO8vm6+hhBCaTN+4O5lJI5LSrSZIGJTDRLqrFicic=;
	h=To:Subject:From:Message-Id:Date; b=VksE3mVqwwVIAkOVikasYbc6PUMuk9z+pIASHaqUi+F9InyE4t+PxuxuUYncuiXlggTUm3X8BSj9Tnz4T9j/723TLHvHdAfDL4ZUM9BFeQRIiqkV/8pdrmvANdzSXYmcsXyJO0oXHRqM9pTi2BCrRQv1zhAYYgS664I65/1/mvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzDIxbQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzDIxbQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C34C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773248093;
	bh=euEO8vm6+hhBCaTN+4O5lJI5LSrSZIGJTDRLqrFicic=;
	h=To:Subject:From:Date:From;
	b=LzDIxbQVK+qMUadfIjSzE0YyRvBnsiuYusenX//Np406cQ7FyvdYkTPmQpBI20xca
	 493Zxb0o3K3P2sO5cS7SHnS2hXE2WjnDhqnMfNX4BCwyfw75Y6FKnqyuZt1KjMVrtN
	 TLxxOVOIhu8PUdxcVqAyxsOPZOH5eE38RQt8SljA3tZpSX6B/ZUiX6uxBCwmMRmmqJ
	 iQYLCKT8h8HAs6qUZ8zmb44q+Sa3xygAkxIV2CkMxTedQ4nyEO5fo24Wjp5tfvFBO8
	 ZboXcEjY1GErgjURPmQ7qLmrouYZmK6qXvmodTSxnfOH69LlQbd9gYcECY/SCSYKR9
	 EkJ3wQ87VpBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABF1125855
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324809359.7974.12507003301564154294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9655496c95b23e3ba602872c013f486af28e6b2eba685113298ff958a552c07
Date: Wed, 11 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773248093
