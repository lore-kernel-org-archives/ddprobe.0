Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFBA381AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719644663; cv=none; b=TZ3tN2F8herOZUgU4ccCClHRAdjQscHgf5kCjYMnQNYWrZK/rfJYTO3Xk9nLXO4FUaQud160XuYdthjBO/9xIP0pmx8kiCepa2Comy55tS+4kGiw0BAPpxrsqfjU6zHQ+YwSvQVWNMp3Vhm943eF6F1gahJ9GqNTK2ZE8qfUeWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719644663; c=relaxed/simple;
	bh=q1KlulfDJoAuHjukrn0ZFRKLLmpJhFD//vhRGxiGe8Y=;
	h=To:Subject:From:Message-Id:Date; b=tnHiRq8YTPmd25E8YvyA5FEuOmqWrCglDQvKgrg0ny4PZsNb4wMvy+vSaFpSSmDGSwzyqC3tivy1/FjqOxdRdufn49yZdalR8xthAfV0+khIqfuqriujXmRRkc+UfmfaVsHOo6437SOzdzoFs+QSKQ2iYTzEJGxk0LQMiI1AtQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp9Wn/B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp9Wn/B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 208DFC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719644663;
	bh=q1KlulfDJoAuHjukrn0ZFRKLLmpJhFD//vhRGxiGe8Y=;
	h=To:Subject:From:Date:From;
	b=kp9Wn/B/GQ/gKOf9/xFww1//QKBgTbML7WGQ/BJaPSDeMHzy1p7hKrGqitCMw0l0D
	 8NPsS8A2WKYUPExjsVv75ju7O8OrpPEND5QgNlQwJUzz4o0w2BcFEZLLy7ADVUUS5+
	 GTwlhuMOpvqEAmo0gRlX9EmbjYqEt1gpPz5oK4QIwm7cHeB8Dt6TRjtSJu0nILdVll
	 VFp/fc2fFl6WBwGd2Uh7Qp6uOxbc7g3/dXN8QksGbh1ii9OVqULz4xjXWwEa4Pqlcc
	 OW0ec1BBxz/t/dF1j4Zg2bwGUF8QhgvklBdMfUkYO2ZhjNnYyVO6VbONe8PHXowx+K
	 MoYzk2HLhEZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 034F9C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964466292.11948.16644307707366366053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1498b862365a77520b0c2674cb59fb871e1d18b69b2191f9771086f28de21240
Date: Sat, 29 Jun 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719644662
