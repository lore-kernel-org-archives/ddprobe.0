Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041A242E01D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773132294; cv=none; b=lkT1aympiSXGRHERiwzduSGK/8Wvh62ZBAjyGPLIlSi2bgWiNlRXMdDpxbvFK7p5r7W+bIEojLj7QZR4co5H6c92dN7d75lYtWiu2WpnNOrCs6xtxGq+wqslH7zQkiJ7q1KsnK23XyK4XVrT4EW8IhSXsOkY+JN1NGlhosiiMHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773132294; c=relaxed/simple;
	bh=pC5e/rPNneF5Z0Fu6akPn8fViLY0MNQPotBnXcPahBg=;
	h=To:Subject:From:Message-Id:Date; b=frAbOMa9KkashviLB18m04SmAurZGbFNrIcbDwWaRLAQ7DKvgIf7CNTqwbilnZagu/mdnbaXExso2i/Uq0wgwMR/xwMI/JgkV6BLtDfc1kRJhPJed2rYlgDgruOixqLgIQ8YOTvDU5JmjZJjdm4ykpGAKdH2FP7ZWvRsMn33j/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYEOFKFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYEOFKFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA1FC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132293;
	bh=pC5e/rPNneF5Z0Fu6akPn8fViLY0MNQPotBnXcPahBg=;
	h=To:Subject:From:Date:From;
	b=RYEOFKFNKrYaAAkmpvZOYSM3CLK5BGhi1KtUdv8NsoojqjtaHxjK2kuI1ZWA1GEXW
	 SBB7dNtPkwLsvvkyBWgKx3IDRafJKiS78DHRp7Z2pVhvNgiag2/0whRsDYjou9hQpH
	 v1OixHDQ6guvXbzTk1GPfTlBuJZojpud+eQnT+APUC1y6wUZQeesEG9lZtNaodLUBq
	 dheMaXV4vta3bgL8KE1C5NPpBrI9sKQbHtVllFS91CW8ybVj07m2Tjyvr208CFNV2m
	 y2qN31XzvjnoDIP0DRL47LxceFLvOfM/yfsPgcQxaRbYI2sOXy64PhVmnO2/h/SNMk
	 UIa8WkxnBJL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F826FCC9DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313229358.15905.9742946497084999523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d943b8c3978b92a7220070584cea633ff56908df4f973072635aeb586e1cbd
Date: Tue, 10 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773132293
