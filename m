Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E491292B2E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775330734; cv=none; b=cJRFGl3R+hC3wo60lCVFF114D84ktSQWVXcxqqIz3sEbagsLcMWQwRI3iv+laML3aDfAhxBaUBV/g5FBN2jxO4DBmO/ZXrSTUUrOdHNOaTqpxhBaSk7HwUtRUz8yE6fWqBc0g7vgPmsannUMMuuALm69tHRh2nidIN3jCUckxHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775330734; c=relaxed/simple;
	bh=BmR5LcS6mB2jCN0bWICmjj8WM4NBc1Eun4PqejWZ62Y=;
	h=To:Subject:From:Message-Id:Date; b=XY1tBPAzcNlEPNZmeaVgq3nghv+o31EXSk3NWNCt3zaKTQsNCWDRvXt2E8R44FcGadZisNtf8D5qSyFSAYpBPqkDiB+vkOwWAirt0M2gQZ87hNI1YASrl6vbUefY9T+Fznt4HmZ/vw4hebklqK1KRt2vDLWqlzGKxw/SWhr/PMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjXtZAJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjXtZAJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBFBC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775330733;
	bh=BmR5LcS6mB2jCN0bWICmjj8WM4NBc1Eun4PqejWZ62Y=;
	h=To:Subject:From:Date:From;
	b=qjXtZAJ1yelrLhvwV6vbLIXp5aH1PhAtup+QxagboXQMbxwPfeDSOp4GmrEX/SZ2u
	 f3kDLPPVRp0Z3IqU3ko0OAQTb6jMLMZmKBKE+gLGHqElOIiT7+t6gNi5qP0uMb447/
	 DRmp8el2LK6BRyfZd4zao3gSrCAmxXqRF9KtewZIzTZr/piLDXKNKyMW5EZztfyTk8
	 K1MlB/N3XFBSMi0R9aRwk8DR6X0rOsp9ZKy0p8w0a6Jb/5mr+WiNLx0m3FbuRKYFse
	 z2Mbhb2qf0lSVYlfoEe1MRH730jf0hlUZtmJ7PYNPx+yrSjigxNLpr/vPzH39Oqbqy
	 01twAOe217TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8600E63FF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533073370.24506.7817784344106693423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90acf62bae94e6c68c75b4206704bb7bc4afe21538edf3282751a4eb6cc57977
Date: Sat, 04 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775330733
