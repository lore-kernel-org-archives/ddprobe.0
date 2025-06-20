Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA526FA4F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408794; cv=none; b=k98Kv39wPd2UF4jtMg+nywTd08jcNtFkahFxwUveEwFIDdAc97E3qAHU+Mx0v6WR3/7b9mpV4uJ9EKJKgUGQ4ZR21Xb7YBQ8Eljj/ycBhJiYNoYxTiHUK8YM/n/A9s7ULj+yBv9gtLoZ82KbuQ360mtHeCpo+S4lkiJKbfOoiZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408794; c=relaxed/simple;
	bh=e3p3I0ynjKYvMHlMNTPn3qEPI6wSVlJ95iqQq24Rn7w=;
	h=To:Subject:From:Message-Id:Date; b=lYnyqnjtfb1PCYrRrYC0aTxoZAhU6wlvRa7AqERF731VADRxM42pknaz1fD0AqBUwP9rMSAM4FqIkYDUz/BNc0bKURoOKpk8BRRIPsqtBExCGyk0dSer+5w9H3RcMqGfyoz+jCP/dBZfzyYjWaBZ7/azpwSUV5aGz4JKzsp28ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUltV/+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUltV/+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750408793;
	bh=e3p3I0ynjKYvMHlMNTPn3qEPI6wSVlJ95iqQq24Rn7w=;
	h=To:Subject:From:Date:From;
	b=uUltV/+R2AFYwl6y0xRerwzdtwcnsM/WjnRCCOqR+8JLW4rucQQDQrud+XAMST/RT
	 UwudF+ipgsxUdFbfjoZX+mObV3xXEYOvwHMSfipnPyV8ednl5a1yhwXaLnal3WJ9Mo
	 52ExOAv3PkqXL/7HxhMpvTTEvrBIDfUZ6W0l+GBbc7eSzbcfrcFzf/zOazdW6ISfcf
	 0SU4ECc0qcKmmSDp1a5SmitqwGv+hbE6DEYytdITiGT8lHn/dtoM0MYogwsGio/tgx
	 fTirg48nj4JFuQofa8IjxNrt2vcs0Ohcie+ofUH5mz/cdKlOU2Y7CfItjwiTjNt36e
	 IUyHteHmr29sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F4C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040879358.2321.4988094449548345984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb49b1f008c26ef34f5b15ee3dac902ffae521225fd3e0ef9496e15beb1e744a
Date: Fri, 20 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750408793
