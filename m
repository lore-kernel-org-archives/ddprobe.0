Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9B30DED1
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775465734; cv=none; b=EAwkY4Muu29YImK9AlEIzh/sbPSt4mentJHwNPbooxTsHqvvIlrmvvAeYdfANZO4QA5wIBN2PLOdNcQnEJq37WvUZwlhnl1m1XzhCLfZqB/YPJ4khKgQnM9I0vmE5mf+E0i9Enyb9JDKyE3xtYN5S0gVN9lqUkIOnF0MdvF7D4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775465734; c=relaxed/simple;
	bh=467k+s7zZs4iZ22Nzq7RTxjjxZHVRw1PpVUUqqROiVQ=;
	h=To:Subject:From:Message-Id:Date; b=QAeRldidZU2qdaZbC7zXgDzmgOpro09hPtnLRCfrOvP9HkY0AiUU4Bc2W6d34Eq6LRV2E4W9zViMUGyRccjs+ge8TLXoRysnYcos6kvSMlFmTBTLzAQm/5Ji4XKLDgOqDGhqOPEznWW0adURD4B/UK0oto9py/tBN1BNpFDiHkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qra9pynm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qra9pynm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C74C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775465733;
	bh=467k+s7zZs4iZ22Nzq7RTxjjxZHVRw1PpVUUqqROiVQ=;
	h=To:Subject:From:Date:From;
	b=Qra9pynmU/ue26WGN4ucI5mK+m5rbFF2OWzTzqlD/w3odkmLOI7REiCYx/Cs4fCmq
	 UdVihgSyPqP7r+o7Do7vcBXiyjRKlebihl5obCsk1uTpOQ+weK4SxosRqUpg0tszcf
	 o3f3EATCcsLy7oGZGoNR6Q/SBkuTOShA1Emry0Qx1buWRfXZYsHyiUq54yKCio/O6y
	 JUSVHxpmqUwHHSbhEy0DKP/1Ria3sN7bkzX0LkFr67dFQ9IZKx1auLeSIn0xubGaJI
	 DiLCxXrpMukJcJpJ4s0hgmi00lo6zlMRGWLr8d0ym06wVamd8RhfnQjvX5Ny+LqIai
	 It5ElEyZDuUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE26EF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546573368.11544.1055527324121587835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edcb05ccbf166d0ce7776dfd9bcf9d3f89e89cc596127c467f25532fd017729
Date: Mon, 06 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775465733
