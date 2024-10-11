Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0301E20CCE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728644154; cv=none; b=FSaqQxZSlR/dagZE3CQUgC8o4ZJkzlTBqQTp3dagu1tGZ9V9t/q2K4XaHIhkjwxiju95yrQZzAnBcdZLWUgWOe/4dISoHoVjQsFIf4QmOWLokpa6DQ6saP7kr3jmb0VkpF7s4hEyRqCovHvovKD3Wkvnto2hxbrND3xTvkZGIB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728644154; c=relaxed/simple;
	bh=s5PP4lJJ3iibWOflZNUyOnl3ZOfF1pw3zyuEjAb27w0=;
	h=To:Subject:From:Message-Id:Date; b=FbvhdaE840QY5yEvJEH7q42/3GHErNAx569Q8TQq1bPTJf3riGTCRfHvgDTY2BaGdz9N1wZA/HbMMQZRtfUYN4Zs31tlnORyxmfetlS/pfbndPA5RPruE+JqeGX88zQ3xRi3ev9DB3HnjLOn2eYe9T3QItIrWkoRHBIQqVptWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smOEmYfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smOEmYfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E01BC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728644153;
	bh=s5PP4lJJ3iibWOflZNUyOnl3ZOfF1pw3zyuEjAb27w0=;
	h=To:Subject:From:Date:From;
	b=smOEmYfyKHEgl5SbzjHl0DnRC54zWfkYi8q8eyI8xjYPeao4WYFKz08sF2Ma7X4wd
	 MfTAp+taQbFCU53e8Pul8eRO0+FlPo2LQFTBeRTWBBsBZIGz02kB5Tp5ciGGbcW0rc
	 hKbInwM5TnYmw6UC4TSvr1swtmeJ35+btY6nWJKxlYH3exsGKx7R/hlXBfCvcbRx3d
	 F7jyFn+DuUyKN72EhzS59X7rl1bS98obHE3P9cScWB6ieqGzSDEPvIEZa1zZJNm8id
	 iEXxuRQMIylsWMUiUHGghSA1KTNJMf9Y7RfPHvw2Js72LL4D4bPwv3EpZUQZ7D8hYz
	 HzPLx0j0pEdug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99ACFD31D
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864415357.2572.7544087808224901119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6aa413be18cfbc46dbc95361b8719298b76b6d1e7e102853b14d0c006eca5c
Date: Fri, 11 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728644153
