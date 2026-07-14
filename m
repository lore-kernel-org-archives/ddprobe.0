Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1D3DB329
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784010514; cv=none; b=DU5ROR76rTQkZ00aNJ3PIAZ83jtXTKf6pn8aeK36HJizSC3rvmisqIBTSa7fWSTjYtaDeg6Sz9XWUR6jO1/V81SRMMt+KWQb1rboX3T63z3da61U4Nnk84wuJQWwfPX06n+9AYR6Ezdet8rzw1r3KUibU7Zb7a1iZmFzmKDuJ9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784010514; c=relaxed/simple;
	bh=kNZzJPa4P0dC5EuXftpBY2YHDnGk57cP1B8VAsbB+PA=;
	h=To:Subject:From:Message-Id:Date; b=FPmgV7p8z9F7ZBsYCYxSvN0NmNSvXqzFmHv1LbGdWHmiLy4fN4OXO/7WVKEh4dA9OlIwd59HzvjAiPZhMmOB5hXX24O6CltTyH4piMy/u59xdlrGJ2P7uB8dhqL2UAYR1nPphcB06bN5QNRz9wxpxRhTcNNVivh3pTSPLtI+0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW2rqlaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW2rqlaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFD6C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784010513;
	bh=kNZzJPa4P0dC5EuXftpBY2YHDnGk57cP1B8VAsbB+PA=;
	h=To:Subject:From:Date:From;
	b=UW2rqlaBYrrGmY6y9JOQzVX/6pOyMZOxIle5DzoEk9khtHGONmZtddOlutIDn3Nl5
	 dRAi/uFuzTD4dZPb9PrAf9xDxHyXZ/cruYVQ5IfONHp6A1o15rYMfVR1IL8I9zY4hq
	 ZwGcMxEQg332BsD5Ko8I/OdDD0rUjgLaNkDujAfdzNCYKyqOFqYh7kQIzCnj7FouDY
	 TLP6yAcogFraD3bNETMSS8WH5Jx2zLRdKntMVVwGwSbrRZRpDvpAitVOiee8OurhZi
	 Z9X3MICxKw/HxpYbxpjdrU4IhDOs/yXhcsENJ7rjEj6QHE2OaThaKWJR6p6BLzuSug
	 QNp/YO5mQ4RcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF7C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401051368.15016.8160501945123979890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b9ca4f28e6f3f7fe2808226f256422b6ecaf607a78c82183c627e56d3f00f1
Date: Tue, 14 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784010513
