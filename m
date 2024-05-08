Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FE12FF99
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715195543; cv=none; b=SPGOKwEKccmpekQMQ7r0M8bimNhgigC+K5AMwpl4XY3Krnfn7v3WLzjRN5yXI6O1qwWTRzAMcimcbJQbYxkeZuQKq2S6eAfGANEJvS5lG6Js9s/j4D8Jtf12Wj8mSaHenVuhhCgBuNKR/ar8Plmw61D+qwZzwGp664efE3XGa+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715195543; c=relaxed/simple;
	bh=pL9JAMkqoFy86PBI6ccyzbkQL3S2GcmWUdLwdwkVUjs=;
	h=To:Subject:From:Message-Id:Date; b=ePcQdsdT5uR8eIB07PenxLyeNICpGgt500TzwBy9IGMHPboo+ZnrjxLG+zlimUMhnBOnxQMth68jMIQGst9I2WiKI3tvsdXD20Cqu5Bpk3tvhcj9xMEcS8SAA0IQxnLJtHQ4uhXANwoUM694B6EdtjWAYZCJkHJ/r13yW+WJaiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is12Jdnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is12Jdnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50AFC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715195542;
	bh=pL9JAMkqoFy86PBI6ccyzbkQL3S2GcmWUdLwdwkVUjs=;
	h=To:Subject:From:Date:From;
	b=is12Jdnr2l3+eenKohqDcxk8txJm0q1D50gER684mocb9uLsJ4pe6iWJtmnV80Iww
	 T8aR5PeeGNS815HJpT76UGpGuuFMNA0CPny5uNPhXUcde3jAIgIat1kYE69TfH8pVw
	 66xvD1QSVWJ612/Dl281tJBcXZAlUEZFmn3toy528N4LQqFfAsKy3fr2KRxDyJcLtO
	 rli1cdc63kfPL11BQmJ+K1vAlbeNUjLYx8CZMr7XTbY1JDyovM8yiL9YXy6lacHCE7
	 QIfglMqe6/odMQWnAWboPUPjpXcdSbe5hDLQnGF8XLKp9WKnD5waPk8drtbVpvkBPm
	 1x/gk8QcH/i3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EFCC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171519554277.5136.16704603074150718335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f84baa579fbd066a4a2a846490e0f693e0a2addf693b2b68850e142049ec3e
Date: Wed, 08 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715195542
