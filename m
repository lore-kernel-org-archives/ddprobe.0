Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB3635292C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768421636; cv=none; b=QQ5ARAmcA3USO4nzRh+ewlsZ7ebOxzsL1J9NOVa+egiZXObxJUtpCDeF8RbZ6kXKOepzcmARtfk7lV8iHFeVx4mOv3qv/G7Jy97X2DYTzO2ElmoRr6EE5XBKmRDHRaHkr+TZ8A3e93+31CZBkshU73sXkmiBjfLdto4wt+wgw0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768421636; c=relaxed/simple;
	bh=RqsHlnYK6SV73KRXBPS/rnlrpeEi0uQRD+L/mfh4bWs=;
	h=To:Subject:From:Message-Id:Date; b=V05yFK2OxWnnGf+GZ29tE1mx+JG8++HjUZwhDfPo/e1UQK7UagHJNPW/6tBhMPMM84+b/6km6i20qOgkxIDirHpwFrRagossOiwvIUDv9yhuMnYvGPUSZE8fq8T3hQUTU4MhDRodkT1lNl9TRA9kWZdvTN2ZwruFfUAR+2dK2pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9TUY85h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9TUY85h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C43C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768421633;
	bh=RqsHlnYK6SV73KRXBPS/rnlrpeEi0uQRD+L/mfh4bWs=;
	h=To:Subject:From:Date:From;
	b=g9TUY85h6tMq0UQPL4qcwv6snlY6IS1yOjlQicabb9CzbNp4yAPq4QAY8v9arPbKy
	 IUtAy0pyb8ZSSViUx8Ft2ou4py4NKGJSSDA9hUZ3X0bfocOsZi+unmMqavqDYGWoNX
	 1SlhkL9NI5aJ6Im8fRnfihrr8tFe4GNglEE5dDXO7zUMPidHmyRVYBVI196rkscPT0
	 wA4SVnQFDBHzmftXjaZrzSiDDnbFqzokz/V6bFjEadBkzazkVJLgnzNGfx80MJVbsH
	 qxyFvDnXoKY33Sgo+G/ny3KIqeeZiqLHEillVzmDAY8MgcIfBCWN1dD/I3k/nxsQh9
	 zIhVzaomxK5+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B52D39011
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842163359.9815.8723660355429910624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a8b9c5534db707eeabb484073659d8b1ec99cfcdff9b26e38edb38b182e970
Date: Wed, 14 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768421633
