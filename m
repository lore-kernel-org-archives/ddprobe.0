Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080596ABA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705428497; cv=none; b=BAAIa4gaPKuKx8nPd2KsI/2CjvG768i64g8hWguKiulXnxqmK21JNkp30ZXXqvzoBd+JkH6cb1WOv4/zCA71489c88tgGauGdPfEpuwGT41nEjeZO+/JYDLu4oeuRLKEs1kDqwosfzXGOSAhzJ3r1QaNGsvmhdUhYxTEN8MbR54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705428497; c=relaxed/simple;
	bh=hqTvwPQBjCwfxZ0TxQzqQLNcD/ZTbYdK+ES9MfR4rEY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=E2na0HwygjZksoKDwPvHWDMyFFZ+U5N/IjDO/iENjGQFoG4nSPFQAorSg4v/dSxZpaozs/gL2YGCy36tdCGSt/7hta/4SSH/OPpgePxAYFz8YLiDqZbkR2ngGAUathWbERR9djce+lrGI/TfQUCLrct0k9Gw9RV967OH+nj80CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCct6Lkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCct6Lkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCCBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705428496;
	bh=hqTvwPQBjCwfxZ0TxQzqQLNcD/ZTbYdK+ES9MfR4rEY=;
	h=To:Subject:From:Date:From;
	b=GCct6LkzzTYq5e9UPn6qWe84MXgBes9ioTF1DNzPTC/DpTIsX2Qw9rAKXak4Tdt0A
	 gAZQoee7bZDZdFhWWv3JdrTnAR+wzEvA+VMO8q/VadfI+6WUK8Z3j1iN9GReFQMlmt
	 LB7ipJVU0PojY9Lnqv+8aXyIgvueJWKG8gWRjLrFZ1gausceJUBLfy9U4bFaxXpfxm
	 GpY4PRpUmsF4hjaY/pSOzQxpIqvACzHUaXsAO6qLywoxuNwQxh4+CPFEZEqmSlqB30
	 P8iXlaMWIjgbmxPklKJHGQLdEck9PUOkxEHdZdnoialdtdAWt10DfEZJ+fiyAArs0S
	 N8a91fyccoX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E8BC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542849637.23209.10472900807390729816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf679c9ce268e6515a11912ab72c41e1a4a0dcd6cf004fa25e7e8aa36d8cb61
Date: Tue, 16 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705428496
