Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C5821D3E8
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767291234; cv=none; b=OIZijdtFKkDgZWURgSohuiGF8PW3fEB9vzVakEO9sUGbUjFUtpC69Ysq43VfVFcChoFRasV0FmZUqAZMB44BP3oiZK3IlK7bafk4cvgO1LkO2wnJQM5LODuOlOe36PQLkcmQbWQzN8nOn+hoASBPqyYvHQt90JY7qocATIyz4ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767291234; c=relaxed/simple;
	bh=TYcBjOnQLPloyIbsaRCE5O1RxXDgDv42xoTSOSmqzWU=;
	h=To:Subject:From:Message-Id:Date; b=CAJh5uxrz7su6floL4VtM3Pn8VtFLvibAKl4zlEXKwF7nFh/68XfS7FfinLKIct97Ut8ObpgDY7YIGkcqk+Gmy5bw28CM7V7iqgLDs8+JYHKo8LMHzDzMFy2zTtIjlfkJaFMNk+2NZV92rDUy8S+jc2Ev8+gO76r6b8uJmmPFWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDtimpGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDtimpGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767291233;
	bh=TYcBjOnQLPloyIbsaRCE5O1RxXDgDv42xoTSOSmqzWU=;
	h=To:Subject:From:Date:From;
	b=eDtimpGsCnnAMorQpflK750tjZruQzxblbiRgoNB6EBZdWsYFY0vm5Orf4BqFDfNq
	 agNRG2a39TfAW7XaPRIo/gdDPHBAB8PJrq19OZsFHNK8sRThwNxYaZynZBIRWibYVC
	 J+cos8IoBsBLcO2ZohiYB9iXPAQ9H8qIPIvF7L8gwPzPk9fKYBBOIJNCgU7MQJ9Nk4
	 jQaLkQhjLz8Fnw5hPM7wHqTW2zyvnFiuM+0GKjZWEGqCURddLOksM+QNKHTRfpJajk
	 8oZ0vO3T5mMLW+etl4teoe0O5AcgfkgaQ+ceuJ5KubunUcD6JxPB8ub36gDPf2NSbn
	 c22nm5lEietww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DDEED632
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729123357.27485.5784074324695064148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7796f0f0fbf2cc99fd5b8912837c4d6c7521c50bd08c44ab2ae4ba3b0b957f36
Date: Thu, 01 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767291233
