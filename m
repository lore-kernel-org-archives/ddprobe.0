Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABEF1B043A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757643594; cv=none; b=m8hVBeczQ6dzJAVwZWcRDZ5GIYmH0b+JUcbC07X4Rrz/q6PDrjq0BH3FbwacU90gcGoiaDsy3gO84SMCSEaPZGq6fv+fM77gv7nc8eJg9UB/AXGOb5x+RDh+0sJ5Jyx7+YsFw1Oj3uFsszw7UqLF9pciBP3e9eP+dlA1xJXuw5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757643594; c=relaxed/simple;
	bh=Vk2QFJ8QUp9Txuz1yha/r2K9NKfQ3mKCR2WM4TEPpXQ=;
	h=To:Subject:From:Message-Id:Date; b=QGw6HcgmGOb7USHUNlg6om5npOAa0D9MqrvCrTDg8g93aKJmRXzLv/3xM9ZkP9djWYSnZeGxXSLHJQ0lKq9GxnNuKAOH8fh+XbXAz0t1BNN9iq+VH6IbDMMAKB8U4KjRL0SaEs8zrMyfq+tcGSkAuic29inbulkmZCQ+u3Fs01A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG+9ApHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG+9ApHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757643593;
	bh=Vk2QFJ8QUp9Txuz1yha/r2K9NKfQ3mKCR2WM4TEPpXQ=;
	h=To:Subject:From:Date:From;
	b=fG+9ApHLG/fAykbRMuWy7bXB5Z/eAJaWVcboKdylH9MWRQC1ShiM1UikTAKJtH0t+
	 82vYYXEG4lst7ALsZpPDKLqS91vEs0WsFYKp+6W6+fUC2VyKk5moGNvjc9sI059dZE
	 q9WYFFcEeiNWxKOWCz0E08Y+tGZV49Jc/iwnUbbcUbEyYj9e5f+03SjZSvBRfPBcPW
	 8W43YIldl7r1Zct99tMy2U9RJo2RJylVWi8TtQ2+OZyq/HNfGBRi2OiJxkW4IyCFiO
	 py2AFQTaFczMWlub8WcwsJoixtsVQCPDi5675ex+z36m1NVhqiR6MNe6F3xHa9iQ+n
	 oZcBkE4Wz4avQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92274CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764359357.26576.3428812942062903967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f9c2ed0b7fe709570b5a28e67b48a90db1ec522b7333a27a785d971c5e9f0c
Date: Fri, 12 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757643593
