Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5352E1B94F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714705343; cv=none; b=uWi91em0KLr0Muuj0jE8f5JqDyEasbP+hdo6ij+Sm1kcgytRB02s6UI0FQ7IYztRB9DHNHleKrJqe9FJiBxBBCdmti2YHsZZwEKPUa+gKh4rZAj6BSVTTLm3j3PPR3zO0dJGQj4hgl5+KF1JDqCQVX1mdTBV7c7wDhzE6tL0NX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714705343; c=relaxed/simple;
	bh=bZkEuXYPKimtffBARobdt2oxs+mIIt9kJonELurSpYg=;
	h=To:Subject:From:Message-Id:Date; b=Y+cATg3bpf51ZQZFusxC/1xMQWUvsFFQiYnQRDoVLf/ITNkhMmOsAi+/70nqoVNioK457x7JlW5ulkjxDTY450hDpa0N1lgN7g04QopFu/MeT5wLWWdGuebL1WX7X55JBNtoWeE8yINa43kOO8NorWNrPl8yXbyYDRw3bq9biks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdqmPCd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdqmPCd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF42C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714705342;
	bh=bZkEuXYPKimtffBARobdt2oxs+mIIt9kJonELurSpYg=;
	h=To:Subject:From:Date:From;
	b=VdqmPCd5RlUAzlW3zDtiE/OJjWYyNuu5cUm+CRUMFWwjQxBIsdlyfYxvOTnvcOe8C
	 HT1MJo2rIyUowQjfML6C2oEtacEsXvsdnAZ8v98KXOT+uYuRgMb2qmXwjwNB6NVexp
	 ewTcIAuhRbizdzjcLZuhCp7ZIwf2pXT0N9jypb2hlbOFBpbO/HrUZrlGTT19uYgoW3
	 UHZJhFK3JbHmq6YnLDrhD4p1Dklj0VKFFN/u5PjNoXC7bkN14emHv+ArJO8/bHUUqQ
	 ac6ZTVbHCslDytyr55qU/ILrrcrMtGmT3dnBDHFejFL8As3fq7VsALNXRzRn0GsHMn
	 vFWd9x65aVxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C8EC04FFE
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470534280.3293.16409745170840991983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b48f2917c5900fab6fbcc93b0046997baca460879b2c382b99f6b476873d96c
Date: Fri, 03 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714705342
