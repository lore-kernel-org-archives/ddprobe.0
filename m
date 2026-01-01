Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53E16DEB1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767297234; cv=none; b=W1V8X29wT3VTYJ1DoTe3kwl6d3l1dBVjHWMbO7dXDaG1NakmcdJk4cuw8CrDA7bl2uS8a7vXIHy4TVv5e/9TEeQgG8fkdmeKqqiUB4AKKv+NV0rFfjeP4fZtUp3OMERmC8wjgFzLyvHuocTXK3Ot+F3Z9Uei6pClqQEeFgia+W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767297234; c=relaxed/simple;
	bh=AtaKgf1FV29fMziFzUdGJ0W5ZaHauW+niOqXcj8Qg8M=;
	h=To:Subject:From:Message-Id:Date; b=j45GYIsoCOzpmo0zCvRRONJUTbjXESokJDuVVhPi07IkEA0VnXi3jOGuJZojHnDMhC1RPIBFH/zXus2D+0/4zIh8Wqrq4yOzxA4Rox4ONZV1PKmSYNIfarR+9Ez12XJNAqpzu7XixRgyuvGeVpk8aCliiTMKzn2lYa5Ct9hwj9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTCZt5hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTCZt5hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A716FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767297233;
	bh=AtaKgf1FV29fMziFzUdGJ0W5ZaHauW+niOqXcj8Qg8M=;
	h=To:Subject:From:Date:From;
	b=bTCZt5hiKTmyfiASFemLhIlw8mn2fme/AgYholZA/CkmQAH6UXm7CtwOHnjZj7oSz
	 +KlwQ2NHQT90/LkpF0UbJXx8aYhyhL1K0zeRBY7pJ/UCB10RE3WPgFqgQGVwj+lTqb
	 whtBKbWlWwcvHaORrFsKyTILxgBzt2tvq1LWyQVarOooujtUPfqlbrT0jJd9YBRVdS
	 qsqzh+nVtnGgTFEgOmT/kniuu4yHjnqd9RRRyAXRMG/0GrP3qNtubhrrPY1lOKNS//
	 wz0tcCcdrTCmqJB3FYurNvzxhyyxu9wllomKbe4DS5iEw0HgUlkO247PtcZGbMFfVe
	 +ZA5sbqWQg3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961ABEEE24B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729723358.28825.14977016084623484494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d638bcb250998b2b914db6e3bd3922a9cc1db055d1cf76610fa5bb3ab4b6f0
Date: Thu, 01 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767297233
