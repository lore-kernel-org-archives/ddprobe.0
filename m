Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4190057880
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728065754; cv=none; b=pl5YZuGzkCrK9H7JQCYq85hPQfyY3hf/YiaLRpnKwfBeEZukpIaRCDQWnCzRXQXz4y3IKddzmthGXKn8IO5OUEagnbUja7BnttUX7FOcJQS13luOAYgOyIPPqg7HyYZJXZ5vLP0E+/OuI7CUtadNbE+k9RRSfHmtzsqYgfxz2tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728065754; c=relaxed/simple;
	bh=SkI3q/wXvsJH6xmMgPIc/GyyiNdOVni8ZLp4ry7Ziqg=;
	h=To:Subject:From:Message-Id:Date; b=n7L/SZT1xEE+6ZAoqaEgi+7Y7yVb3p0DwUbQo4VzNy0ScSWxVwvSAAiMRhOyDPrqln6OV8f+ErY4OoYpZWLperTb7qD+G0GIWLsS1XjMztVQo6672pYp/QIM5PWJSwO9vkbfaGgu+qJnKiWjO75F3DjRDYt2UH27V1CYxtR/Z2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTrK/DrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTrK/DrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB5C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728065753;
	bh=SkI3q/wXvsJH6xmMgPIc/GyyiNdOVni8ZLp4ry7Ziqg=;
	h=To:Subject:From:Date:From;
	b=OTrK/DrQUsG8KCgttvjn7gtPa6yatKE41AwoacsMqb/RTQZpLOTkbfjSUn8Wx7NtU
	 HRstSuJArh7nQ2T0XzVc3LFU06ZZWLFoIVEQMrj0EefR/AHD0jXTDf/1knemLoXykJ
	 gItOj6vMqYdlzuhBq9KpVhY1UgoXe3DrNVDezRuGBm93PbnQDLTqcD/HjxjbNF0r3T
	 rys9QEEb701ixDKAGskOMgnWMa6LUlPYa+Hc4vtTmNJOxnwdZKzgnCRl+tzMTIqDbm
	 XjmfzproJGFHMNMvihltLonjtXe13eks1NDOgvdFTd1IsfzEWaI77zsY+vEoHbj8en
	 zyYnquF7XVing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8116CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806575365.2069.15845031803763222451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9733dc2bb74bba11c4900229c741298c3ca454b0bc606a19161fa675a64a173e
Date: Fri, 04 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728065753
