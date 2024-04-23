Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B8013B290
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713882023; cv=none; b=G6xmmjsE4L7wVY7zbjhoIaKqjQBHAgestbnWrHgPVUruU4Bd9tZOQMpWxEsmG9NTtmHil+1rvoclXgQsxM28HmxTKEXPX8AnNiPOy81Xxeei+dL9+XzWSaxfbpaWqPHl4mFzR1bt92UljU09KS/yRsTzHVU9GihS+9+Gluu54CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713882023; c=relaxed/simple;
	bh=clbQ+Zu1YyIqR0tJFEcBtdSbgNRAn4Z7gHWT/j5BxLk=;
	h=To:Subject:From:Message-Id:Date; b=qbnq/Sg0kn/mLru3o19IenIesp4/osZrZNJCziptgVLQs0TSbvbRYgU4unEL1zxEMeJe7DKrh0liy/WMdNTAKCTWI7WTO31/IDrb0svg/gwYvjzkKETb/JBvEyEzsoW6uMJFRR7lJrOTKLJ6RwN2X1NLejBBFWqEgseB+MliCnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zon69Hej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zon69Hej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C57C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713882022;
	bh=clbQ+Zu1YyIqR0tJFEcBtdSbgNRAn4Z7gHWT/j5BxLk=;
	h=To:Subject:From:Date:From;
	b=Zon69HejsDpiMBAOoMQNLz+XWLd2x1k+06Y8SEZ6ILTQNBkxnvDofO5kz2OKQSflB
	 PBQMYUS0OQYPcwrosesqHxVZkCHReF0OF/1DMjK4w+055SApdvfaTquU03CJkL+bbv
	 ctahParXMWWqfVuZjZq2zp0UZwyi/MztA+plOZGUiml5xtpq1Dv14Nt/cSmUx/yJUc
	 KEDU4SaUCCeTdnFWFNEs89X1y/iyEf06YmWE9s4gLA4mGGISgV2igv+PQPLGgC+Tok
	 GyhjW1tJii3pWnQR1ZgPKhBaua5fGyl/eLdk0N0R57L7mKskuVnG3F3ho5sbJYSC8R
	 KEcDUkZMcHYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2ECC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388202283.3245.10271598565285006211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d42c0fbb4d206812a6b7ab2c3423e67cf47039394b74bbcbad32aba3dff6e0
Date: Tue, 23 Apr 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713882022
