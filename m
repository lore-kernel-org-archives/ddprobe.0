Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268BA3C092
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722171354; cv=none; b=q7OKNpfgpuy//MyrkvAUHql/ZAwsAJ4ZVDwst0DOGaAoNcd3H8eyhsryL1In8Y8ErmJHc6LI8DZTQf+/UQm5xK2bSnw0Nc8XRwvqqZWk9g+qz0wGLOgKbJj9vEhJH9PHy93t51pZwcNaJ3H25l5+TyDG7fX1lN6xHdgeR4E4Meg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722171354; c=relaxed/simple;
	bh=0BFHsIZ3mSuYqhjV5Coo+mJg692jXLV4CiMiJqaiMZo=;
	h=To:Subject:From:Message-Id:Date; b=q1f+zQ6G7PX4SCrJ9EX6oep8sj8Xz3LKSzrLHrmJUeCa9ep38z6ks+Bbx+NKHlG8T8I5Juz+80+VKI+6jXVO62f4u3udytHwtdgdvgJBYROZVCbPtxfiHwX0lJ42/MQYES0HcFRaINOqTqHcge0QV8FJbhwXzrDKX0LXAgolwtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBpQXPEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBpQXPEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722171353;
	bh=0BFHsIZ3mSuYqhjV5Coo+mJg692jXLV4CiMiJqaiMZo=;
	h=To:Subject:From:Date:From;
	b=LBpQXPEdGlnt2chlzRv8+5HuoAvJ43kMMPmQtQa7RP11ZXJZl62TJSjM91W2B0/UB
	 jgfEVzpyneW017J2e0qYbj2ChXUPNgGxuxFm0bMS00caThDE1sKp5biI2qcl2pQaBC
	 jmIwkcVw0R7wU2BanYa4zX16vYp0eLkTEThnlWk2acK2GgJJWfN2HPuhYRZMNUneRu
	 tuTWALN7UcR+3yxp2Grgp5TSZ+TxbVxkRz08fCWwlKigyrfv14BC7RltmhYVH2DgyK
	 ZcJt8kzlQK187xdWD3unGQKwWMOYwVS4I6gNZyH9Cp0fpy/U1nYy+XXUTiulDqx722
	 a0A7n7ekF1tjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93980C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172217135358.22219.1256255252457171614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7215b3ce8a69fc68906e3a44f35837a646a9ff3abc2481710c103bcf8aa4d7
Date: Sun, 28 Jul 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722171353
