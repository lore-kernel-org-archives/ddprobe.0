Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7CD175A6B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775008494; cv=none; b=mne/+KlN5ljr2pEu1hhvnEWMaITQmWHIzPlztQZ5xac/ENkpAuQQOee1ldRM3vtpU28XdbI9gDjlhDjqeLseJdYMrcbwyV/SiIOc/d55qLy3+T+HQG/vR6dDPsMuxhc2LDXfuT5D6opOv5iNM0if55GzJ8Kcc7XbFOcnKiiIvmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775008494; c=relaxed/simple;
	bh=tIjSVNn+ytgnVsFOkBEyOBrP45Uhi42QPCBvk8SGmjw=;
	h=To:Subject:From:Message-Id:Date; b=AmTPJ7+/4dMYOkid6LmmsRNlzeaSCkXj1bWaStKU9xTSFpRFQb/O55o7Aw7LAnuOTq878pkTG0Gg66cV/ULDiD41IYsu1OPxr9EDCMoJrZ4+iDYoG+2R0cBRVMq1PcfKsMXmbA5DcROEdKbn7dl0dKvgaLsQBhCdiBcDrCVy/bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYluVZZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYluVZZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F40C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775008493;
	bh=tIjSVNn+ytgnVsFOkBEyOBrP45Uhi42QPCBvk8SGmjw=;
	h=To:Subject:From:Date:From;
	b=rYluVZZ+hdcGyVdlRYEmeKhFhS0Rzrn2mVMsrGXjsJfN6N3bAMAOUWTOIkUaHPA9d
	 sT5iiC5fITe6wgzdMFann7+F4X4i5zOs41cjDIuSMxTbmA9PELkb0T9NtQbCsQfI76
	 Wg9UNsOc9KOdp5S1vCLoVe2N5BgeB+aMfJ23yc3aPyKccYKXIJTWNKHaEV7TkLgX1Q
	 J70gqaZJgFII9uwoSOjbia09qyH6EZ8H8HLutqMut7jbMEvCCCMIP6Nbcp92X9XOpO
	 ufbQfU1IYVxNDnTvOfDwdMAxsu6YeMrc5QszkflxzsADn94VKBsZRE66SALJL+UHtq
	 vs1/naHy0XBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2210F92EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500849359.19984.519218009891653049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6271b5ca6b49892fedd5dc8bab1228af69f6f929c7a5cca3849f58397af8a138
Date: Wed, 01 Apr 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775008493
