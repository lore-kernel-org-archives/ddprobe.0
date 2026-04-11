Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A294883F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775951254; cv=none; b=G5SyozWvdqGukEtByaJ9Yn6Xpi9bmlYy0NsVaKbFIyAXdoOI60nqvztUOTZ+fNlwmNWehqoc7Ug3/7cEy7qHR/HP6Sbjacj56MDg71SG4nrQB37cEhcQ0FVgWKTZpeHsPLl0bsKDZWIXPL6crdx3gn/L8PAwJk2uZhKSBScqiQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775951254; c=relaxed/simple;
	bh=e+1VUBbmo8HleubPCIq6DqgP3ZUaqOLafu9xVXNV/9w=;
	h=To:Subject:From:Message-Id:Date; b=S9kJ3rb2Ys1gPiO1FMnzHEO2IRxi3LJVrWIhwEi0v4fVZkd+cFU2WyjGDegsSFcKccEvN1zZRTrCYuphSvUomfRsu653UkR3tL2GFPO1gWkVb66pPJRlPhQ5zZZjroD3LEvy6s8Y0sYtlSkT3w+5zdsYkjdq6dWlRDZ25R+QKTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjUSvNEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjUSvNEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12B8C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775951253;
	bh=e+1VUBbmo8HleubPCIq6DqgP3ZUaqOLafu9xVXNV/9w=;
	h=To:Subject:From:Date:From;
	b=qjUSvNEaPWrVQkMX4cRPRVcU0KMpWDFwD8kliy97TfY0OuOGtXJrWRzuYY27oq8xD
	 v8K+0X34pududVcKC4sluiRhwJ7T3ewY+uJOFSXbeldfAh9cp2xJQIrG7zRpvoIt6q
	 oovphb0cCqD9TKiHUgmhPWJwh8UBk1DLPk/hF27h3PA8XzKNC1MU1TA0VIX0JtO45M
	 9LcCDsKS4e1Im8OAmACQtJl78Kmu8l8bNmyINOXWKFymptm9KSxYRbzKcydJnfgFmb
	 iXXxC7VSTUbTJ/VT0h66kw509vSsEIpo/xghOoUknMpTHUR/lgSHi1jy8FkkKyBGqW
	 7YJSBK8UKtQzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD01BF3ED6A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595125368.18027.2394514839570964406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fde7b1094882ce6ff04747be764484c2835ddd5b4bdb9fadb37b1422d58478
Date: Sat, 11 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775951253
