Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DC731F982
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774580094; cv=none; b=WHSI4guiFCr5AnBO9CfbCF8VmlWDLurwyLiLUGI1/MJjW9xhYOSBkbX3xwoPZ8zMrA1TYaG6MyV/himwHW7PrB3vrUN0V3y3LfMf2HnSt48Ggd1B5KQKsTXLwcvrlEbqbF+rINUF0iQCAJsNjLgEvjWjZmaArn6/bOXZ7Anqzkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774580094; c=relaxed/simple;
	bh=noVqUKEmu7Wybzn/AUf78vsKXUDbrpSwbYzlkjhdyk4=;
	h=To:Subject:From:Message-Id:Date; b=Hq+4zurQhHc1MVjVJLDCxzZLdWSMCU+HHne6Olf9PvD0yca7DTtAaoJJqxKT3K4FOPxY46rYYuExcVvjt60SVNrSsb69JKz1U59hwR6YSTvxlei6+ATZIQ4vjAwcQTYxSaXljWMl6AmrRAMEJb430TwP2vXLkOFNIMX3Ogryo5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkYoz2NJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkYoz2NJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A405DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774580093;
	bh=noVqUKEmu7Wybzn/AUf78vsKXUDbrpSwbYzlkjhdyk4=;
	h=To:Subject:From:Date:From;
	b=mkYoz2NJH+YXbfcxJNmawkI8HgdTCxzHXp8NQm6ZbYXanlBBSwGfvnNgqvuIfDgws
	 eOXz8tizemKAX2tTaoVacNvyv/5UThsvV9sJm0xJtJHf3fxDLbS2pvUQHoDYWC2FVt
	 hffkaPe2ZkY4LMUyNA9H7LtFfrBaJ7BPG3Ozj5VAHirMy9dL0fKFbYSn+Vl3+aSMeD
	 wfGbARkQ42fcG/DJY881n0XDARVF1lLiEsZuUT2WSoq1fFKabNwT3XHy2Irr0ll5o5
	 RdVdwcbiLZwgwYF8ZRkN4yZkonDfIrtVZJswQovwZSYjeWCsqSwdCpO5Kmj+AFNvpL
	 cKKxMntVl980g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9127510BA421
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458009358.13741.15727010922510131225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a61470b715239723450144d5e6a9de32cf5fd08c35ce75c6adabb4cd5718908
Date: Fri, 27 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774580093
