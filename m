Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52212221F24
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791339634; cv=none; b=YX6rCVw3ZpinJ8r0h68tUNjxKZrZt55d1gZd/aSh29GcJekF5EshXzj2535OtWbko9vgWKoY9fopVkzYMWOL8aoYh5H54QncnK+QNyvHuVvfb00cGarjTxXsftyVyx8z4iQDFPbcEItwDfNiPuokICT6QpTU0nCckolnYSYGQWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791339634; c=relaxed/simple;
	bh=lPbIyCrWhkUl0CFov+gksS2NErS5X9hYhNlhe5RI0JY=;
	h=To:Subject:From:Message-Id:Date; b=tr0cuJNFqx8hIMxH1Avznd5/lBI/hrOgvsKQWOdgpsiRGY3IPc1xzg8slRJipefTMh1XoKHY9tIPadtS3BKtrMldK7jJ6ToFqkq8YKASjwrMorQ4hXGgwTaeMuIP3ITtipHc+JdHI9agMBqP+g/an1lwfscbYlu2u76Xdfe5C+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5/aIzDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5/aIzDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A7CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791339633;
	bh=lPbIyCrWhkUl0CFov+gksS2NErS5X9hYhNlhe5RI0JY=;
	h=To:Subject:From:Date:From;
	b=u5/aIzDT4rGb1TnZnJEyxMP7OeS1ZJG4sjcbw4ibAlZS3TBR8+EDRQVbkiGt+nEbe
	 5SC5wjM6bb8UlLWID1Nc0wBFFZH8kaWMPZkPxNctNlZbKsktE0lclGzYxR6jwOg6lA
	 F0mPtIdoEW/0K+L1k6p6xIU/tkuGUTRPn3Pk/p2gX0lYq9Ngn0BhASiIp3vylLhoVV
	 H5OJgGeMmfc+qv39Eqy2rkgU2Pg+CIEIx3BsTk09g2L2joICb9Irpw/XMsfORqbt87
	 wcSvYZp3/6DzmT8sTQ3zjvkyS2cJyN37eRSnem4qhHzVu+WYTnQquDfozN1YZGbn35
	 2bi+8A8SD0E6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFCCCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133963368.31646.18256719796708227830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9e70cf01c5c6f66cd82eddd563a353d308fcdab8813069e4e34c45be9878ef
Date: Wed, 07 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791339633
