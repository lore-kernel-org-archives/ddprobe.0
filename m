Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036812264A3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774506294; cv=none; b=HG1RIrUPXckOqBGukfaFm8eehCkQyxKrRN0uXMinPDY6/CyxpjfQ8sxsRWyL8FdcjFOz/NpAXkZ1xtBcCM2TCfaOQrupJYh2sQdDpOGSwSKhzYZUS2y19/E+Bj+0lhY8lCsdjP/Hb7hcwcwD6rvKZeaxVkyzShAOLGxX1CokLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774506294; c=relaxed/simple;
	bh=E+snrPitoaO8ZvCuj8hzNfYcBHfcClcGHAyqkJ21bDg=;
	h=To:Subject:From:Message-Id:Date; b=chNaPDaARzK/vN0Dz46oHX3oGhMzpx9xS2DZkq9OWufT7MCeQl95T6cd5pKlHmkpEmeD8gotD9cDBc/SQvPVfLT2MZiMbDcSnv/AsOK5TZXX0+vE/2JE6xlLowhRzzGh4TBN9gl7UQtoLSZpjw8LZSut5Th9uMEmUY4F8WRRy1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlurpSka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlurpSka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0543C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774506293;
	bh=E+snrPitoaO8ZvCuj8hzNfYcBHfcClcGHAyqkJ21bDg=;
	h=To:Subject:From:Date:From;
	b=LlurpSkaO9XaxJEHu3jPV0miUh1LjAxd6iFuDx3ZxTre3iWeFd7/l39PhFlid3Op5
	 Q+YhIx1p1zOzgStRfyV2vpj4PxtRC1uFjKE6Yg8t5OvkioHHznsVGn+wFlheMVakrX
	 XDndUGnzZQoYUkhX1IN3lj2XizYixSOlYzLZS1zAlTUQwzYMuWP4Eb2N5XqaS/G2qj
	 f21eLBp1MknArjq5RX3c5KwTrL5SuIhRoQDLeLnYTpe/4XILb/+zPPYwATyGbF5AA8
	 AAoVnyAQhRNmA/Sv/H2QMrG1ad11dCqF2aP49FpGmaePTuJKf8MFHGibwXiTWud08u
	 Ga+Njl3nkKq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D22109E557
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450629358.9978.13496978217224440189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac52cbf3415dbe9c896f439b3540fe853289c190a513e5e6ed87c16c5ae44e19
Date: Thu, 26 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774506293
