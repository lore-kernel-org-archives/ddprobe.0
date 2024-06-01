Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2B414EC56
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717234463; cv=none; b=RDLKL3Ce5FNcyUTcC4uVn89BShY/OL9BysSkd6NHzN8WnYobHgszVPkVo6q1OhTkS9dXVHKtlhk5S+Gq8Tj2U9Nm1A4D0MoaXGIw/iRmOxYuv6vaZucAZrv8pLMz7f1LaM6x30RwRXULIOTHE6arDJeW1QdJYnyoe4seTV5mpQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717234463; c=relaxed/simple;
	bh=VMXupSCaIJnWwCyPcGeo/7CBhRvMNQOxxUyeOjn300U=;
	h=To:Subject:From:Message-Id:Date; b=Gea1uirWr5dEz32Kc9g9x/BSJBqTzhwTpFZ/dLf8MVd9FEKnoezQU9HH3Vh0axB/MmMkaXdPm9F1aVQlG3+FRj0B7/Mpcn/ap+J3cmKd/SdpXRfjW8U3HkxNT6fJMD5Eb3ALLAB55eNTIse8SvA2STos9RPxzYqr/LHZ+unbYyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRxu8RLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRxu8RLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF1BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717234463;
	bh=VMXupSCaIJnWwCyPcGeo/7CBhRvMNQOxxUyeOjn300U=;
	h=To:Subject:From:Date:From;
	b=oRxu8RLGoPHHMqKvUVkCSc59Ve6FYmbWBqXHI+dpg29JJPf4kp/C92oEiR/aUIZR0
	 gBZBp/X1e00/XwsjjgxCrn/0vnyDqiGkSZz9bUOatTh+yw+qhkohymmWeQ2ILKOITH
	 BixrxijwGvOWno7Jf0YdJ6LGlM/bqjn4uhYoA9FO+Vrb9L3HG9VN4gNETUrMstVIad
	 DH56fkRzG/ltCxfeb4UbAta3ySC+2AcpQ85Lxz7i+rqvyfDDxUgQeloCPbwSl1W1pM
	 EESxa0UlIz/eALrmU4Sn72502j1V6qwpJBDoiIJ/B4WYX1GNDa3k4HzuCeUxjRVL3+
	 CumKuiuMRs3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D57C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723446284.6688.5536097140781885582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315183d28ea1c4536fefc8cb5c0071887c6f7efc86441e9b05f7fd052acf8979
Date: Sat, 01 Jun 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717234462
