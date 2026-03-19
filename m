Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CF341B34D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773962694; cv=none; b=W4i6iBXzdD0c0a4+nbHVKlJyhyXvg/WPhDuOblUZN0zDnHvdtx07pogLkudy9gk7KXifQfvOP+45RctunE48m2bVi5BAeSzoyHTD0AmMZega1b7r6qh/81YCmE/6rWV2zkpCeKPTmIlaPWbDAZfJnxu0VijeLSX66bqmDu3xi0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773962694; c=relaxed/simple;
	bh=7Lj69I3xqXiBndoE32xEhOZ7BdXjVQL5nePwq+3CUUc=;
	h=To:Subject:From:Message-Id:Date; b=YFClFZTJjh22KE+mY/2NAw2dErxbA1jLQ19bazGVysW8PWGuvCZsiMNXPU6B/IijFaK5bzYoeNEiBbEGm0N9iZTxUiR9irpF3EB9vHn5bKZHGjKgHdllL5dXP+LxK8THT6BGsYcr4RyMHwXyFfSwkP7fa1+uuhaBnT8xdOnLr/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMx5wxej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMx5wxej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2331C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773962693;
	bh=7Lj69I3xqXiBndoE32xEhOZ7BdXjVQL5nePwq+3CUUc=;
	h=To:Subject:From:Date:From;
	b=GMx5wxejP8Q1TItaFjyFK4Tb0QydFga9jL22lSgONDOmEAQMo3zjdd3qKyETdujoy
	 4mZ2oKipoNmFl/RPghWkEdGKjg2/30jvkwLXsx8jBa/aireOKo+tswL9VlGwguTQ0Y
	 MJg+byDP2KaCFdgG7kmihDoFgcHDCqJ5PqXrqJwF87SJldsefWad8KFFAeMd6myQP3
	 I4oQIPbpypR0BrtZj9A2V+QSWOa9nVwOkvxcpHXgM+kdUl1nOk9wgD5aKo/ppj1Ao2
	 4HrZPtr19l1OqLB2YapVivWEhXkCRR7VNXrbKIazPamuKRjE4x/782PKAp2Ky+6vil
	 9lunmZzSDPReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F626109192F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396269357.4047.14691954622154884268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ce2075575308ae1af47a73c385888b53e30b49b0b2d8dc9fb6126347b460c1
Date: Thu, 19 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773962693
