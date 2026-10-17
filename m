Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4C43C141F
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792223434; cv=none; b=Kp/z4eUaidjQb+c/rC5ufG2u67S6QsYIBAtqCzrNLfqJcnJTUyhE1ZZdw4wjO7ggB0LOCVIak/UBcoLoqFXvdb3gTKi8cBCM6BGugMGbyYWNTcHMEU5bjcYUblNTrcZhD/bCN8sQ+a07Ry66uI2h1WHHMNEEUG/xHxkRjFDFlk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792223434; c=relaxed/simple;
	bh=NZr8F4wP/xnwbfdWSxIWxK26gnXX6SaTkhD30mLGaF0=;
	h=To:Subject:From:Message-Id:Date; b=svGJ8V1ZPguq+DLrL8cNqX3/tWLb0stywOa+BhiVnI9QnfP0CGMD1g0QlovMALBNaAtK/nJu/IhEUx0UeNdB9g4JEh5awlHaaquaIh9cR1tG2zcPdeWllaYiZmujlkmqKArnqbs6099ivXsWFEAF6SUx7tzoUyf07eYwdkaOiBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaa0W2km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaa0W2km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AA4C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792223433;
	bh=NZr8F4wP/xnwbfdWSxIWxK26gnXX6SaTkhD30mLGaF0=;
	h=To:Subject:From:Date:From;
	b=jaa0W2kmnTJd95nsig81WNQbF+AdFxM691LO1YAyCw4a8s+rs321eDWpj6DcS6CUa
	 kk004bcSrRJJozp8ejLmlRwmNKWzHS3O0rNs+FFH3qAMlmXNS+V47eXChp+UjWtHtz
	 TQ61g5hTy76M+aEtqfModCQ289Pu+LlxQPIS/ZsnqhekGyoNn6/fN3LDwAZ2gcb8m7
	 yeLzRSbp5mukTCMEJIR7tmziH4o8Baq3U/kxWt2tLgoq9P3memSVhgSFZAwQgiw2YA
	 iORtafGHcZWfiPEH6NyztWyhQK4pjjzZwrf3HhusDoCz3aCh1xO+DJ/NwWbLPCXUmq
	 15/Pe98X4wfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B574DCC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222343373.18988.10747037112835844319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd610d80c67e1f23be5793de8cae0d2bda725a919b226f4d620de55c31ff0039
Date: Sat, 17 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792223433
