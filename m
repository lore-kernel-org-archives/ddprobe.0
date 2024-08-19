Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C213C81B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724060754; cv=none; b=r8lQdcsfegPV5FAuudc5H3XLg8UffR50pJGYUSp5PDka7ko8o1znbONT+aS0rN4v4e6YCJC3FXkhLN05aev0WIvEBw1Mo2KqY0fWIl6c4kUcJzz6IW8MYgOGKXj4Cj7tsaJk7kE08x1WR8DZnfapSjRSzyOLX20bH3Udp7uxidQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724060754; c=relaxed/simple;
	bh=JzfiVBE79nsGkTFRH+Sd/5j2xqlKAqEUqTC1kEmm+iY=;
	h=To:Subject:From:Message-Id:Date; b=ZQ/gHm1MGH4xNs+409SMuVm1kok5iEmt2VzGP1YkG/Y2qM8Y3n81Kv4y60rXqpxKK9jrup3kteaUpPwUcx66DmMQ3gzNSDHQfaRkEZOnN78Eg+yvpCAhZGK9D2hmciwv/ub0AujZCmXgxBgnr2Q1wZ2VjkOij7jjf5u5iAqwmU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o41VD9RU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o41VD9RU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDB5C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724060753;
	bh=JzfiVBE79nsGkTFRH+Sd/5j2xqlKAqEUqTC1kEmm+iY=;
	h=To:Subject:From:Date:From;
	b=o41VD9RUuCB37N1K9p3qCInlkJ6+poUy4ZQE90pQhR1iL7pRzxkSYVz8cPL0tugoS
	 dyyUMj4kPRV4degddz9swt3IUznlQTsMa7jshWT2ipQ4PevgO53/P3wXzc83NFbb0H
	 PKJ0+cL6lTTgn4gQyDTaDwo/6zfEeticH6cS96BxE9ZwjIV4bI+q9h2nsrTbVXJkD1
	 3jf5YDfQ+t8f36CN5PhXBlb1QDc5RelGFcsP/0Efw87LofCfEgcrPPQ3echRc8awT4
	 4bgnvwfUkrki3t8+CVOABkfE7svJxxtF0YJ3OvOregAkyEcAapIaahQSjkJInOAfUz
	 RS8h1RzqVpKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C961C5320E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406075363.10087.5230840823300639624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82959e5808c49d22ddf626b8435c57b8553f2532ba74dac59f3649550dd18393
Date: Mon, 19 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724060753
