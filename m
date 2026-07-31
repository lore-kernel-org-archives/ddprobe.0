Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC8423EAA6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785465034; cv=none; b=KTqja46yYLbBZeBjPQcj7LMYbBfqAt4Z6m/+PSNLly9LGjnU2oCz6jwd8llJyI0QInlXQZf9eHQ2t0STGOZLDf6iIU0vEyB8o0uWnsUqtccNiA6u6XAtznOSB6V42oXN2IFlE5oV0bA8ziYaHeXYXg9nLF8QTVqLIA42oOTgLY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785465034; c=relaxed/simple;
	bh=DUYCS5ziZAnhMCAKkn6XWhTIhqbny3YQmb9BEHxan1A=;
	h=To:Subject:From:Message-Id:Date; b=U21r58gvC5cwATqNvQ4BvkbbFduLvYTDz+avdX+kBMbODiZyjbDuDXzN8mOYWNz3XstfURW1UedqVaO4gfeCfLjzqF0TUWdBqxq5rsQ3HT15WpgKYJ3cTWePzgkBSYpNXS1KycSo/MCjMSiM8PsMe/wkmhYxzHArUYp1cODoz2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=higeg0GV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="higeg0GV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9945C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785465033;
	bh=DUYCS5ziZAnhMCAKkn6XWhTIhqbny3YQmb9BEHxan1A=;
	h=To:Subject:From:Date:From;
	b=higeg0GVEA1rANeYRCgWs9zIwZhoM8mHBv4OwsI+XwrH7f7iOpAiiSwPU6ZSeK9Qw
	 gQ0kQH1Hf2V91FZUSBejBkDyEA++b6K69iSLcAr/A5rl6tdKqlLOp68oovSBDjrsdg
	 1J64g7aO66iQqDhLi9ATceEVPCyJA9PfZOivlYFuhqrcTmYdTvkr8HqFBGhkGYSJnb
	 pZmfYCDtna1sS6YR0DCRDx5hVpQ1/TqbykT6eQE4srb+/7ZnVyC6QF32MyKbjkBS8l
	 XazHKNBAe3BQntmkBUnucR13mkniB3AiJf4e5OMaQyDEnGMbzRU4JaWMs3J+fLa8eW
	 27u/Wndi4eTlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A882EC55162
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546503368.24925.13808858844779416636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0283ead37d0a5f8fa62dd3d1e4adc656387c4bdbf4fd97af991ee954c43c1760
Date: Fri, 31 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785465033
