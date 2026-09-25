Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258DA2D3A93
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790296234; cv=none; b=rljcSaGU7pZzz0Ij86fll6qSsRCL41hjIr/6UDwhgTWSa6nFgIiHkeX7s3kIQw2goJuKo+HPfVRRvmn8aVWAgfsfNZLvrVDM4IdnPHgmlajA/ilBSvGaWCRf1v/wDozusH4RV3mWrVYctwB+AsrQwx7A6kYCVOul+LXiVVE146Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790296234; c=relaxed/simple;
	bh=/5nJhehiPY4wHkROfs0CvXE/Q0fuBEFvJmcSMlg0m7I=;
	h=To:Subject:From:Message-Id:Date; b=ATYM8z+NatYxjk7W2uGQ/lLYMKH/o37YysNaJ3TgtK8ngYQ3Crb8EupVEAAoVNwJJHp3aWngvbXrIQBbQZJH6G9WTdfBO+o0hOBh2WyufCSeGBoMki7hSLWNWoRNLd9FFy9oMq7aCvrbUwvgqDO/9QjBEoqkftt5vRrmnu3jiQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcfAXsgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcfAXsgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0080C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790296233;
	bh=/5nJhehiPY4wHkROfs0CvXE/Q0fuBEFvJmcSMlg0m7I=;
	h=To:Subject:From:Date:From;
	b=YcfAXsgbD6ZWnS/cP1Wuih9nVce+Lsiks1DugMOimjOqXN39SCqf34cUoaT16VBIo
	 TuZW8Lx8lu48FG9gpA7JJu7Tnhu38Xzb6fLNfVDuME48zulIM3Fsthb1CpOYvWl3hF
	 6nZo1QDqUyzlcrmriF2pidd7ssjGIjKmKhuNsB6zejfUgwx22/DrzGN3+D8GMtjXKV
	 +PSSgOYFXaq1qoQvmHvI0eKbMdKrDQV+6CAZNXbhRtz5syql6sGIOFw9avZcODunOR
	 kHZ/az8eIJbBnNKk87y8AwT7SJty4G2p2uviYvZhc5aDrLYhODUd9s7AL+v8hdwh6m
	 TYNEqGMmVYK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB3BC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029623369.16965.10281285493473831493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ef2437804bd64372360585e5819f6fea349172d93bbf9e70e3cde6c20851ad
Date: Fri, 25 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790296233
