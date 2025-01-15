Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3399422E3E1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736924754; cv=none; b=iPY3F3hkO7oW3UzKR75pW6xGzosVlF2QO/We3eymq0JVaTLfmU0esEwBomIkWDeMbl+W13kFyQT1q70fB9GjJjetckz1+vesCsn8vuUpvnsusPEeMNf8gJzgnpOSYvcrYKgMV7kreSXASbuPtF7/y5KbXJTw9H7w9rbjfuyD+DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736924754; c=relaxed/simple;
	bh=cEK2J9CcShNta4nlyFc/bJjn5UIdSLaLm1xeDpYszFA=;
	h=To:Subject:From:Message-Id:Date; b=kF8HFZzw2dJx7cAfjkom305owFMnfn5eRHL4hVtsbzMjcWzQ+8a3YfNe7Q9YZg2TofHwRDDpDcAskv8B7fBksN1AGR3ZQuwA7eNHUMhQ/Sd/P1C3liTcnQs1v5abDm5Tnw8bqaONKp/gN0cEkicyH5fTq/d8p4xDWvQCprjCRps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixtzI7b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixtzI7b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF56DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736924753;
	bh=cEK2J9CcShNta4nlyFc/bJjn5UIdSLaLm1xeDpYszFA=;
	h=To:Subject:From:Date:From;
	b=ixtzI7b+KNSZJMuHtJnReRXF1BgTiPW7VT+g/MAu3Oa9+bEZkLkC84Nr9awUOjCyy
	 i3cxTJzcHmLtZUcObzhP751u2puKiNbhfeAj+DqfRl8cSe97lUruLfO+235566U6EF
	 Ef5jKu1zL6W6aemsXVUJfEEyu+RskAroy4dxeoGWnkDTqSaW6UMKWb8YKa8RjrDCcL
	 imBelLKUlCk1gSxG+ZXyh3KFwlRob1ppqlqoLAXQTmVGVu6aZvMo1j2WFbP/NHg62q
	 bjM0hUZbCYg2KAjFpFQxneJv5LZGmzMG7OR4q+JU5ssgjm2Tq/fU/LAhcaceUNZI06
	 A5SLUI4UNWSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D8FC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692475365.15429.4673634002350187112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c607ceca9a58e4f72e8b698e7f4908f25e4241633794a4b653a5e621ed8d8f44
Date: Wed, 15 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736924753
