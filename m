Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2283F14A82
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705782497; cv=none; b=bzvsrMd9LyqWrQHOQJO3vu6HyHLJf/u9etU9+6vlo5yBPZBe4CtklHhWR+3kRQXQIhKBKm1FVj5XTQWylbv2bAwYOzP8wqDftqcg/U5q2jmliMFvmdYP5m74fqJ5OxTg8gWbl93Xup7RsM8QhC8iu86OzKGfcEQGdJKTUWHvk4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705782497; c=relaxed/simple;
	bh=t6DncirImDSyEWsZv3WG3q5je+mu5vEp3EavK19qo8Q=;
	h=To:Subject:From:Message-Id:Date; b=uwUptBX4zqqsLxuxC4ZQWmxeKXp+NFPpuNmCLR+18lTUSxSO+oI9harHArK2x10ZzukXpQOoTiAKv+nguJMjWsJeZPbkTHCRu8spCAojmfsnOFLIg+m63XAqS0awPj/p5R8CB2fO6MagIy8jpT+u5oBxTsXKrRGIiPVpvfwmqX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot23Mdru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot23Mdru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82824C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705782496;
	bh=t6DncirImDSyEWsZv3WG3q5je+mu5vEp3EavK19qo8Q=;
	h=To:Subject:From:Date:From;
	b=ot23Mdruciajkfrtj6stH0Q9X86KAWmvmbQWQTG+YlUMm59nS8P4UfnQMsdXIc38q
	 4m2KxaXfa8HU5IV1z9ZhsAOzr6LgBYlecNbXkQFKDJCDaccqfKPuZ6Nz5uCJHFMKWQ
	 QYh6zsMjt3qU95QqeUx7CWa2sRNrn3QKTg6uemegzOOPuUsdkdlGYWel63WuLaTRN2
	 vyNJZCW93RdmNgndbNjKPRNlfm7XkYIK8Svk5EjhzkOIJDb6bWgCxpvZ4sITwp+CjH
	 uT1tV/9KMJmmKm9xOdI+79SJTGEeYS/L2OAGkG7MJay5L9KiAUQu1Nd832ZfsasL8N
	 5IcKbY0JmoQBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643B6C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578249639.10062.2641168129935646529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089562ff2d37b227e1226f4bc7cbd865cc7497892b8d0dd12862619e410681de
Date: Sat, 20 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705782496
