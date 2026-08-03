Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5034C217F33
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785722434; cv=none; b=fPJpgGtU8uRpqy7+/L5kDudaT5mQJmW6J/jgkvOS0F1PV6WolZPgzRruxN2GEDPvggUTbWbKakMxSgl4CWsjhrdfa4GhPnOTrnqpkKffUQc4r0iPRgATEZccMlB5/yUnMollpUINeaccTOJ5Xp3lmg6n5iVK8hAzQ1K8GvZdWvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785722434; c=relaxed/simple;
	bh=HNOkm07ST1qijcsFgcz+sHGJpR7KBabZg4oMy/fV24Q=;
	h=To:Subject:From:Message-Id:Date; b=qpDdjJ4tI5az5MS20EcEQzCZmbiF5EGTAZ/lEHWBrisOgLDpLnc/RTA1u5HKe/QtFepVykX5f9Zn7j9R9jRd2bqgIcj3vJCQErWyXFjPjwJvNqLrJGjH3B7ztbtF0QUJCpJBdrF63EnPh8HKHaRWOFp7txvYcoP4JZMvKizXxa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IinuKP69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IinuKP69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7320C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785722433;
	bh=HNOkm07ST1qijcsFgcz+sHGJpR7KBabZg4oMy/fV24Q=;
	h=To:Subject:From:Date:From;
	b=IinuKP69D8tIm3BKpHastHoV4dvC4WVkOwVVgNXkWEBZY50JEBgADgLXn4ZfNjnnj
	 ooIQt5sdRL23ybdlhde3jdlI1GDOW1pgVzJrzBKqW8vy+7oZHc0hf3dJ0+ImpektX1
	 tQ8R4ufilTMSbcnr3TzD3b9aYYWTUX08uEpUdOjg765EmQYi+7gLqYmBuJF3q3Xeyx
	 AtDevQL8NgJNl5TlAjc+ladmRrbbWNFEjsXUAdggn0pukf+hfBprkS6+YJLMfsv3wX
	 Th/ENDR48YtXPTi1s2S/5yt8qZi0QfctPBHVpmXZC3uz5TK7wXJkISI5A9smVF8Iid
	 5Kznq889friJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE86FC55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572243368.31026.13089768169691813229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48458b60130c1e5d6398296d7d8e90de05879391748564de6d621c5f284bd731
Date: Mon, 03 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785722433
