Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D917B23EA90
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769182433; cv=none; b=YLVVVkewPog3Dcn3uPtZcS5XsY3k/dsKtyYYj4MouHwhrw7QaNoU8uXWmyV96gg3bwuCL8IayrjVsUWYAko3sfB+sEYWza6GzfFy0SdBZUYsARabH81dq5U96hgxw0V5vShaiTsDNQ1jKEHQ1YfX3iqGoNS3sTrTrT2wmEdp4bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769182433; c=relaxed/simple;
	bh=GzNXYhT/QSH5j85QHMzAh3grR36GuytraD+ZsiZklJs=;
	h=To:Subject:From:Message-Id:Date; b=qFh/oP9tFpBeB6H2PFqNCNnocuvodibWai3owcjNqxK1H7nqQJK2HZHoPZGhq0oJkV7bQ3Swi3C0Hz1D/TqGepS+jxl2ZfkxyaCUNoDPgqwrxcakkFMQz5n3QwdTiLz3pKUYSchIR2dMXTnSsQKkQ0d9Y5YEmlz8uv3oaIVn9sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NURKrPNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NURKrPNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769182433;
	bh=GzNXYhT/QSH5j85QHMzAh3grR36GuytraD+ZsiZklJs=;
	h=To:Subject:From:Date:From;
	b=NURKrPNSEFOd4Vf4q16W5Z4+RGVdJpY+ay2tT8s0Nhfm7wfzePUOxdRrI2DcF7HJP
	 8kst0Mr3WlX7SNzjWqpBGSNQUBrBlxm8P83kwCe4dU22IGTwuibaJ/J19tIUhnYfFU
	 TbBBKz98CrzY+SdleT3JkaWHxD3xtwQ3k/p33RclDN/EdXLO4T0XPk9YGj/UK+S3I9
	 lzIELRAW4EOBriWC0rmmSyQdvkRtbzKSZ9sDYRdElwgpZ9w+zRpCku7XpzR+yFepzp
	 Kf2VG9LqeWnywxuB/7wujVxsTfGAjcK+RudeoK7ISRV4RIYAxcfhDBGjyypBMQZVrY
	 3QEa/iDbbuKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F746D74EE7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918243357.5201.9672289598024912966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93957ced9a11262656ee8b7bb4f2d5c29a041289bd40bf9d219f81b85ed9fca
Date: Fri, 23 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769182433
