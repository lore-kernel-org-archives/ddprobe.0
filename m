Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164DD2C1B4
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709167097; cv=none; b=SjHNMwGit9taCNrKP2bxAzWNDY+m9U6NhjM8LCxyW4LY0KsRCmfiuz3kJP3pjvpi0Qfay4TaekHXPqlN9DiYLfPBOEvTefirlaYfB/nhvW7dxzabnL7B0G1HUNHPWdc1vemhS49RtqsbI+GZt02ZXmsDt1ZjBn4r8G+LvcbJ9eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709167097; c=relaxed/simple;
	bh=N9/+NoG0GydVd9xERDpJCdkevtwSKbGz4rjCV7Aeb9U=;
	h=To:Subject:From:Message-Id:Date; b=lihJR5oagnNo3t7GEWE85QpVf3Ogo7qGFCciL+J5/5GBvryuqycE1mnGPul1M5ijQt+ZA4w4pbc7nbu23hyR7e9h447Sbe/ZM2TvyEQbZey9fkySZCeCUZjx/Bgb4GPyBLMmsO6w+5PmnruceyJy7A2N4yHqa0S9jvTXYLDZdvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIIyZnjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIIyZnjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C05DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709167096;
	bh=N9/+NoG0GydVd9xERDpJCdkevtwSKbGz4rjCV7Aeb9U=;
	h=To:Subject:From:Date:From;
	b=kIIyZnjmyF+BLnLoEnkp6WromB0bGvuBrPPLohMAQ8hYVfcMHHk5T7aFvcRUtVCvw
	 llT6lH0Bk/DzRoYYqSSzRmP+BNU1fukcYBHs/c6xz9Jk3w+XCSJQ9J8nSL6IYMdc2x
	 kJbMZ9pD7Jzgt0tVMgUXW2ulJVariYiA7WHtwtZKe0QEt1I4B3qRZ5/Qd3jeC5I8BP
	 +nRTHfgJp33Yu7sOkLEXzp5OHTRTk6n9bhV1wKO8LIAL2vmuukBHfXgb+XKyKchYXj
	 MvQ18q8MECOgXWoZJk0+S9vnCy96x7pF5+i3QX85hGC+VzY3bV6VWtSfrmuXr48MPa
	 QCSP+1S7RqgKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65161C5475B
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170916709638.8109.4765674412394231539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16fdfc1c123af2e8dc2aa0b0246edce463635cd43f746e7c92bff52069e08d45
Date: Thu, 29 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709167096
