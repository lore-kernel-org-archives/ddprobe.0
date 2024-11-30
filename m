Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546F415530F
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732974354; cv=none; b=mVYfVSwrTYi5rRCm4OdrrGt90WuHCbTiJB8/UDDEvyORUT810S1RLDqOF88qVxW/dV5tAzVW8YBi2gDFSMAcA5Khwo061gjzvJoXWCITDP8OJtAefO0+myCWWtz4Ie9wMN3k8tAw6VpCBust/e/J3hiJKsJBu+izAAa0tMTRgqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732974354; c=relaxed/simple;
	bh=gCjb43OdUeaqTRt+dI7WZSX97z4ej0vxWaEd1Tizuho=;
	h=To:Subject:From:Message-Id:Date; b=VN3iqbq4r4Y7PliFt0Xq1X2vIWujxt55kAae+NWwsYBrupmauTnU59HdKlQKAEVmAjziHqkNgS6Mgw+CwGPvBo0NO7AaBCoMPIJ7uuzZ7a8UmiJe57WGuocTJCdvtB18441cUIzif22PqHI4+kS0WcT7OwKNTsgkcDX9KdgN29A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvDSfeEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvDSfeEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0419C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732974353;
	bh=gCjb43OdUeaqTRt+dI7WZSX97z4ej0vxWaEd1Tizuho=;
	h=To:Subject:From:Date:From;
	b=cvDSfeEu1xkZVbVvyirKJbs9tVNssgCVzoB3ZuCIWjZy5/VrZVGMILqd49sMTD4aT
	 IDbT0ssBeMmRUzvkqFRJNpAk/+CM/XhIhsGfeuUpac40ZupZTuOHwmnW7/IT1JblcQ
	 xWJVnZyuivkTkclj06QJjM7MY6FRcQqhx7W5f+L0eyKprVmncGMxkf5q5EwSukEOje
	 7dKDPElBV99b6RuVgTAk7LI03IqHoPQ5nEOJXDQKs3oVDEqUNVK6G2z/qAtFlMnKTS
	 TjweCEQODENUIhis3CXjzqoDosE8VKm6eeuL9hLB+JvVfMZMa65Tvbmu3GPBjwibsA
	 JpsW5qWwGIu0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD905D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297435366.7833.12559754152338759086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b4f05ffd3b49b5cbf1d4eb318564e401e01aa952be3b5d9ef822983e30d99a
Date: Sat, 30 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732974353
