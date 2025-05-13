Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD4978F4B
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747108194; cv=none; b=QeYFh0HqOaa8Uzok4xN16+XiDa7+9KbmBwip+tEHr5ZRmL/AFi1SwVWDa4LxpOLo5rU/i/NjK0pdt/gqIlTLSSBuyx7QPdnmD3yDwEGAcY9pjnkxYUo6Rk7UwzG0T4q04YOy+XvwwlyWDqRBPlJ6BKsqOiUc5naWbB4VJ8NLvyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747108194; c=relaxed/simple;
	bh=ml+gd+ZqeKN1iKb77P5DUgDFQfOIubGxpV2xSYqC1ac=;
	h=To:Subject:From:Message-Id:Date; b=Mv+C+i545EOTmSPYjLB8VrcEnqA1/RbYIflHuGXCrjETQB0CiyQmkX3j7gBplDKYM/HprJrseatoriRqO3U8DyZwaQ0fzYjfn3SEK94BuuaMvtl05KAwgzzjGBkHO5gq0Wk7DO/cPpGmbvjO0bNla+F8utrdag6TFAFbxFO6Q6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRaWu0xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRaWu0xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747108193;
	bh=ml+gd+ZqeKN1iKb77P5DUgDFQfOIubGxpV2xSYqC1ac=;
	h=To:Subject:From:Date:From;
	b=lRaWu0xwsxVI9mErqiMotixLCN26hcVtz9Trt92QAr9UCiJtZ/4+KzntgYV6c55fr
	 +18B9/1IkPc+Siwa/CIljXiJCbt36rR79XtoIxtzhSh7qt1eJjsBJs+6YFQG66vWK7
	 A2T9j/6t59BBuLgQ/jmiFtCcBc0kmd3UyT10cdO3gx9GNgqiET8JtO1HBp0M/9dkrD
	 36oLeUpmQ6CrBREJZ8+zrKYUysw5802u90lY+uCLkoEgwlJ/Buvp1rNUiqKMoUn5OD
	 tw8wq44JobDToYuBv2KZyHJdQozwI8z1o/05uDGS5RWZcSGj5aS6SIK8xCSNfcvd+/
	 oV0Z6ykmOpNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92850C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710819357.16460.5949508278873900151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868d931f777895b01d4648f1bca3a6aa06d1c0076ef27ac50ddf47a8ce25b8c3
Date: Tue, 13 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747108193
