Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD7E1FD8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705742297; cv=none; b=hzed/HfLBWXJcj7YZf7esVhfqLI9N2WYVXlYCU2QQeCeX36IOvatRxQ7XIfPTMoeRzysjvuaPXu6F/SaU835MubHmGhlXOIktMfrGRRuxEHrs9JEUDq4zIWRvfio+0Q87unuzXOEC6PZkkMWFe85ciG2fmEwZs38p7BGN+ymm5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705742297; c=relaxed/simple;
	bh=ef6VSAIND6LH8HaTRdY0B8XlXFZE1OLVNSYdixDmWIs=;
	h=To:Subject:From:Message-Id:Date; b=RrGK/2UUwgS6z/WZfwhyU0uqA4dWK2tHuD3UHdp2AYqT+GZ/RNd3SOkuEOqfyECXdbiKqke8k/dXgVUNDbIHBwCDTt8yGT5F6M1E3JGnV21GeJivxgQE0Q1ZArzpwPg60uDH0ek+EtKgcRmEu8jCHsvpq4qcrJ9D7/C/igwpgGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcYCbSgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcYCbSgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC54C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705742296;
	bh=ef6VSAIND6LH8HaTRdY0B8XlXFZE1OLVNSYdixDmWIs=;
	h=To:Subject:From:Date:From;
	b=gcYCbSgi4F7F5eT8kbhOugiWbwClbd4+3yXem+SNgRKUjxFK+1A2daoeQ6P9i3suf
	 /ThNv3cAXnDXkr5MxT+1gSguaTBCYH4S0OoYaJ8tuybjFyVw6cOtRq4Q/6/erJWczt
	 VCmZS8ZSqnRzVPOaTDdcPxx+tOmYKfHzFj8fIHYIPt6A6N7RWyWyji4MCbotqufMUk
	 dwlFKUPqV3ZAPwZxPZ4IFeStVy74ntf7haUJg9CMIhrGrNvUzMwV1mRXeeGfeOp828
	 yjzqldNZgN45RQJVqpwTcXZLvLpBAkElKctFnTQip4r2jfbkt3HX7pGXaEWVCCNITb
	 9fYUEyMzupxNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6253DC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574229637.19116.6219593221815780509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee12bdb427c54aa0419fffb6af3aa37fd472f87d4b337e9e4162647505d99c2
Date: Sat, 20 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705742296
