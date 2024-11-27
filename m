Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341DB2036F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732743354; cv=none; b=C0U+fYTSi2lONcxouHNzitqhWyfgxr3hXMeiYdwZapbC3s26jE2ygsP4VG3xpt1y52C/7ogb3VIN+Gnhi3bdA5hxmt+AEhkY7uc6J/RXw7aze9PSvrRiHVMzDyH4pvIlc0M8I2lG+J0Ss6T0uW4pGa4CDMvCzF21MY8zV/OTA+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732743354; c=relaxed/simple;
	bh=4kz3bjOJseNIEWdQ8H7qBK71Il0ufyHoYbCVdcO0kxk=;
	h=To:Subject:From:Message-Id:Date; b=tuZR5g/6rlTjS+SgRUaG5RIhxYSndAuC1b5zwTqpqfzbtYtAGIluxzsb0labQteyby+0OrtGs8HC/p9b3oKVYuDRV7XWUO6kf7GI6gcUqkGirPUuGlFgvA1e/wwTaENut8CmTkcTaGc+fYYxhP5KxBpp8Uwd1X/aOWV+dP9XoLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt64ALg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt64ALg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E7FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732743353;
	bh=4kz3bjOJseNIEWdQ8H7qBK71Il0ufyHoYbCVdcO0kxk=;
	h=To:Subject:From:Date:From;
	b=gt64ALg1y9Wi1/9JzEVHRB+oCvSW8tEpiSQLLLhDrViXIWY6SEb51fQrkfqAwe3jq
	 3pX+cqG6SufAEldnEDSVvHn60Nk+JN1YHVplkkkmoFcHEDM47+t+jc7x/a6WVk+H2/
	 d5N215tTF6YY6Wvl9Z9L7Lu1dvfyPAq9Ls8+MZWnRsWmRX+eJtFW5X4AVKiSbwBDR8
	 BfOXIbM2WZngJsec759sq/QRKtMs4NWnmQmCBwbHDLUQSU7vHiox0L2rmCd5DLgTFs
	 igyeCYoJ2DVCfBy7LbxS9jh5mtktgepz5G7gJorJFA/badNh3FOjnxa601ksf6UXyl
	 PvfujzIH7YCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E849D6D23C
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274335363.7726.5809405256232346246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f686cd1092cfe66efa670c05aa781224a86b07c413b1067003408dbdad24f78
Date: Wed, 27 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732743353
