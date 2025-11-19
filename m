Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133A517BA1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763518314; cv=none; b=qaf15r3p8URMt08MmJUi5HSiqjy7pmR1DQyN2tJ9cIpKZ+CgfYAJasoMgP4phDUaPeHY3cm1SqxW2v4lf3/ahPCzS5jtGKSueRrVwAjdMBA7b4Rkb8FlhEYy/3KodpIfsxxto02VyHTw7czQNXjnT3XLrrzHyEpmprDFcXxZ8LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763518314; c=relaxed/simple;
	bh=wygiDoO6zdf2PLL6qcYmLlgqH+MUmRya9KojFFNrbys=;
	h=To:Subject:From:Message-Id:Date; b=mqyBzFq0+TrQ+jyiWDu5dPIfkwImCujEGkVo8K8SAHpbAPUyZH1glKcG5fUxRSSSV4lf+ZgXwOaSx/NNqcVkoZPnMy9eKTUhi/7HFnsOHfwuj9NoT0F9ugBzCJ9ngjUJ4g0129hP7OlTJIUOHgMT+dp/uFAoq3t5mZq7FyhAuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCGJQsnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCGJQsnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E78C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763518313;
	bh=wygiDoO6zdf2PLL6qcYmLlgqH+MUmRya9KojFFNrbys=;
	h=To:Subject:From:Date:From;
	b=JCGJQsnXoBoGqiIy/4Tu+wJBnpyF3MIijPhnmrtWmh4yxWQXCCmXIWOOFWAn8EtTw
	 TUFO2Q976OMcW3GRlMILQbuVeezlDTiWq+zPv4OPqmZ90IPEtpl/UgCeD7wXVEeBqG
	 0N9c/EEQfBXvz6eaSlQIo8dak1LUbuN9toq+QQG+rAhTkqR6LtqVmIBIzOe84wxqJM
	 2ox/1TaSnFZqmTdIBbfJ2aZhfuSbGJetoayPSrl88s8LSDmwCKnylYSXMV0W7P8U5Y
	 ECEQ8aj+p16GE59OawOSwm6w66MHgLSwMBRlfvwJYhnoPcbCCAgvX9TPUutkbitj6A
	 i1PsdIls4KImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90770CEE35E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351831358.11292.14611108724456780572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b395c1e62e97600cd9862a73de0d09ce1da73a3e6b5c15db64f872181921869
Date: Wed, 19 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763518313
