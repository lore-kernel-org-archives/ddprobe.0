Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204DC33F3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753590594; cv=none; b=usAHFkPztH9WkAirrl6OhzY9ZenuOIJE0e2U3Mp5k5x86JPaUoPpgkN1uAOTOBh1VCY3XY8pEQpArv8oa25IePmekfYLtX/voeiaKBFrwaWcZ9cOGiARzB0EKtH2CVx/BNs/aJeKO71Wy6dM/FJk3MDnId37yx7nB+ElLj7RLK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753590594; c=relaxed/simple;
	bh=lItJ9ZXQq9KPmbbo9bhENZjqqjtsMKc2nv6DUYCx+7o=;
	h=To:Subject:From:Message-Id:Date; b=UjDA4IyTyqu7lcyna/+bPS6ZooOPEysC1PacnjJj9Gm+8kuHcX9TZ2XrBFgCbxj7POQGo2DDj5awd9XQBrLk/JYgICpttiSJQBGqg9Yjy0PdwH1nqtFDzRrVGbU4uhwa/Hw4vC4nkgQQ8E58QGCU4WlPJ0aD0ulSMj4VLzFiuM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjC9hw5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjC9hw5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753590593;
	bh=lItJ9ZXQq9KPmbbo9bhENZjqqjtsMKc2nv6DUYCx+7o=;
	h=To:Subject:From:Date:From;
	b=hjC9hw5BtaKcOZnVRZdOdj+hlLMy678KoL8jEVcqwQT9a+gbnQqMavyo2Sm2+0lMI
	 Rg7WXYuEhg3KvMkDPz5o/5L5tUtibW13+i43ljqs/w4ba5KOu0yFjggGyP4DHGrlug
	 jzQmAiqHR4BWCtygY1b0aJXWEJWuODfqnWOd1101Vt5IZYVcpvwzdN286dj01jrPwm
	 tKjzllHmeUNSiasrFG1cgPR76ZryklPj6JT8gxuqoJwBWmIcYJZkTOLQQy0+u3BFxc
	 kECAS5nuqYV+KVU7mdLBpP744VcFDTJZViq8HH2bxvVyRRQbKRPTY36OYdHxwXA9ww
	 QsHz2KbywUO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB05C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359059358.9194.8086325758345333115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b336022dbacdd91747eb8642adb4e3631632203710757959616a5af39cce339
Date: Sun, 27 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753590593
