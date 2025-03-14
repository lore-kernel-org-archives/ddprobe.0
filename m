Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258501FE450
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741967334; cv=none; b=sPMidTVTGEBFIbQqTKqiokkwMyl9zQOVP5DlI8IvPmzNL1pvoIEgiwWTIA8xH+lYn5OEsMrgCouucLXKiFMcpyGevO4lxcZvgcJbk9tNBnTo+fXaRgC7Zjnks6SZT5YqQ3qqPDVghRKDsRq+1hcYAcycIw3gqtRbE79aDPtBo8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741967334; c=relaxed/simple;
	bh=FamodozaU02dx3d6dS+VUJKDc696cghcDfPhVJ0fID0=;
	h=To:Subject:From:Message-Id:Date; b=a+/4pJZaVEsAGn41vIFwv7Iu7QVkxkZk4GiQN/oZIrZcGoCt901KYIV/Bw7jKOpRgEyt4gDBPhzwa351CeW2AsGOjLl3LSb3eCi4IRMRev7pLR7k6QoKq1eEWsPHeiwrtcmONqC+qGxJWO4HtlAkfmiIa0EH40W6YtZqQix450s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bez3B3W3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bez3B3W3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3780C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741967333;
	bh=FamodozaU02dx3d6dS+VUJKDc696cghcDfPhVJ0fID0=;
	h=To:Subject:From:Date:From;
	b=Bez3B3W3r2BMGrxn6WQqJgMnmjRnL1Kt5GS71BltntFX6lyZnsGB2lyl6u7hV4Ys3
	 1itNFY9c6ZooFj5PAN7mZONUNx7ZVF6YvRrSnqeb6B70PZ8SnmsZCJzEpZEPfqkxkQ
	 +DyJNjbwues+7/hq3/kRl0fDrkZgCvl8vJfUWCZSVDn7UlweijrLmU9rOpi2jLM3uO
	 JXgulBmz7R5MaaHZED7ZIFKp7uwX1lYEfxdTgux+7RU8DN020g37UdMqlvwnqY8TZo
	 VFzOn+ThlQiZvtMP99R1X44kggTKjDqEq8HhFOsyO9P2oW/WSMjPw+ITHfAyXsETRT
	 J78W5eu9Ax9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B44C35FF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196733359.6071.14039149008236477172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b422327b3ea56e360b44f5c9940c4244b48106e2caf26c95855b14f945998355
Date: Fri, 14 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741967333
