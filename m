Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385A541A559
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787040034; cv=none; b=XO+bj6UOqtvoN/23zKRq6faDu5D2WOPubNXBBBI59P+41CR6OOww8Mni4BdtB4TDzgE5Yo2/nRbQwOPMZZAElfst+9Qo9czL31wGUyGdccjFaMGFosF3zTqN6JdGsI7MPaA7RLy0ss+5TUyDZ0rbjOthztOX9BpWhfYXzQ3KS4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787040034; c=relaxed/simple;
	bh=kVpgMg8mO89Ea3Z7VBCNuxfTgcZls6Clh35AowtTEbc=;
	h=To:Subject:From:Message-Id:Date; b=FgRXX4TtrT5UVm71p0a5NSjVOxBTW/eYOwVa0P9h+dhQPnJ1Xl992AF1BkLvTzo8QG/h+JZLkEu/LzN0uxzDXd2RQ+r1VSQFQsBvZOFtZyMYDnQrYTskTNAdGD2iIam9tdduzQ1cIeDZIkCgh7TvxmKvcwtCIzOdLwj2abqdQ04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RONMU2gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RONMU2gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28ACC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787040033;
	bh=kVpgMg8mO89Ea3Z7VBCNuxfTgcZls6Clh35AowtTEbc=;
	h=To:Subject:From:Date:From;
	b=RONMU2gsKcQbgDK2EWJCZQzo8MjS7M6Cp9MDpyDjVrateKglSpaSWXNvwQjJQ/K8Y
	 uhz7WBKLFpvkqBv81bSPIgJB18xGfmf8V9aqC0nGTFoCcJm9gqxR9JZXILeTvsPcVI
	 VwX8AXSUSdXvKGMN/FlNhRkXkKzUE1VzEIekj3hcBam9W10kHJARiFwSOLAnWypkY2
	 srW5X1+KWWXVXY+57s3Dg2YPVJPKSLH7lVfK1lsyFWWtDJle2NQCCqekbXQaxOIw+9
	 wL6K8TfpHt3W/ECBEj3hpXzL9XaKSENbYxNWQnhy6CTm0Z6uepRLC2j2v46vFaUKC5
	 k1fWXuK/p8cTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9CFC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704003370.24909.17604913692482594494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf2555446d0a60a4531ccdd00babd5dd374bc5c006d51a715150727320e2f0d
Date: Tue, 18 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787040033
