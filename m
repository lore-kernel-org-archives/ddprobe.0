Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448C03B635F
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787212234; cv=none; b=pdZiZwUwyexDYiQDvOjUWvnrpXruHM49sUlJ8UIjnqN+xz89Pdd9NjnlFdJO0M1rGJLu5jDSBZFzxJc08QzPwaWAssBffzWrQl04afnOkWmSnLlKfHUZyPPgOHXJjs9g7GM/LV4SJR05WdS9CGE5Wknk21CKqpbc4PwZsoSCDjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787212234; c=relaxed/simple;
	bh=mfNwx57hjUcgPJS5b9yai7jjeNAi26aRkKplM54f8Ec=;
	h=To:Subject:From:Message-Id:Date; b=tdnkGegkOEpsu+coJjz9h+coZo5UstsIJ2uiK8IGG5rk283Fi8cWuOFaX/MpydmIwW3rOuUtaMLkkpKPZI7ldS5K72W341nbslmf1nMD0xIzWb8saSWkrUVwFk6MJQuh6NYH4tpfy09v9dT3zo90jl/aCBOSQ+EkdUSfzIA4PHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm/FZeoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm/FZeoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD4C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787212233;
	bh=mfNwx57hjUcgPJS5b9yai7jjeNAi26aRkKplM54f8Ec=;
	h=To:Subject:From:Date:From;
	b=hm/FZeojL9zuhKtCop3SoHcuIEvuXxhTNVuEf1G0n5I/eyuYcsU7e0oA28u0BxQGV
	 xN9dH2aDSIsgykMQxsM/y5x8L9hlyPns5XMhnwsFAsJtFYw0nj+TUjGEzlf2G5E9NH
	 W1AnQcpZG8xXPi1OkNd6iTXf/e20Mm1hdvK6KO2bqq1zFsjPNv9skDGWl/gCsCbOL7
	 iImLKT3NZlLukasVD1t5ZlbDtEw/F/kZXSjw8vo5LqlDKSMb4usp2EWvcZDV+9/x5M
	 y0FuVzqoAl8wJFaGVch3IvovB7Y2tvSV/DFlZcGI13eT2LKWpLmKUnbU/x92YeyoIv
	 6DtjyZrGEcDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3ABC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721223369.6876.6247700470078893569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebb25bd180e8d2b871fc354530f1d28b8e2857d9954d773b695e82209a90ee9
Date: Thu, 20 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787212233
