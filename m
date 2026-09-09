Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69A5498921
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788993634; cv=none; b=cgZX3z9xcZslaw2aZU0+krkp85vKlZM5Tul1IYvxOSfhs7MBD7sSpo8S2qDGp0DBhqwTp0dqiEq76MbQh3yRin4awL//z+Er/GLW3JUwIbT2D+VaUrj44em3e+6aQzmSR93yrFIijqV25KvqpV41wHHJuYFWfCvKLnmtDLb2ZJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788993634; c=relaxed/simple;
	bh=ZkmXW/cSMxGlmFfKYKyu7JkTJn6VdIvy6gnrrakA3mE=;
	h=To:Subject:From:Message-Id:Date; b=u2U0RSFM2Zk69zCZltIyqXAFHa4PKoNb7hgS7tBjtO4OMfYHEgZ6Kr8B30QsPP3G8SnPmdWoSvKXAZ1HfN80ChCOGBXmzmzqMVdpvw6R6uldbH7vBsI+bRIWTf2HN6xaG3W6v0M3pf5WbUZigseHwDdcnXuLpskHqzVOzhHuDuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFuob4CI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFuob4CI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EABC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788993633;
	bh=ZkmXW/cSMxGlmFfKYKyu7JkTJn6VdIvy6gnrrakA3mE=;
	h=To:Subject:From:Date:From;
	b=oFuob4CIeZNKexaJ/xaBxT9JrwNbvZVW970zwRsHDzG0fCGNZHYNwxIrurfO9zVkn
	 lYZ4pbLuPQghBIE3cZsRTZbLwC+iDJBGiuJdTYKLUIosTepcB80Bcn7ZImonZPmpjO
	 o+gLbBwYJR9OBahlJjGdFDbRuAajhIkXLsKExPt0Dr+fOW1uUOT4vcA3hUe+Qq6p16
	 8ZMLbRyTr4p6XZmCAJumAT+ANsITJB6TlGKVnT8tcdVVBOwwDtCjUZKa1haC5Z+inj
	 3WxvNjENRBI3DhOEy52Kh89PeVDt+6u5uX112CUqX9yaedd5uwVj+l9IQ8w598AttL
	 vzQSd/YT66aSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB916C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899363373.12177.8381973946559105643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4b84ca46a83b8affd7ea0f3a06224476cb8877a09ae46788855cde58dcf52b
Date: Wed, 09 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788993633
