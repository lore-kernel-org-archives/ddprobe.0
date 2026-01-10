Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D9E23FC49
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768063434; cv=none; b=kHRPye/FR9bPiIiAHwn5oLKm/pNl7nLZBNo9LnxcqaIbTQOJ0nnK/o51XH+3kZMNIOTIa3aU0rRCU/8bDQJj+Xl7WV21tGIjFvMQpt3EE8tdMrb5m3TeQM1QY9WUkbVQvVIfJxWEDNOe9fThbmuJ1CGKedh6vlnEot/LZ3N8LMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768063434; c=relaxed/simple;
	bh=/5vkzJurLlMrRpBX9jysmVYlfrM+gz6XPCbhqMcJVco=;
	h=To:Subject:From:Message-Id:Date; b=athjiJJs1ajeba6MUxsqwQGbySWadKhWOVNq3h5zF8r9NFBLIpitU9mGHWzlWrj1Y42fqWuFdQUgUdtxc95kB5Vj87q/fXa/CbUmw6txS88asMjQDLfto7AlcYLRi0EBVh9FZ3SdrnDkpf/pt6qChdYWiqckJeUwcGR4Wnj23Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXoISGfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXoISGfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F526C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768063433;
	bh=/5vkzJurLlMrRpBX9jysmVYlfrM+gz6XPCbhqMcJVco=;
	h=To:Subject:From:Date:From;
	b=dXoISGfKrRxu5matbobE/Sbigx7navshPqYprndl8azhEJtqMmT0m6HWjQUupClQt
	 7tacLVjI99WYiEPCp/IQbYGjKqUnA3NRx4QXZlZFdvBdDY8mdNGMqKg+MlixBBX+wc
	 j0p3x141BeNkHcCTMhyaJv//JrslRX5uq/xAEtPTjJsPM5WOnTkx8Iu1+gQ+UwqLlv
	 amKnVqYU9ex2/np/hiMKeHwyTerkCFrVt0Mla1xIdVMQ7u/VhZJQCJG5zVp2TNIDva
	 IBOFA7w8ptwCkCujnqSPEgaMJFqXttnXMKjxEf89Oyo5s1cvqgIUx1aLKFznHAjAJJ
	 m3ZZBiWlSKc+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF82D277F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806343357.15783.16222456252315404442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d3cba6d4675266fa97469d2a3af820c807213c56acd280fe58d99f94cd5b08
Date: Sat, 10 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768063433
