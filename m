Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5E427467F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776868054; cv=none; b=c4mMWf7syxFdZWGbKbPtGHM68vS3eV4+oxpQDbNao1OWafMkgyRu42faYJo48DK4kue7Yh7blw6dFqsccBe3BDPPr6MPl+rj8qojWTuVi3HCOiDtnEbARoi0QsKoultBZi8kT9I5J4BDJEaGNQIpQtAjrEtN1b1ZEBw9YoXpfeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776868054; c=relaxed/simple;
	bh=11LbmcyS8Os/ckerGr4aF/gFt6ho+AAXjUCA0CD/XB4=;
	h=To:Subject:From:Message-Id:Date; b=c+DhN1a/0uLqiOAhk20z6nTiWdPs7VXUhgxjsGJ3tRjCGWZ7bhxfX7I6TWJszxXBpqUjh2OVCK273ccSqNjpuBGtiIygkenzoQ9PM468eLYoRV1ozYi7v5Z2Zlj7zOeqpA/IUq2DDWlF0HMwwz0nD0EQLcZpvMHcvhvMXGDbuUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCul/eYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCul/eYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB8FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776868053;
	bh=11LbmcyS8Os/ckerGr4aF/gFt6ho+AAXjUCA0CD/XB4=;
	h=To:Subject:From:Date:From;
	b=aCul/eYlBe2Z+bJPXOgTV52p8cMVQ5jUzX4AIwp2+gW99AzqkvAgLhMIhfA4qiCGS
	 5dJveEgD8YaHwvl1bijT8hqlmVjJucq/N4rWUIFTVr3Fl8GOOWdzOmQTk3/EcU26oy
	 uIFx9vxIa+tu8xi87LiAibKMvMp7BHGiUUNYi1bd5ob7Jw704hAsQpJeF5wX9eSwUx
	 L/d6RFagLSCPaXVgPf69QEirecbBfCEkXALL6ttJ4DyzPHHBjpzkoIn4mJJf8Uei9n
	 DXXpbKiG3UZnvD3JrLy+k/78DJtP4UTRzd/PYyo/KG70gCnWgHTmU/nhfP9NjmwtcZ
	 SO2R4VgTtjbmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DDDF9EDE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686805368.13498.851262745867546074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f48b30d56fdfabafe4d4e1edbbb616cd1b03ef6bac9c39f5373e3d99bf9633
Date: Wed, 22 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776868053
