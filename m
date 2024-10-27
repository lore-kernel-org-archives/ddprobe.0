Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D09E1CD2C
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730048755; cv=none; b=rUNsG2uBddvFHvnxk3hOiponEJZhW4d74AntN3ozuedMP4R+yVbScI+fUm8mp3RjZQlM+PbK02VtzYd1Jh98HORhkqjsqeewHFcuE8qPN30wYtsnfmHvMktOZVLMKWI81Qpo7HkMpY7MrIYPA+NzKkm4qoawgiEEHcxB2sesv1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730048755; c=relaxed/simple;
	bh=QjHwvB0feChnscptigbkB+YvxeRPplcfCBF2IcKWRQg=;
	h=To:Subject:From:Message-Id:Date; b=kAefLFC4aK3kNfLuacQsSgp3YU+Zl8x6ANvAQdyN4b0UFq8wy5MxQizQx5xIhTc5+iwidpWE6QcWB+ogkRLf2/WaqKjU3ucZWI9k0jmD+0BcMfK+KsHkXhHxPjb8zc7QF1DVp/O6+d2XoKiUKSZ2nCrqUz8aUrhBbz86ClTJdLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrK6+QnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrK6+QnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF29EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730048754;
	bh=QjHwvB0feChnscptigbkB+YvxeRPplcfCBF2IcKWRQg=;
	h=To:Subject:From:Date:From;
	b=WrK6+QnRrkSI5bHDH86ahNw2y+CnFg9yO+b4uYTPI7GLs19DnRRKS/ZqrgwZ+ZvKw
	 lqmCCIZ47R4UcjuJSVw9ax8rgxsXhOdWYX0Sw6/KdaJlqdMZFng8ncq5ekMGkDVCw/
	 qfKpBt9YFjoXnEz+sdBehxBYdGAp/WZrXm+tJlT4a3FiCi2OahddIHWSOIMKSASBGv
	 uSus7A2ToPSIAQeTb9FJb/GO0iPrb6GLvhcPrz3vStf60GQimfU/To2hvaxywrC6f9
	 yoj70+cJbPiAntMMlx2KfyyBnMg7I4XV6J6iWKtjDM3KT+INHpW3OyeHkpF4WI5ok3
	 8Vb+xF9qYkxsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97545D13573
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004875358.21982.4566169827790901446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1cb8fcdc639ba6e0672bc4a3492bfee52e8abdb04c51d3cb8757121045cedf
Date: Sun, 27 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730048753
