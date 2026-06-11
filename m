Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C24A3D9025
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781175994; cv=none; b=qtXvHKJVTRr1a8ppSe5zJO58bqwyI+GTN37CqinP8BEh+P3gY5Bwnh8muh2w8QOrWW3gpTcAxs+2TOSJJRURMtovp6j2AW7DZhm30Ft+1Ug95xQybXmgwEBYzCgSwtUrNiv30GW6BzaOZVY9UB+RRQnUDhGsa72O9wxSVPYRxA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781175994; c=relaxed/simple;
	bh=94CzSL/+vIdqm9qjLJEA6NpUkIen6gVVkd8A9L03+lc=;
	h=To:Subject:From:Message-Id:Date; b=VhyxhjbKonNKrWkuIiSVh3MYoZztn98d3FBBzX1aycWuTwkzE+ujsfcIJfJZOs9ugi0k40dcTzOXyLMToYw5iSo8ihTQmN46ApfDRcLKZrBRAQxdjOekTAnq6pLcjePhx5maDL+a8ZUCC0WVW8QcLRpT0QzgqThTSL49EpQO6d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIexf7M4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIexf7M4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5529C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781175993;
	bh=94CzSL/+vIdqm9qjLJEA6NpUkIen6gVVkd8A9L03+lc=;
	h=To:Subject:From:Date:From;
	b=dIexf7M4gBsdwbXavMYUhSzzVlin96ZeccOlbWo3kNKhNKESjIqpkP7Ib3awT6Fk5
	 TPxL8mXxh+HbY0TQi2LZsprcYXR56hxChMEXr2OIlttkbcQ81J+gVHxf8mRsgQfrdH
	 yvnw/LcHaQU16DKz45Qehrk0GtcG6gNaAXwwoyl1mFq9anVu92VgbR7X+ORnkEhLmB
	 RJ7eB4SBgJUFHYEo+Af4vzAxvK2Jn8a2o88uAoZST4lSmR8nyyZHabZa5Dn9+qQjFr
	 v/t6xQEIW+Lp3/3NyYslq8Rar78Du+crbORNKMYMtGG9ini/RMrZnTdQkNyClZCAio
	 6Mfvba7SXvkPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C7BCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117599374.27354.4682632272837878008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5c3ab5d2872356e0f5bc019e615c163d935224b3ea0efa7c4eb4cd7a6d2a55
Date: Thu, 11 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781175993
