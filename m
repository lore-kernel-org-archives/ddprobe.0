Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52811488748
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791576634; cv=none; b=evUYA0Bkcdecp1iu4ByBbXyh/KCFfNfuKrj7c29QOBjrJw8f8S9EONiJl6aW1c/xWNAm7ifgr3MD68BoXixv8lhJXbHl+ZvcRzWLERWgdexckdY+cF+xuKXowqed/nQ8F98G+0wYa8UcLbeVVcki7jWGkyyAgO3oOJkMWEodSRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791576634; c=relaxed/simple;
	bh=UsHvTbwNZO7JTJTbCrhov16SdBC6P8lAUifhZgXhlVw=;
	h=To:Subject:From:Message-Id:Date; b=iWDnGBHCKvd5P4bQZIOJ5OEntKfWqPT2xge+YrNYzDLr7PdtKIFZhdKmXUlJx529nRjdFglkwjhZmIp383K3+5GHuq1uCie3Q1S3sgR2lkSBKaBsv2Mguvr1OFBLgNRlQesbcZcNu7xD0yNrXdEy00/A8PdO+LCPDR1h8qB4Qag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utU6A+q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utU6A+q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D524CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791576633;
	bh=UsHvTbwNZO7JTJTbCrhov16SdBC6P8lAUifhZgXhlVw=;
	h=To:Subject:From:Date:From;
	b=utU6A+q6v4zLWpjHw52SHCuzia2nyAekCKr87o8HeYKizkGPsVtyvTH6pq3zy2ek5
	 coTB9vAIpYpYTuUf1KZDVp6UlTqm1ZBzy2M/idoF8HmYyvsdkIQjOg87L8r/urv0e+
	 lXylnE0llccWWyFb8IqUOciMwK3YYpe2yiEs8S8ewhCtbwGyqLD+HIivBDf73MEcBG
	 dIznbCi5+jYqeZdQi9sOTTKFO4nX8H+iQxiVnxL+jcznTplerNgl8KeIMTSgAEeyIG
	 ysOz7Yzwn9poUhnQFbtIkPrfZCx0ZkgCEPWbx8OfzuhyXQVFcd52kulLgBs8jqm7n6
	 5kDUjDdwI0zbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A2CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157663369.22018.1069761508459133995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286847abf3db4d16cae60160f9593adbfbcba821b639d80615b6e3b9a4a51ebe
Date: Fri, 09 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791576633
