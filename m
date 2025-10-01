Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC241E8331
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759311595; cv=none; b=cZFxwFdhHs5bj5dUUg3uvUVEiCvRa2quwneV0faeVO2+giXrdyXM5p9coSFnE+EQxaDo2679NfgMKGwOl55VXMCj+qHrQQHplLzFj5zQd+LagR1KplOdl5XuSAFB6TCRbltrr46HEUuh+hy6AC81vVKDpXvXokjGNWOEJoSpMGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759311595; c=relaxed/simple;
	bh=uvg8+0EEWx5da7np4+N/FB4N8oztbPwkvqDZLNC6QvM=;
	h=To:Subject:From:Message-Id:Date; b=KiRlN1sL1m8rES3uuCWtV7NbD3COTKtIaliNxPPJxRIpNgAQpGIMHplPcDcjN2PVEphvo6wTlobQm2hdHcX0IG3synShzbZmahj+EHB9EIeHlN21797JhtXLaCwo/s1ohvYHQNRWgYjX8p5j59prXaTUuf3GkLAdAeo5nYZg7Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glVbZxsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glVbZxsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759311593;
	bh=uvg8+0EEWx5da7np4+N/FB4N8oztbPwkvqDZLNC6QvM=;
	h=To:Subject:From:Date:From;
	b=glVbZxsbiinKwPQbzWN6clbE/CpmjqZMyyC3LbGz2CFZEpnIAdezdOlEH4dUWDeiS
	 22ynsyNtTFAirgwzFijbhLxmkTl8qUUV4TSqUEY1ZA1i1fT6B3+nNAd8nSNoQd6W+I
	 st7TBjotkHuk0xzA1WjATvG1UUy/3y93Z3ixHe7h2PuNmZ9s2sG1Rn3eXSOMx67BQH
	 Fd8yQS03NtHOKT2epfsbBkyDr9jYoMj+lGixmG9G1GmiFaT/aRFYB5i6HP39x7Gs6Y
	 UhABbamSDR8IdP7DshFhdNC8vnP1nF88x2b7tB8/tDBR+k15jVYCA4ykP9eIKVJxIF
	 iJHajiq2OZcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931159358.17014.12544995532994395371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a39fdb0b41a50e68472a9d1a83b6675fc9a9f76b29be78aabd66e466534975
Date: Wed, 01 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759311593
