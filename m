Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92F1E8320
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417694; cv=none; b=Ep1KA0ghWPntb0VmVpHCHdLs+ul3z+yhA7SFk9z6ngqlPoscB0NZ8R6zEDvLYA6M63lH6t8KkEkOD33Y9wJ5OzWy1YSVpPpSjZrSCcpnrsbS3iYVoFPHUAo/qsjYrS2XhTq7u+JpMlJB071OQC9vVceCIs3mUKW/1p3mUmbM65Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417694; c=relaxed/simple;
	bh=Lmf4qOKoamcvnGBwAEZLo+/Tjawt/v56gf032CcB22k=;
	h=To:Subject:From:Message-Id:Date; b=fO6bUaoiIU3TaewsbQ/EmpLXjWUCH/JR7TbyDtoo8tSpt3nZcCbSyE4glwyGzNh+wIRv0qgDTge5DIfKhGVyEdp4Z3+ToiS00hSOkRvGKGQq9W0vNcgv76hTpSDpygs6aK5fMaqbPQ4DCyxEPlzZrovSYbZX/+NZF0SAMy5YB1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hsk257I9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hsk257I9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50C4C19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772417693;
	bh=Lmf4qOKoamcvnGBwAEZLo+/Tjawt/v56gf032CcB22k=;
	h=To:Subject:From:Date:From;
	b=Hsk257I9OyAhRjCCSb1dlMUxpMb+Fiodvak/vFxbWdUuWtYAm5LOGfqNku/lpXVat
	 FeQAsIOJxw+dBSRa03N1TIUkqwnUhi5GxCPrCDLXPJKR4ax5lG/0VgNBryym2ifujA
	 RVRICneuvNvlvYNimXQgxMKcEgN05/zRtMxF2mOUO9tgGfq06Dohwmzs+/jBYoxj8b
	 bdgHzFbXLZiUT8rV0O8jTwlmanC5boPLsXExEuQD2ocYvg7tPGByozDxHvCg3Lq7bs
	 d6jvLK0TgbGeFJVhigMcRyrHhJalLqWm9kXia3JCYcOM31qsHNyGncLCRwYu3UEuZC
	 M2ogwOoCPHt3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64A9D58E48
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241769368.8868.4130906355355876483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857c98a47aeefdc239058b1c01cf71d764f6c695ffcc1689fd7dae1e221e2035
Date: Mon, 02 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772417693
