Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F951D5CFB
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772984694; cv=none; b=kxzOa8NjYFCmVhHEKJhbfgKgJM9TYULMZE5GXuxmatoysR0JQmKljAWJ9vqD7MgP9pmx7rfe3f31SgW09y0Hy967Q10kRyYXskMJVdhdjte4Iq36zVjgWEeHinSU0w+9K2ciPCbh9qRGDw0aKZqChXcK1ODPmXernfRnDH5HLDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772984694; c=relaxed/simple;
	bh=9T5hv8jnWPY/HwOPd0Az2jg/QIm39r0zUlWE3CngZew=;
	h=To:Subject:From:Message-Id:Date; b=L4Wvk+lQJo0/Oa9rsrEIs6WpsJkG4KB6VxvOGh6oNY+VlZa3vbvQfJsfoypcRWSA6HJFO1j/FslimTRScw209B3VMrZMncPmDdXr5eMqBHFk+dzr9yp5AQVEnBxyCBpanTyB26ej0COyGGScu9YmqNc2HRzZJ2vRe8sfrWCSGx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk9KK/RT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pk9KK/RT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E95C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772984693;
	bh=9T5hv8jnWPY/HwOPd0Az2jg/QIm39r0zUlWE3CngZew=;
	h=To:Subject:From:Date:From;
	b=Pk9KK/RTlBMfX1hc2eMIXEhWtacJf1OM/P89Q0NqfUkLKUOf3VD+X2eYwLh3zPHHG
	 xxV2OEK4iA8auFNMcto8pv6juPeaSRtoSveex7GsrRoj9AJfRKpLxOll83ND34d9ol
	 eAFq9gGxPliPD5tqC42rhLpyRpYOJ/sOA1hZIusEnd28n57FhmhpI26tQNuLpv+4iJ
	 34m8IZqDaMbKJ2GWt0UNvbdt4Jx2q6Yay/7gj3GkTmSNvyZLvBlYPbQWd2y7f14Yty
	 R6GQ7liDgHrXQjrSCcEl3MhWbwvhkSdFAdIYe9YtkMA6RM7fiCvuFk5eIBmxj792ri
	 ARIwunLQ7TLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DFCEA852A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298469363.19358.9808362807160633017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e5d861f0cbc9c0d6da349c28f8174c62d6114b556a6a3db7bed7c564ccc750
Date: Sun, 08 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772984693
