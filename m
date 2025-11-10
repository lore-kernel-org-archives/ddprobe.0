Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2252FE585
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762777794; cv=none; b=iydgKpW/5kD33AnN8R2KUGuej4wEypnzD+5Ewg/voqb+0p1DVAElr0VMqzssG2XR675wMKhrHaJRgVH49chmxwONreJhqcD/fTAZonK96sLNt1cqj6qhhbmPmCbFuoATkSEN5oSOROzxWiDxkX8vIsjKbebkomgn6bkgnRsnDNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762777794; c=relaxed/simple;
	bh=unLmFGAY+Lnl81V/9Wu12A7OImqpkKuhdrKC5LqAyuY=;
	h=To:Subject:From:Message-Id:Date; b=hsuDrb5orNXaCNIJuwvdyrBZFHLQD5PyG093AGrFI4dSJbaDeCXCwGFi+tZoX6LbnyP3zoLUsVkbZ9cr5BQgjs1vHdM9vRTV2/mqWrigME56gBuQSoEQVoeX+BVWyQbDaZSacVzFaaEbWBoCaYD3opR44kQXlWSdXGg7aOPKE5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdnjo+/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdnjo+/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC3DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762777793;
	bh=unLmFGAY+Lnl81V/9Wu12A7OImqpkKuhdrKC5LqAyuY=;
	h=To:Subject:From:Date:From;
	b=pdnjo+/TmTfbI4shnObPqRUvgXsoKKYLEDqigNhVVfrEwfghhRp8D4WdsnyOZCBl5
	 oVGOrWkgpxrfTlOd8gkJ7KKNU45bzXP/zNiRZAItGIPdOUOFEFz4AEgzIHe1x3OGGT
	 uOqTqpbmLRe2gc4lKCME4Y6OTUvt8po4gZrgS0QYPl3gcRdXzd4SXLy2zKZzsl1pq0
	 HTKeAV5ZfzdXJWUY2QibKg/MX20MZIhxvny8YJQ/A1ynD3eN2+N/vTZWb2bnJpYhDh
	 zmsfmS1xay0qGD1PGyxF6qVqX1lyAdJafPJZM9axuG/xNklBKtsNvuZKahCd3Iqfl6
	 hfO5aiRHfRWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91229CD1297
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277779358.10693.18317748220610268393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947836e536ec4c45b55b62282665d5b67192e799967d0be92df0d7bbb06d1a5d
Date: Mon, 10 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762777793
