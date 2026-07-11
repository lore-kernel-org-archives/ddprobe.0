Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B26125B0B3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783807714; cv=none; b=Ts14/h3PDbz2trAq7wMqOfA9l6iDVNcsVrEpI7ljTyHtFgaRUGjEGwT/h5KT28XS2NkwEyLmwUQ5gVOvu14VnUW2bgleucLbjQNYxj39PllqQBA9L0oNtAew8AyiHV9dRRpaBRqj93xSxZN9f6ac/Spl8EQ9IddtjNhA5+u6agY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783807714; c=relaxed/simple;
	bh=np1X5VKQqsSJSTqu7P3+TbZroeyNrHDIWVYYxgHlAls=;
	h=To:Subject:From:Message-Id:Date; b=kd/X1xcVDbnv8EDHLprA2Qg79/MpLTtHQcm8juPl6li199WY6+QDqJUAdjDrEtMVxAXpOkZMhG6L6CR0JN0dMi3bOMo4kye9gv78HycpiJpdmnjbR1KM478Uwikc+HkHq5OIq2kmQ1h7/Iw3rKUmI4O7lLkQ6Fa860A8pym190Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxkXQj3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxkXQj3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDDFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783807713;
	bh=np1X5VKQqsSJSTqu7P3+TbZroeyNrHDIWVYYxgHlAls=;
	h=To:Subject:From:Date:From;
	b=DxkXQj3hXf1enffwDb55+HIOZE92onftpvLOzxkUAuAcxxAuXvErD3GCbUFuHiFvY
	 OCkLiNs7kyVIDLnel1Z8NgYhspxgAXKQ3Hj91O40OrQHFdpvKrEHmeCzdgGRu9MO0c
	 yakcQcSMRNP2GaZqxlEHoZu5Obm5D+jzMbEI3+zzKbF2dhV25lY9KRxOqlFNKTn393
	 Z+Lrv9UDoFs7Rlib2ktNM5jsz1r2oW1SeAhUjl9E2vMrGyoNa1sNaPwA7v9IKBVCkq
	 Zm+w96dqaU1RjT5Hs7DHwpkWY3zvB2OZbd/ochhlC0Wbj0Ln27Magj36u8GN/0PUh6
	 tHoj3+tZNgj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EFDC44506
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380771368.14472.12375142142282401959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a6cdefd1145afe7097972bc90ee8d2a462cd31f3d4ab9c2792bf44ef941295
Date: Sat, 11 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783807713
