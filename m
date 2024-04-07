Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10761773A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712486296; cv=none; b=MNgN5+6N0ZNyvWBw8AW3wYA4RuodJiji9Ju8o62rTbl2RyQA9Nv+h6yGbOBbm/qRSRJ28zpmtRhM9erhzbkpzOcIumxVwWweDHZtoSNWR33fv5RoEFKeLbEgBmSYCNC2eKftCbldkxiXMnYUoGAKxsrcuu/FICW1nKQsQz3AcyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712486296; c=relaxed/simple;
	bh=/YyI0keTt5A7OjoJeqli32xNUgMP3klR1hjih2s612c=;
	h=To:Subject:From:Message-Id:Date; b=Vasgqpmlv3LS1V5v/inchCijweUOjQ4xR1/zGZLyNjptKSZHWoKW5/5354yO3Es08DMndrFyxTAuQc0xiOfWJOUpXZScyrs8usvuAXpr/oNqj25NILvWeUdzgzMUboxxp44nI6ZHZWxX0nD+Lh58re8SLrDB5wgYnc+q4zg4Lqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGGfUE9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGGfUE9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750D5C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712486296;
	bh=/YyI0keTt5A7OjoJeqli32xNUgMP3klR1hjih2s612c=;
	h=To:Subject:From:Date:From;
	b=sGGfUE9MnXd0JTBvepQSwT6+8ULN2uN3vt4Pg3gsjbJ63XKCgpR6bBWq5ImnwTIDC
	 X4lhnmuwN8nYnPwhxAgrGt47XcHTsmN9wAXhqyw7XCRxUyPFqAAiFd05azVg8THTlw
	 lX8GNineFSkuOzDB5kZgzJxdMM9LpTCO3H6Ziu5JmEDugVXc7MCFObDTJvVSC1j4hu
	 nEtLxsbPCH3IyqNlSV66AJIYlAxxc1WkljpQLxrVxCymoJ3YJZmm6UOaUW97wUhuao
	 9LEiuyma3pStCO2hcqv1i8+RsT3C2gRJZpgskH8/PyKh7Hl6oa91h3e8o2iZ0xR7qK
	 qLD73EFfuKQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E48CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171248629638.16738.16313817840477395001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ab89fc6b54e861ef1b1763e2eb81b471411d3509003a3a0e1607debc2cc8ba
Date: Sun, 07 Apr 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712486296
