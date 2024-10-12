Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2403B8C1F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728698154; cv=none; b=pzatf75v6WZptAnbbRVX4lA4Jo17L0vZ9PDkL2U6SL0yhvS27nYsyqnrapYLRAPVrhGraf7DNb2bD2JdxmYjJiGyjbecnaiur6RHRbrddUac1m/ZBqzyBBgGVjyzKIUG6rsUJs+TdIubNwqzE4VDfWt+2ocB/6dLY0hqZiF5d0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728698154; c=relaxed/simple;
	bh=dL/jDGQOmKsYpeak4+feC6LhbRUROP01qphELslrs1E=;
	h=To:Subject:From:Message-Id:Date; b=gCuvQsouvVSQBuzEw2GeupFqmz/7WyYs6PNVAYELIBfX12Zbuu+jkzi+99JmU3eac2EOsQ+6JyBaJvXWAsPQuMI2yVb7LGOLkuA/A7pCcRJiudu2/1ObwrpXRUvvlgvK6TS3URBKUJ1mTQT6/zFQQIsIP4WzToohWyfI6n9ERmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/1n/M2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/1n/M2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1775C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728698153;
	bh=dL/jDGQOmKsYpeak4+feC6LhbRUROP01qphELslrs1E=;
	h=To:Subject:From:Date:From;
	b=F/1n/M2vaqfjGUDpmAgjT2OMTM6YzgoRNJW9H/NBnCBmjP76hu6yB3XKmmhceDxTO
	 cIGp7c/XbT6uOBZRYnW6jTPOsvMzEFJthDySWREMUjk4D4RNbuMFrZ9J+U2DOx6wf6
	 Iu9t2Xz7pFZt0VE6nq1vbTpQwd5XQ5qu6/L70fANK5dKoZhXItU+mWAfmg+4nqn0wW
	 d9NjL5obXyXQeGqaNsTqWLjlCYdi0U2YKO3NDqQ8KmrY74HfBdl6P7z8d7nAWJy8gE
	 evAPgWWPR9z4Lz5rnu7ZuPzI0B4M3eL+VkKbhAswFGKtl27qhMgt+c9C8pAzEb9JPC
	 MhoSkiQMPsn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C868D1A42C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869815357.7022.14243555419466790233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9946898bd46f2be2a94fe8490f89171cc45615422b8b1f87dd745aa4ce608430
Date: Sat, 12 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728698153
