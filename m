Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B01DFE0B
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753378794; cv=none; b=rKafeV0Y9zVj0wN1cQ5qmzoJllJaiMEDuLFLjkfhVh2F9baafPRnc+ayxlF0w9DLriwdBag2XGmzihjm5baJGhhVKFwpcu++MQccUG9iudW0l5aSDKcB57YsnePQzuHK5c+gnXSRFUWhLokjNbyb29Oy1r7dO/qHi2rPo1ZsYpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753378794; c=relaxed/simple;
	bh=CK02nzzMmTyCsS2meQd7hJINh3g7k4ze/VEPhPBP/Xk=;
	h=To:Subject:From:Message-Id:Date; b=KBlX5NYSBfAgh8Uc0mEN+7DDcOXky2y4fb7JuLeREA9p/kYY1tYVI272eLRlWmTIJLZYhNqNN7CJLB80gXI6meoVgpmgrpG9ukTaAPSrmiF5zIzOMeL5lf52wgcgMaRU/5q251hpHiEfwUMnjqVR34qhwdlzaQOUS0q5Kr0sVLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpBWpiaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpBWpiaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2242C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753378793;
	bh=CK02nzzMmTyCsS2meQd7hJINh3g7k4ze/VEPhPBP/Xk=;
	h=To:Subject:From:Date:From;
	b=mpBWpiaJ/AvWEIKqndmJ4TFAaAY6HQ1iK41xToJ3R94npHGKJLqlfINTmxhWjTnB8
	 aWYCkJ8CmXO2PyAe11d1BJbA9EKr1AyUvyPh539Q9kX2Uh0rMMhXPNp6Frs4KRvUlx
	 sli4PfQsxS2KLLtXjrYb2/PhSXJ9R6+gIwP/glTXTYrOhB/nZv4LC2W5Vg51dPeIpw
	 0pPC3P/3KDhneylHm1884XjoPlM0WfN2YB7I9eekIasjFFVcBVchwiiWRr3XnWASIE
	 TrgNmgdGtJ6kJcSIeC2h7kfXu+M7OWyQZBc8EXcvZvwDRqqTBN4eT4ugZMhZN6mOEo
	 1vxLMY0iVlChg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF84C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337879357.31858.3183198872587920891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6ad8cc5fdba431464b64c78ef7cbc66cc3baa177d25499909e4a7ebe8baa85
Date: Thu, 24 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753378793
