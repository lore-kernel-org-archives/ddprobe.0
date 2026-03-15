Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073842BD5BF
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773618894; cv=none; b=ujRRzvmqoWYxOqRfjViavUjSAxrKS2Yn9TVPL3YfcWQJo0ahnhWd5E+lp4IGCZkpFMF48uP7KulDrHDBUc7x7lTsDhhqkteAVkHTVbUVME6+FSO3BdXWUTOZAbLmInH/OIa2yumxpY6w7s+OZcKEkW3DDIap3uJI/4MaiZQlVhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773618894; c=relaxed/simple;
	bh=KQFWPfovZSJ2/t7h9moE0VWnKyNrU1Pg5LAQuVYUWpw=;
	h=To:Subject:From:Message-Id:Date; b=OLf4rK9G/PGMUFzi2gPeOOYNqM6ApXx0urd1TNUL45iNWIbXn4Q8tF70Xc06GkIgjfs1GarSbP7VlWHYjckYqWhbSHh9/LKNPFNwSD/q9Q8mtXmpMQafOXEFbPK7//aILSoNpcx5csB93HX8IeJHmMrk5G+gRnWl8tlSwOhJDDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THj2GOu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THj2GOu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D96BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773618893;
	bh=KQFWPfovZSJ2/t7h9moE0VWnKyNrU1Pg5LAQuVYUWpw=;
	h=To:Subject:From:Date:From;
	b=THj2GOu+pO6WAfSdooN2iTBy0AhJVnA6Lpy1VQuiNnZC8VZaVZ4+vtnhefEQdy/6i
	 KjEEYsOccq9cV1tCALCJw453ogMKXVzVwYpJZRJIyUQ8knCIHEkYovSxbJh3tDCWnC
	 YgeQmtE4tjT8kyW42N9wCjxqfJHg3YWn83IKaEa0FlAnXpUOlRnLQc01b3iJ5eUEEo
	 5emrb9BiHve/aEVk6Z2FJynAy/7YCQ0znb4uE1vZtjgHtob9FicWBbZsE/4KU5f6J2
	 efnEuvOStOja4OXtB64ZElkQrH9hZRFiGYIZy1QDozqqVFYQSbX0MOg0Lih2rsRMQN
	 /z08Q14GbH7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF06F30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361889357.24623.11564602260506693250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4920aa5241bcf231b38f9b9d74ed51bc3b263ef211d385d42a4fcd9aa2593a8
Date: Sun, 15 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773618893
