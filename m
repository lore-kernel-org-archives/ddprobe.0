Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14183217F36
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754377194; cv=none; b=tAo15reaBJAaJ8fiWRPQ+ObrQvqvy8obS2Ts/9rBQGF0sVipAX2fHeAAuWOP1ZEHBBaUpLqZd6RrxYHt6fmxyTs/TC6PekLrMcflcE4PVd2Ev7iLGN+vjhWpODbZhM9MfYCxiiiC6XbwHJrnSKBFhB0ssLg9ZwX2SRzHHbPYtJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754377194; c=relaxed/simple;
	bh=rjG2U7NnZNpwMvGQgoeVYAU3nlyd62oyD7npc1h/piM=;
	h=To:Subject:From:Message-Id:Date; b=jDnFGS2lvedf54hQrMNZAtSIsj99MUmQ5XSXhojka4LfZAoaJAAQpl76ZbeIWl0+9A0fwwxM4uRRM6tCxvScZyZ/kNi4rSPnq28BJbhj+IVSuFNYtWOxU70K6x7FDtC6EbIXh6WLYHZDw3cnDx8nU80ZYcMrLTcSiiJ/19U4Mhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlZa6Z/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlZa6Z/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE41C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754377193;
	bh=rjG2U7NnZNpwMvGQgoeVYAU3nlyd62oyD7npc1h/piM=;
	h=To:Subject:From:Date:From;
	b=IlZa6Z/kLlryCtbkVIYTwi6n9YNhNoRkdvJSnpTxgwIcD9lMa0FmMhLZ2p/nocYPx
	 3pT5IWTmwtE/Med4tCylBBjZJJPnkibjgyaily8hvHVTHOOWzY0jlrbJ38JmexnDo0
	 z1ydzcMG3R13piJuXeWmrHbMFCgS2OudIYcI8h/nJ7dcnNAdWJ8tgym+Jq4hRO7vVU
	 Tp0ZxZho5eVm5TpIJlCvAUxMq60mXgcDHFQPauex5kj3y/1s4fCfGjiI6G5+VBGvxG
	 sD9HMAfLP5f839JJuzxfH9yk7eI6R9nihmGcIdY1yEuYsENRoKAF0N+UqltjZM5EGW
	 JsnjerUFaTtpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB5C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437719357.11823.14247273320702818370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a68b6a72f28d7ed1f6efe7ac805e2d6be1ab1e31d5bfa2ac88a690f7db1472e
Date: Tue, 05 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754377193
