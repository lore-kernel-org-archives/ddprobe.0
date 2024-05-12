Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D273D68
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715546543; cv=none; b=A2E+fo+qZ5Rdaqb9IC9GRL6YooaQanxx6Dg1QbUs+d63kJQeBCnhsUBQGsHoA+0Ttayf3Y6WMr3e0/og0YFfbYkpFzsVdKpK4A3FgFIuo9cYrjm90/2X+w35jUObaBZ9q/XLiTPb6InHZ0o25d2ooY2z8GBtE74/IOsZy3COLzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715546543; c=relaxed/simple;
	bh=tmvXCaV+JKEy7CLjsb7O6Q9OjNqc8g4v1qjS9ZxAcj4=;
	h=To:Subject:From:Message-Id:Date; b=mYGAqp+ppt6phxYkPnsaV6CaTu/8rTU27a8w/KWAM8AbHCXHxOiCktaTieK6EwgE4D7IQ421wS2wgXURXLBNHa7+HnvORkHBUv3fC34bHTsoK2txZDl37bvxpAHZSp1SAFaF3in8U41YqNRkp2RNpxHCcHmjynS82XEunXU6YSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzsHA9pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzsHA9pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89CEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715546542;
	bh=tmvXCaV+JKEy7CLjsb7O6Q9OjNqc8g4v1qjS9ZxAcj4=;
	h=To:Subject:From:Date:From;
	b=XzsHA9pne+oS/a9v39NaQftYaIZB183NKBnI5gxZf82q3CJXw/Z/25Pk5OP1GitSO
	 bapHZ8WjTBZRsWPZuyZSFddNe3PqX4w2wbIK0TYzhxTCDFLNDDdOgZnUDjEE6uQlUr
	 S1W7Vjx3o8UKtJbTZtnX0AyBlGdSUvZSc/NZaBPUwTpKR6M6oT1JYSeUS/o9TNNkIV
	 /F3y1TgNNjmaDBszTMD2X4UzwmUsN9apSVZ1vUohYtM8BQlosECeapIjgYrdG/wJdX
	 DKuCe1yQPYs9Pk6lbMagFpPHkQG1BHhIlWF3R2Cy69wNz5zS32Wt5fdhklEQ7rrCoT
	 hSMvSOeiHnMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D30C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554654279.15243.3187290224687608832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab20c76de993a49881dcafc9a3c69be29c87d9ab6be04e358fc0ed866e93ed0
Date: Sun, 12 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715546542
