Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F083C6A46
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775120134; cv=none; b=hb4LfExnalyqoHNQ+Cer9lKVO1zH1vARkdhkxYKOOoUN1QtQN+BfSWRNKUj8c6zzJwQpsEDnXJ2fw/IcSsIGStpsstgJS/eVlF+28u6vX1XFdxVRpmC79OSFuKy8Fc3PwP/MkUvrLzwAegESn6rnsBCOyPR6oDR3QYKn54i8AW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775120134; c=relaxed/simple;
	bh=d2OxsOpUAdyMH6UT/DtgEbHhEgeSAa77iV/meTDEOak=;
	h=To:Subject:From:Message-Id:Date; b=FrQgMCAoMVJ2LtS031btQwy9gMhOGdGf00oiWbPLWZsyQDenHOhC9a4hKub4bgYf2ksOOIWgclfTPHXSEoY2oyhW9b9vGUB4fVkH/yCkaye9kOeM+Aa4fB3ajkVgsu/xHwYzinJrWpKCQm2iheJIgL0Md+C1p24vZseZX8plEYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdLbtFEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdLbtFEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B8AC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775120133;
	bh=d2OxsOpUAdyMH6UT/DtgEbHhEgeSAa77iV/meTDEOak=;
	h=To:Subject:From:Date:From;
	b=jdLbtFElj/9Z+/IP4e4ONjIvY8ks0cP8mD5rzvbx20KWRhh+qsc/g95qqbaWxnkV4
	 2U35R+GzOFh/2Nu4OA7952DU/3QMct/uKPgYVy8XB++6CrZbUWOY0V8mK7B2LS2Zfz
	 y5gtrKHDFx7PnwduXdQZPzxEuJxUJh3U+yN1hc+fTwK60SOI8SVuh74CSGagCbY2qs
	 eVSKIjNORwTfRhxXNzVmJvnL2aMgXR1YahjaNAmlPAGTZJ6kY0aeYU4G/r8tqPKgZx
	 uYjA7jtJI5qo3JLe7MgwadtYY8AEd5iK8PP2Sqi6TqUDbIY2WuAELoGMXTX4tkFtuj
	 5sJfYHwvg7xdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB89BCC6B37
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512013369.2025.8381924285555833444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c719524d1321125453cbd3e92c13bc37a16f9ed18818b43f31c59998d36ab5
Date: Thu, 02 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775120133
