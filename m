Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4C26E179
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757461794; cv=none; b=DhtFnw72CagFqIBsnrd2lKOJP/t2lM4CQBtJAwi4n0t9RpKmA8LH5QjWcmYtTZ7fkGjX3Dje2rkixXHI6xUjZOv6SPRjEh3hobXfnIXrUly18wLmQ7AoK+Hcz9KRKqdqPeadS7VuviDVAuE+KLaMssn/NKuUTzEPte+PX0ewpp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757461794; c=relaxed/simple;
	bh=Ztkph8FCc0Dg7oAer1aZOoHlX3ag7dx72CDVzQj3gtM=;
	h=To:Subject:From:Message-Id:Date; b=jRJURV3gYJgwACwaSRqL8aY5963TLqKvVQy611lA0wWPZ0txyqm3wmsMNADo3MLg3zZIXfGbGebvwkQXPRcqBVPNIz3UENvxnajB9l4yg5ligkv5WHuJUuF4xcBsDwpZxbwIMStEOO+fmghi4SzoFjsQn26UTe2yxFss1GRuZhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5/SWZlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5/SWZlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0CC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757461793;
	bh=Ztkph8FCc0Dg7oAer1aZOoHlX3ag7dx72CDVzQj3gtM=;
	h=To:Subject:From:Date:From;
	b=J5/SWZlFkIwS1L9YtysZBzZYnyu5cDgl3pfCza41Zr7Qm5gBCB+iu6GHkAjSKHJUx
	 40Imj0H6qZ0K9woIOBqMo874sdNaMyM7kSEkANuDMDhZYwt4In9XcfX0WqnbzezsL7
	 QLwqmr3H7nvDuX5I6OqMZWQ3OX8Mn9xEu1EPkrKcsZ48woJ7Rqh3wRd3NaznGDKrB/
	 U7ZmDfZBCyFM7lPRvJ+fsKDiDqIg5yv+nd+SDiXW8C1RwQnXPWALuVFp/Xxt7zdBkd
	 cnx8R7Xp+JqdKKdajgwCjXqn4kuSunZdKeJGFM0SU4PD4XGdyEa2AV4qYbwTXFGvq/
	 szGEfN70yhNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90811CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746179358.12654.15520761705327500089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7f66c20f1174ca39238468bd1d0e0493684ba8d1ab82720c4c68b7557b4ce9
Date: Tue, 09 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757461793
