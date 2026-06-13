Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7837E36F42B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781313394; cv=none; b=l1bdgeefgU/DHd2dVRTeRbCu9/Upg9twZnoWeCLohsyl33Mrf9MuPZg+srDe0XQYmdvQP3JBpnCrROrifOBJOxCEM+3k1m8+ZSHtHUV5HRjtsBz7WNm3Gt9nDFWky3C/Ehw9NoZw1C2KdpFcZueZNokuOR/g26TUBLT1q3hI7vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781313394; c=relaxed/simple;
	bh=Pe7mCcBWN/2IDC9xM284k0AUx1DZ2rHLEmLq+5HrnEA=;
	h=To:Subject:From:Message-Id:Date; b=CGrTNZEnHyKdW3FzkhtRZ04qf8zFu6gmQEVKMMeLIORA6zKJCLtDucuzG4vttDcAI8sEO+RqajWh4ZEinRw6WtxsHBjmqpk43CABxE4TAKD/KaXnMPbSbntg6kPV9pPkCuOe6nSOtAafX45V7hkB6whm8CGfrgzgq/JUOxjTaQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4t7DqDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4t7DqDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7023C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781313393;
	bh=Pe7mCcBWN/2IDC9xM284k0AUx1DZ2rHLEmLq+5HrnEA=;
	h=To:Subject:From:Date:From;
	b=j4t7DqDxGcRSgAPOpAWGeUYb4qXd0yRQjc40a3x6bEQvWHV6vAn1UWsavNZZtFvLt
	 7Kjjkyqw7f7aVl6grYYLVa6oQUJf6mTe4J5BLX/O2JT1wWHHkbDHH8R4ceZ9lYPy/f
	 s483/OjoTGsfU5HB431XNvZnlwOsfsI7VaFAR7aeiSx8YwWTixoUE4dBVlF3paFd81
	 QZDjdRh7UzgvyPRxMx08rR/4vOxODpfSWprVi9PpnctysfoCuSxYt6kCS5Ki1czDYK
	 fhyTSTiNTTEghT6NR0sWHEJtYnGo7QFzhsYMkCRbb141vm0rwaSzuEIdPNL/f+n/9L
	 InQoycX23bdRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7728CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131339367.8314.16847116961047974783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17782c62d5c4016ad2baec69741106bef587da13da396cc7f356d1c53503835b
Date: Sat, 13 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781313393
