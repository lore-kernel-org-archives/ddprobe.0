Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2AF376BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782166594; cv=none; b=jwsO6Na6jnwzChlbcqs1FjzxNvsJjC1G+0hzDWGSv0weD6gJNonwijUSRKnhZzFA24i89MlJOyTsfFdsq7BOWKXrpNM3SplirWv8MQ/lG+iev8gP61B8plzTSWwXjzi99YgBegy5CnuoduVlccWhr6E3v61Gz8QAtTF1XMXNOwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782166594; c=relaxed/simple;
	bh=hnRjQpM5Iui8zVew/AV57YLBVcOZH/talqLsjR5UQPw=;
	h=To:Subject:From:Message-Id:Date; b=A9MLAf46qQrHNMHG7J5USuhFatvUjEgm0GiUaE6fDiZ7NeJZixIwwJirA9WNTHm+nQPXL/HqPknU8CNLXRfiJm8q0TljbOHIZ/rHovbHbHAMPzRUn1tq/wlPOhN+UbuWsd2RCj37Fmv0pdMxOtIpdQopFVE3qUjcd9zc68XHgxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPLlBg3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPLlBg3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FD8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782166593;
	bh=hnRjQpM5Iui8zVew/AV57YLBVcOZH/talqLsjR5UQPw=;
	h=To:Subject:From:Date:From;
	b=vPLlBg3NTgowZGOoR/F8Hme5x169mSQELpY1LZtmZEPKVs9IcUGAtCJMj48PfgMS+
	 LGOgsPt0sqzYmbWHRvsoXx2lSOxHkNiYxVVHaT9wcQaPp1SgGWlg4gq4xWn/+Mk/yk
	 iCYFHufxFbm8IJSl4ZeyOMxjLFuMt8oVGGHQkXQKY5Q6l28k8ITPShyj4I/8htvHIA
	 gTCVdaO3iPszWEW/aV/33IvCnHrTzLIYQ4o+1vK/0FgZifeJtxrajb9Gss2LsX+7rP
	 NIq221BVVQPC4KKc3neyNquIf5ttga0gsf/GU9ZmhPW+e0IfyfPghYnIz7F7HtU8uy
	 3ujMIW1o7y3ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA750CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216659368.2424.3636214683881706504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c2a78e9027b26d5a4ca275cc8e81bc3362d35aa85d6cc9b48a49d6cd610628
Date: Mon, 22 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782166593
