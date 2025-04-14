Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF49274677
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744652994; cv=none; b=qYWgajzHBFdzUilU/jYDYqq64tLbP6eYokjCVcRi6Pwne6lpCcg7AY7fxp/eVcNKtpeKUmnH54rWf4dyX3P8qiWvgg3IlJrnV0PsLHXGv2TQzCgP6E/k6e7b223UQN7/TiEN+KItvkF9DX0IAaBORoqw1Zly4Mv0j4bBQggzHYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744652994; c=relaxed/simple;
	bh=TcGXUUuskdcUXKsCEgIuphNRLZ14y7ShmXZkTCcT4fs=;
	h=To:Subject:From:Message-Id:Date; b=oOh89HDoon6hA8pMkOCEKnRlqSTdMkHrwVK+3lzsf0olWqTdQpv0AfQ9LKXwSrNxGx1WksiOwoXBcIBc7560ASe61yA+VQDQlXkIehLHVwHAkwCGT0rccFgar1P7SS48ngAZkEX8qzyxGCtHxZUgjeZVd0O1C2jRZK8dkftJuBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+4p19yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+4p19yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0447C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744652993;
	bh=TcGXUUuskdcUXKsCEgIuphNRLZ14y7ShmXZkTCcT4fs=;
	h=To:Subject:From:Date:From;
	b=s+4p19ybaqX5PKG+H4AJcSqZVgcqBnknB7FWdPva0c26IZLY/jEonX4KI4lEVWYwi
	 vyZLobqAkWZQqXAzLHJ2QE/kLkPcOw8UfkMEc/YRPsD+4/G4pq+yOtQQ/A1wgJlh4a
	 wL7In040Ri2Agzq4t/5RuSu7uBAroQAq7xFITItRW7wU+pjVIc8X6pJOSaOtg4b78j
	 hf/ezNUw1N3zIQXAr3X/ep56VJLMZepqpAaMMkuvXJC26z1PJPMv76oDPvg+zrKUO+
	 4628qTFg0Ro8nVdvhyXsTvF7P8RWbOLAPE9FMCjl3vg2dMnKkWQvfh2H8MKeXavt8n
	 O8R7TcUfPpthw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE859C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465299369.12474.16931110613556429447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25f7c546a8c28f45f383ac528b14843f33f22f932c35be8892a5f0fce1ab686
Date: Mon, 14 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744652993
