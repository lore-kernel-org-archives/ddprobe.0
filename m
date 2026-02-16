Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2BF292B54
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771211694; cv=none; b=Jn3PEWF9hzHAoq2B1sjIuh+PkdBg+ux9NjR8AQXhwz3b2U2XBFIRTD0neh7i3Wmq+4N7MHRuTd8uhuvfH3UiTozOho+0+4u2ulGxVwROYi8/gohNVD6QtJhGeQ9S3QhtpsY5O1TJje7u/wur2gz3G3ypvMjcElIkwkaeD2inYnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771211694; c=relaxed/simple;
	bh=c7VrXTb8J9HQuSVv4cct88BI3QRjS4I+9baMlRz7E34=;
	h=To:Subject:From:Message-Id:Date; b=DyCEVX/Rhi3UlmBrbpiGOG2lSnalXxIZvLYKsr41JR2RBDDew1Zt1jhdykXMqnPqv1HLxJONree86RUj+Y2kz2FLPae40ERobKe9HG4mSsv4iAyFJTYHv1AvmYbpdOvPMJwLGSXZ6ocrO6hQfILA+2i2vl71yr+Pm3tubJHgylI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRTVBCA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRTVBCA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A933AC19423
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771211693;
	bh=c7VrXTb8J9HQuSVv4cct88BI3QRjS4I+9baMlRz7E34=;
	h=To:Subject:From:Date:From;
	b=LRTVBCA8gxqx13iBe9qjtIl5mul+eRC3ZjDcUW302iGHq+xSswqExJO8IXVn513Dc
	 dQJtMbnnw/7bRUojHxWZUpgGOe359corkGyrhGKXmyJu7Z/z9QB5HCfeLhHXc0Uxof
	 Xc0+9EjKTNkhVg38/XqX3XK7tDLpgT2plyXWBKJ6+WsBJBHSS+qdQgs/68AlrJAWZv
	 4rYmVxXz9tuVCdaqdMfDh2zp+61fLndkCoqY1zGnQzvzruiUM5RGKgXZw/MVxx5kXc
	 T7NOkKtMQvKZPYiRXVZqtk/h1+aiEWTJEKqNQD1MegR1RLJJeCjbeWUfPQBLfWUAXU
	 I39Xd8FEo1lbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93700E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121169359.23358.16418275271744090523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435131d2635f3cf3ab9ce77d287d453e3780024fb414cc99fc1cdc0ddf7afe3b
Date: Mon, 16 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771211693
