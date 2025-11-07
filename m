Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119D018E1F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762547394; cv=none; b=oPx+yMI4Si+ZbGU3Z8dyKNUWXjK16Ww6U4tbd2U+oJYTYllK97MYOzYCd5W8y11lA9hHp+RztRr1PZBOVJ3dPtMcj8qVKTZEGHqG4GD7L3SVZtiPNDtYWHux5zFC8ybnWb0sUZjDtZDv9ySWiCDe2aycjjrwxrMfqoQ3tZ4IJzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762547394; c=relaxed/simple;
	bh=/mNyN4mJWXzR39HbtNWR5RK5PmIXd3qrkxeqHffdRXc=;
	h=To:Subject:From:Message-Id:Date; b=JYkxfgb66oMiQZquH6VtD4eWZLd4QADlVR6OuWU66Mxvqas8ZT1QXWYJHuGwfpGJU7jqmKBGP3XLY+ODcfyOv1JZ54HdDiWPJw907v86FNHgexK4PF9YqsM6xVumH1i3Ke0+/zKQVsQXmlQf040Flaj3Ndj6gDuL4m7+GAifpy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idHIYF55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idHIYF55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5056C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762547393;
	bh=/mNyN4mJWXzR39HbtNWR5RK5PmIXd3qrkxeqHffdRXc=;
	h=To:Subject:From:Date:From;
	b=idHIYF55FnisXDp5abCLPnVU9FZ0eRiVlZj4G4upVHAw/ezdy1kZsLA6nR/VvQkyh
	 /myLmSguvZo1XstfUpev/5rgMmJ3jWEEBnFEgYWlQn3xZgUpENUkKsHFkh3WA2WUB8
	 Lc7eFX7a2kEvFxSNmwkq8+/YmS/KQb37oan68TNqwV6Q3+PMC7raF8ubAxSnQ1nuWb
	 lzxTAfGlHQRbeuRQBLoSBQ8oyfkZ5rpytznKpGUWmfKr04DgvlltlE/jzhCNyi5HpM
	 ZJKOOUrpCpr0/UqpSrOgW7TfjgPcCnMZQmBa3rXCXiF5ZE0wVXnzkaIRX1B9kFb8UD
	 97g8RI/QWtGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1CCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254739358.24726.12271181909797963078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8e8cf11380158f5cbacb429d39ec761a897344a01d5e5bc6b2c7c502b24b03
Date: Fri, 07 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762547393
