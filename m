Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243463D47B2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784891434; cv=none; b=XLziv5Nn1RHUrzQpSIvgln3lVYD4yacLwYU2uOK7/6QmT8JW2A29QdfU9gJyx5OivQy2gBVtcY/YaqT1wpGqTyO/1eNm4xiEu09nUEjF/cwM9afxDmqKVBeAkcbS3e+n+xsxdTQ1WGc7JHDXujtJE0NoLf19EnbYXr22K59G3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784891434; c=relaxed/simple;
	bh=ROUoXG/YoqJLHqk+Eembu9Bl8SJqUimDqZ+ClFkMSFE=;
	h=To:Subject:From:Message-Id:Date; b=MneyHCh9D2wL28+LR1iZRwGfF9TcWmMypO7IRkgJRMVJw+yi5xsCGvvAro0BQOjQBdtipFNiPa9kT0gK5D5NWCreELBphnazKlfPwUCMwqq9qY8CuSXBJ81ke1UKar0D12omOir8gmpNvz2r9Ha7Uz5NvyPo8cn0FNUpShnpYr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riG1zxhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riG1zxhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD268C4FF5A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784891433;
	bh=ROUoXG/YoqJLHqk+Eembu9Bl8SJqUimDqZ+ClFkMSFE=;
	h=To:Subject:From:Date:From;
	b=riG1zxhKFwj+vKwsBzKxgRWd2job6NxgfJ4wADk1vsMogcgH84rT6nusqkeutaYyB
	 MogTuQJj8DI9YOJtJV8X08mgZ/y5JfrWqa8HnFlt+jtTP4AYeuSrxauAO11RxOiFVh
	 TLrlXgo8utpjRqyy0AsxRNqVTw5icbDWB/nC/Q0mvXQyRxJDnw8lV/5V6fmb1eo5Lm
	 uLdWD2i/rMREBb+Ua3hAEZDUqpQHOi96DLaXXb2EEzapvyiYotyJJyNPMffccFEjof
	 Bz/Oxxrgsq9hbI2s84HhU+c4tHQEtqg2ubvD/n7Kirddw3V9hDsDqh/LeNDztRiQRt
	 9wDd471SyFUxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84C9C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489143368.10224.12883170436738735595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d2561748aaca07c7211af18111c58181a0397b96b5677ad962c38fd829ae9c
Date: Fri, 24 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784891433
