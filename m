Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366F78C9C
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752898194; cv=none; b=Jm8AjyPJnVN35E6a+ezQPCp4gmCq4hOurmZyacI3K5d+X+9WltwIuQUWcWSaTkMo4K50TBYjPPa/Jo9BDpsavh6c+QIjish9xH92Wjf2Bt7nFgVr+76/k00sb0Zy1yXb2hd+YnmPCegxC5jtzyG2klAJ9ADt7+MFW/+sw3eRxNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752898194; c=relaxed/simple;
	bh=5UCG2OCZh+eWeO19oQL/eNjnshgOpbqHTDvGJmGOn+w=;
	h=To:Subject:From:Message-Id:Date; b=ZaS0b16jNtFqcRUrPvAsJTfXUozab1v37LmyDdHH9D+dieQmkPgk8BAMF5J+TylMvVUJbChvLcluehwAFzUuhHkH/KOs3JwMrACTOHrpNhLID+Pu+fqo4vmCA+w+jjsZncf/vkQrYE2IQOhfFc1x2tJmlas77Z5FIXKrrrD6/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBO6KRTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBO6KRTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EBEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752898193;
	bh=5UCG2OCZh+eWeO19oQL/eNjnshgOpbqHTDvGJmGOn+w=;
	h=To:Subject:From:Date:From;
	b=pBO6KRTqWciPOj/N4TMarFt/KhctLs3ovvdzs8kEZI0/V2o/8U9ls9jlYJ19qAPZx
	 NbTfY8IUxU69N4pPjhEL07Z7/LNOovCle/Xr+w6v9RCnWbYtbIHdzqTYuxKC90VqBf
	 mkwWqUmP9SCHcJnc2GJAfSSFW9VFRSwboyjhkbSa8HLWDF9sYRqLL6uHusnA+QuWJL
	 QSRf14NSE00vog2Q2RNIctDC4EOK+iI7tkj/+n+VyM8NEM2vjXIH4jw5Y7ocjR86HX
	 WStSiAWokzMDFWDEAU8K2VPeYfnCjcRaV/t1LYJ9GXLiGlm49tcT90O14sSkLudBQW
	 yXm0J+4n3jxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5FC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289819358.10972.9075278176940075828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2fa5fba5c94e8f77d400c1a35961d706f0ac1ba8197225815c30ed57ba6797
Date: Sat, 19 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752898193
