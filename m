Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49013FEE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746281994; cv=none; b=cQENEl17wXfMSD48TVhkXNROqyU8BROqOg15oAsyaHpXQE0aT0MOFJk88pb+GNulltwKiLF6l9LhyG7Oxyx6Zm11waWJN/MS+KdPxsYCOyOj6ITTJzNv9yLuK7Ln6YLtmp9OfHfQHSWEq6oR1VtNMHJ4ZYIWqYyaFuJ5IzwoPUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746281994; c=relaxed/simple;
	bh=s5SntdfsOujZvR9I8z6+orMMmeIUKlH7dy9O05XENkA=;
	h=To:Subject:From:Message-Id:Date; b=rByTHEkamXuMQRK8IXGcfDudxPzbhFuz4CqQAgKqeHilSuWVNX4D/MpwlvOEx5ZEhKHlmZxPohQQ6f83z8vGCOiQz8RA1zfn8foliraz2s6CFS0a1eaKtpoflXPLzuaFxUINMeWwwzDKq9duuCfr7ZOXJ98gdit9RsZK0xo69ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTH7c/Bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTH7c/Bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0518C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746281993;
	bh=s5SntdfsOujZvR9I8z6+orMMmeIUKlH7dy9O05XENkA=;
	h=To:Subject:From:Date:From;
	b=rTH7c/BsHqCVljKcdXH2kCEcD/VwKfANEUquewnIL/bj//TlSicd7AYz1scNTJXx/
	 ayB5OqsCIsEIcMDsS4t11ZhF63k7TA+uySm9rxDaeIiGJrILV1b9ZwtO8vxyOG88TC
	 tx/DIlW9QlKe7r4v0N6bxxnXr7RJhjshFjRNzDxpcgta2JDrumdcl7rWsIY28LZFK6
	 PovAJrPeZYTVjg2qaAwm090prdJd3q4cpeXxJ5ayMKtExU+2JZGxTtf4prCLqvWBKK
	 wghjbLqOm3gOkOKSWfs4AmLEXM6Vhd34E+XiU5FtALAgP0u6xtZ8fCY+G41oWtujgn
	 G7R5MwA1yMISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF0C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628199357.19507.8880419318899132198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9091ad85d508889360ce68f46632c13cdbfc70ae3ec41a97b4aa11614b20c6cf
Date: Sat, 03 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746281993
