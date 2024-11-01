Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402E0154BFC
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730493954; cv=none; b=C0Rb4HRUhhcMjo3ApwJ1O5iYovKmfW6GqkFYXcimJffnKiVbMgWETazD74j7bJQEbnypD8Dt8uoC9rj892XkwRrI+WS7buzb05dYv58zst3oT9YvPtrRBneR7u1deVBCpvf9Bj+Xo5uYZqwfYLF0ZmjPPunYUd6aXkbb27ZojhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730493954; c=relaxed/simple;
	bh=9vJCZNL+FbIpLXocJdLXVV2SBaUhFKgGd+ZIgOq4qR8=;
	h=To:Subject:From:Message-Id:Date; b=YuYrYgrx5J5Em/2t3lXLRTQjmk1FF37KI24BSYHwFg3l+1hyauFV4CVBOMhvx7MSFv/EQPtB70zGJPcOYS6o/FOzPnV3xRS8JQBGqutDNru/ibQu2zQvynzKNyCJJMZVmpFPDuFnjKjKz4ZJBHRJmlTje2aR90gATowCFTBI1PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS0lplv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS0lplv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF7BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730493953;
	bh=9vJCZNL+FbIpLXocJdLXVV2SBaUhFKgGd+ZIgOq4qR8=;
	h=To:Subject:From:Date:From;
	b=GS0lplv5ZopH9z5jE6hV+fSEVpOYsg4wSTUAHWrpKlQ3rCXbN0qUNMOOTGIKCmzc6
	 aWaWQB50L+KT0RmycZ+GjggmjdPIjZ/fVdU/ADUEgbU5hlSsa9YRQACCBK5TLxcSh9
	 k6P6i7wstWtiMZKZONX9av0bo+LahZYjqNvp1qItC5TA+AKWbw/oR8YZege2mHjdq9
	 vDgO+oWw9BKgNCxOUQhJ4z5zdJn/Y4XOMxYv4D0KB2BJKNptBn0gvGuTLBB49uIENL
	 a6CsrmkfLYWOepGY3k8767JXQhZR71c3+0LBiktZk1WY8Exp+Dlt5mho61PvYa5P7M
	 39ujwI67EsZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F62E6F086
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049395362.19290.16648281728738953246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24158650944e31ddcf8841a9ca8f29e6124069d56e77da02c1e72cb2d7a399a1
Date: Fri, 01 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730493953
