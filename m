Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8A01DA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757181594; cv=none; b=JuJEWjYYe9m0/sKTfAFxJpST/mcg6vM3tfyXW7hJHdz9t/9FMQlGLqZXyZczC4AG5i1mYfIG9W2vk0/RIg0tfS78y7svyoAtxLlSAHnhwMl5R35Okb7mq8QnxU5vTBJ+nxAN+FWXgoxyNlUH/OAwCWOGemfzsYDaRg4B+J7KZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757181594; c=relaxed/simple;
	bh=W7vy9W7lz8rutBdVv7FtdvAG7ZL/g+zr9+9YDXlAp04=;
	h=To:Subject:From:Message-Id:Date; b=gngnU22yjGPYhr/hWlmU8SfikDo+HTogIDBJkeKWQl5apQlXq81bGqLxuImHTN+oSCwNUzwo4l59OxBU+EK0ACcvJLmb2z5HAxVaA1WX3wO2ck5gHftcwr/rDcxtxF8r0rcXL6ucB06aNULlgG5DGHFgacngaoMVPjyySssX4Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukepVAri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukepVAri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757181593;
	bh=W7vy9W7lz8rutBdVv7FtdvAG7ZL/g+zr9+9YDXlAp04=;
	h=To:Subject:From:Date:From;
	b=ukepVAriy90qEta5S0OeFP8CulavjNo9DkgJkH9JrjfESDtLQ02Rynn/QkhWrdfdb
	 gI2TXQbRart5xxN/HpgNXvKhi+aG774yIjNz2eLzSnXv59Pc/t/xxSSFwR7RVqxm+A
	 o7xAaxCHXnqOQlHE2asHnbwk3pPSqeJHar5lS9HHuKrJT81NHDoVpphjZ35KalvQFZ
	 UnYqozlUFLg7uQAYKtG0hNRy6XBHAlHfNX8+F6fuwqp0/W4hvZf6Uo8PwXNkh3OtU8
	 11SNJvDHxlVNRDiYBjSqcDuuka/F0CIC9tQxR6q61mrxNYJJw9tdJUQyTEgnR6dMU1
	 yD8GW2DRmbr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F268CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718159357.8958.16587635938978103970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e4d1d24eede2a2405bd15314b853b33671a127a47e6286b0429fbc42bd95b8
Date: Sat, 06 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757181593
