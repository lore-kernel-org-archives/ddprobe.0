Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF1E3EC2CE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775139334; cv=none; b=NMrupVutjTYZphnAw1s5V3WSKZnxEg1pYgnfZJ0zVdANxlzd+JkFbrODuMEjDhuGr0N4bb/Z5ymG6x+Qsq4MblsNYkIdb3y9WoEjuzDMtBHrKeegcP05KD9HwN3Mvjej91hhNm2Wf11kcLUJN6EOFJ8YqiOxlxSuUeOb4nEvq+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775139334; c=relaxed/simple;
	bh=VzCxooEe7PjcK3tj5tthJmGD7J+BIGK0QBWSreZJjY4=;
	h=To:Subject:From:Message-Id:Date; b=IeR/TPbFyVQ6kWGuZGeUykX3/7U7b0oeNumFVbRDCtZAsWlIY3Oq1sNsjIsRD0md2dcb+kietxeAl18hwQ9y8vEIJ1KQ1ZmDMCJv40nvuMv5w4mh/0H6rkb5rBkdyHyFa/SGRAT0+UNq+FkTtRCVA7L7bjXgNR7HAgDyqt2QjFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMiLmQFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMiLmQFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A73C2BCAF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775139333;
	bh=VzCxooEe7PjcK3tj5tthJmGD7J+BIGK0QBWSreZJjY4=;
	h=To:Subject:From:Date:From;
	b=mMiLmQFPDg/AKRI0jwUkE7u3E2QqWrwiMFw6YLsy1qMqyljvOYpvAH3Q/I3tjFol9
	 XtVh/Z11ZPHc3FYpWATixLCHpCpfTAMILYxffHqyrX0ZQMBUHbSw7MjjiQw9R4YiUh
	 OHvfLKpJXssQj2NLSefntI2sQWhG7Rel4piKIOlWNSPtcHHdnKZAP2H4u5MXH9fkWP
	 9iXAGdSQfc53ox4NJLZbz/CAIMfYwqJkCKKy+9LJnvVJIyuPWzoij3PxbRWzzZpF+M
	 UrQ8KYKmfuCAvzmXYK8yNpUOBq0pqYbu4njmkDruJGmnrAIfdFoRUVMYGGS+sRrvYA
	 CyRq9I86+O4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD2D39426
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513933369.2785.11359379306803814709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73e99bd3845a1a31f521a39c0afb51b7a1d89310429998c5a9d9b859f102aec
Date: Thu, 02 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775139333
