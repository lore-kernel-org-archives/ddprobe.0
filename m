Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B1413B586
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715375543; cv=none; b=erDkwuaZ1w+VUAE81epA9J0jju4MfVKUWB2xvSLTBVgMKfO468L0yRDW/+DJR7uei8UayWn4OOTx+gpYD8ioqL6Ih7D21bv0O7FbEI69zj7RloJw3PeKSHRk01ibEbqePt4avoJeeF2RmZI8ht8yi/rka7weMoj9q7Xh0QO/H+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715375543; c=relaxed/simple;
	bh=7Ta0wOHrKa/L4GaR6Y60WU7PFS2RxUC50uM+y0lOWrk=;
	h=To:Subject:From:Message-Id:Date; b=t2fdwTdCKSb2OZmJVE4F51jepcetVnQ5pFmv9mfehsTiDjHvuEceWzniWIN3O1CMbEzHFZY9SNh7YeiRDQdTYWdQC0bud8SvbCqbgdRgaVA7PY525K/9xHAqU5dCy0XIJCV5rMMkJERblv4zQ5pZFVKD5Cd5IlF7SN+AlRBFO4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiD9uXfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiD9uXfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC40EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715375542;
	bh=7Ta0wOHrKa/L4GaR6Y60WU7PFS2RxUC50uM+y0lOWrk=;
	h=To:Subject:From:Date:From;
	b=iiD9uXfc3UWhVNj4bpJaJGbQri5LtQJ7j+dm8I9wEVvAWIro25LXXXDfqUaKcNudH
	 6hYuOrjXANLbXiul2OaPnAfaErRLJwjIdedHYFHf4x0rz9x3FnWFY6odxpNljsOzkd
	 Nc2SeIy7mcxs9CbFBHav7qiM4fsR/ZCwO0RYbuppaHV9XV2ir70BY/s3I6Xe2KHbfU
	 HM0kNWg2TFU+5sTTTDERzH+nyZHztoLWb0cwXFEJATGsJBj+dILCGu8hR2xcrWBK0q
	 y2wkxx+M0MGMO53IQtfrURGbPLt2NKzc4FHRisCS9vj28NIXw97yLtjtzEwMH9Lvy1
	 NykPnT1qhGe0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCF0C25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537554276.9490.6655796724833129732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b20a61f31d70b3eb00a48a1f205dc21bb8c967e0dccca5aa96d3024c346922a
Date: Fri, 10 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715375542
