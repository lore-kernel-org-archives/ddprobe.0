Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E13163
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717548383; cv=none; b=oGJnWhJKZDE3LX13v4KodNwej4lY0RSRNVnmXwdp90gpNruKj0Qd5l6IgB+XqiA1iO0gyIHMPKiTRTNjNfEvy64rnLTOkgQrzF9rg875fkbvMLC6IGphlHeDcFWnf5k0G6LjBw1YNFAshfiTP7D3rgWyE3kGEq2qaL7GOwSBB/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717548383; c=relaxed/simple;
	bh=EFYuJJmGEfkro6ff1zRHfcbVDGvksR2TP3rZgwNCQ5k=;
	h=To:Subject:From:Message-Id:Date; b=qbaG/LzvBRM4b2k852aVNhbr93sCXjv6qoCqjLLZ3PmOU+vRro1EM+9XGsK4oEgIWQXZZpWC/5NncRIlmxMJznVD3Lfl2XCrSRm5KHvwWXP7aIcEhCHu2PONQVq1oMtz3Myf6PXSN1WKGC5WSq/bmF5uzXPV+lZ7bcWP7FeGW+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLTNX5Jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLTNX5Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D77C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717548382;
	bh=EFYuJJmGEfkro6ff1zRHfcbVDGvksR2TP3rZgwNCQ5k=;
	h=To:Subject:From:Date:From;
	b=FLTNX5JodRYLgFIWqk6z7QlqTOTk975TQNsgWv8COYpaHTESznQfvAQDo9eY8YzDT
	 /WGDbNvGWQ6JX504cE97baMByg9xUEpveVVFo6kW0Ltf2hpGH9GdEn8FHLB0u/p6rZ
	 X0oNcYa0p7KWQAddr9vFdYwweX8eA6J9TtsJ3Mq6lICu5TTwmiZr/zyT2dNJi1pa+l
	 p8X7ofN03h8zHpWuJwhbxnKSMuiC8c4osqiRLnuA4oPx5NQwGp087cQvuCk5zk0efS
	 01JDeamUDhQ5XJ32TFMQhsZc6KzWXUKRpdH6NhzDLeZjPqTLrPMQ+dbDXgYmDYHTc0
	 JbTucG9wPMR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDF1C25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754838277.24154.5817060564133603786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3023f9dd9938c7340e8fc06cca856daca40b4437fe9af1bfafd065b522f2f2
Date: Wed, 05 Jun 2024 00:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717548382
