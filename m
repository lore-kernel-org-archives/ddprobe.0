Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2287B8287E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774398894; cv=none; b=OUpaM1yi8JvUzovINMY6yG+KJI4Zb7rDZio4NAVk2F2djCVAlZhubVI2d6yXkMHOQ14zizy25Vn8sPzmLLtSA9Nm890mf48tc7cqAz8Wr51KSSMlQXaab/zhjUTJY9AsfDKSGQEvB3HwNkoknQcW0MQimizEvzzGXyeBA5iZUgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774398894; c=relaxed/simple;
	bh=p5I/uz2L7vOtNopAaQzcjtNVFxrffabCWMKYkmR7vJU=;
	h=To:Subject:From:Message-Id:Date; b=ioVXNQ5PbzNxnW2hlkrY4rKOLX9ad9lTkptcLrnoh7Nxj+JaoH1lRqOquV6QU1L2Wf6FgfceS5bEIFVmfBD0tzipnkrDC2eTW9N1+Ho3GgGtUhIgmCFH817+gg2pQ166nXdNJfJnwH8Avn+xOy4oaKL5zqlDDdwkIUe8e9uVYX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2y8ZVUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2y8ZVUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F14C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774398893;
	bh=p5I/uz2L7vOtNopAaQzcjtNVFxrffabCWMKYkmR7vJU=;
	h=To:Subject:From:Date:From;
	b=D2y8ZVUiVrp0J9m9SK0XxV2UzlGBrcBHO4iNWpjbpYyIUWGZikJQfz0ofeb9s5F9n
	 mNUY2IdpoELmF0besohOLwr0qgdUN+5tKPqY1AdclSqE340B5twhH87CGfhs6inxBg
	 jJ8Si0qQKELJvwab43kQQPcaxTOhrcZxVTLXc3EffdrbwM4XT9z9NCDS1vUdZ7oGD/
	 SsY5ABBp8uYo57BsGoyZ/ezDXkirYezI6iq591FPcBKDfEc4xA2Snu7cj590tw0uc5
	 dMC11ImeUP7SH4ydeM7m0c+ZNorV9JL0lqfQlOdKJHDcEaEfG3PSkoNsRH6Zd4aYk3
	 rFJd9yKClCNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94612FC72DF
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439889359.12562.12644007985456129225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21975d9c1adfa2758685390017cad6930a1527f65cf1a7d16374ed1e92c7ed19
Date: Wed, 25 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774398893
