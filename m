Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E72D3EC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776055654; cv=none; b=JFnFlJHYJQVkGizj6G19Lb6FbT0KfO9q0h7KDxwiM2JHPGZVhmTBTVqCHdYcNhgOhANqs/TrNsYnStqaIQj6vn7t25+YAZ2K9Ua+HbHg4Je9+cWfviozBuSVA64FwwJONvK8rq1qTH91tNmKvYyyHbIGcYy8kltQKpz5YXTkmPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776055654; c=relaxed/simple;
	bh=XrIqm49siNn3O9G+scjWTk8xTO3zJhngg2vUyJV7/w4=;
	h=To:Subject:From:Message-Id:Date; b=TT3hxHBIesvAq2Zq8F2Lr5SF15k+SgtbpJ6UeeHJREqyXLYlNrwtofUsbKNMKiX3pVMwO4Rn1eJrjFhOgFrlvMdOlfHaU8HYRzZv5uGX1BNa7+FK8ueoviXMKAkLFjMzSNjlbbYeP0H8RDUFkjwg2eF0wQ3v7OPHgk6dzssDTGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2ulkkHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2ulkkHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72D0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776055653;
	bh=XrIqm49siNn3O9G+scjWTk8xTO3zJhngg2vUyJV7/w4=;
	h=To:Subject:From:Date:From;
	b=O2ulkkHA6xjf4+L94S24AkrA0RtQNEjyz5FD0vf8K/DAtuWLZ/5Z4kH0eMKQ2AmoI
	 vQU1WJDYsecSOTbdyIObwzpdV8fFKi+dt05OK2KyxjU+eaHXZHdpwKNn08mYGAkphD
	 yj9rruR8nG09OsUV0EWcH1W2ybC+vQKkR+4DCQuftX6c0+kijTxH+tfK7KolPn+mee
	 ewQljM3VgaBG3lDAUXVDzoDx/zPZwLi06LruYwAZCXyFUiMKtOnGxIkWFNyJVoimpf
	 /amcwVXdB1/Ch7+qE2e5NrP32QzJ6+8l+iVwKb6yF3YZX6z6wZGgHce1p3P+RB8pZF
	 N6BWQMr15ScqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C5E93817
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605565368.26594.7945869210575519506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a09c5113e28e9d1f8b36698892e549f07c4df5a4184d9a39e1b26d37363c7c
Date: Mon, 13 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776055653
