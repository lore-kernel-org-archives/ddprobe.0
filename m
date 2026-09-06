Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF939E164
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788687634; cv=none; b=o+RP2zI6yOvVfVA4rXijkmcEfpT4y4ko9VmPSDzjO1q/bIVDl4JbqfiUCBLjkzq7KcrY09niF4M6rrDVJgwu12KrnZV7vWEX8uVQFF6W/j5c4R/ouFPKlapnJeiK0Fwiw1gXdllLr5ZDWH/6dVwoccZ7K4U5EeeUcmVyqHhuqOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788687634; c=relaxed/simple;
	bh=IS7sM8y9NR5ISrumhi39ASDEeTl7qR0FhqAl2NuLCiU=;
	h=To:Subject:From:Message-Id:Date; b=ZwFkXsxu4s74WdRgC06Cq6ZPe1pZZB1EzviyoUtFDq9HX7qfYcoObR98EaH22njgoGFlmGvRxN4/G+P24X7ohabF6FgkYtBG9D/yDEnOP5m1nxBHh0rs01+loGLHP8nzJwHp6VHCsiLOADX67rps+ll3j4KGFQyk+rGzAtRwf3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/T9nz8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/T9nz8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788687633;
	bh=IS7sM8y9NR5ISrumhi39ASDEeTl7qR0FhqAl2NuLCiU=;
	h=To:Subject:From:Date:From;
	b=c/T9nz8gas5OlbamOMx05BHIPplfaVUM9NxKNX1WjYN8qr8WNH5kx9VYEvNlRpXzt
	 zWSY/IhtUnM8oMzCMylE0F63IasIV08AKd7fgoMtusdtQy0Mpm/IcQz4xLPGLf8vPl
	 gF5BuWGfriY+87yi3lybdZuAViylCZKwUUzZgGwjyzQu8QXAfM/NWqrhdgfTHPcam7
	 q61l5OtrQy+xRuAkWwmAEnSeyF8ZiH37cKmhRhBXmM5jgacrdFZo9E2lwJBYOcV3M1
	 Md+ZKWa7dn0LqOpRG2O37gItlS75ObH89nCB7UPdXAMH+5rlb4o43nQ3Q7+57m5Usy
	 AboBU3t040Kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDA1C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868763368.25108.1215879671339266310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d4279624627abe460a1e37cf6949a8b8535c4bea5fee01b6186816b4e2c153
Date: Sun, 06 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788687633
