Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3773D1A5BA4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747897794; cv=none; b=HfzTznOJcxtpm5teJFax3JjgS4dx5fneF6dwPuUjKRDybBgxlg3kfY7AO3NhFKHlUiMxifzT8pzi2BD+N0NrsAkkEDj+lsHSg0D3Sho26CF2tZ3K5K2hYPzjffFIVc9xI+YFNXy46Q9qNZTvnFUYlCuj9AKOWXgVzPau3MyzJTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747897794; c=relaxed/simple;
	bh=kocwr4BFc+cKQ5uB/98EJ/nn8oNzpgWsVZgYJNLEdm0=;
	h=To:Subject:From:Message-Id:Date; b=OyDeGD/YjTHgEq1Dh0GhIRrYJzPLMKaCRzdaJ4AjtLyT4sL22R3GnAUuDWEQHKoCbDXUwqD8Qxqi/3Ve72KY1dcxLgNiY6igffMwqWqfyJUw1REdnkNlT5bf420NRk6XlZFxUe8CXHn0L4dKtg3LZdqvEhE2UUu7I38eD7s9nVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lolJor1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lolJor1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747897793;
	bh=kocwr4BFc+cKQ5uB/98EJ/nn8oNzpgWsVZgYJNLEdm0=;
	h=To:Subject:From:Date:From;
	b=lolJor1XmDlcJZAGMxIYsnj3UNdfM+zQFZ6Fb6M0ozFndfA8Xcytm1e1AanYRyV3Y
	 N9PyRzhJpQwg2SKKSx6r04IeyYXIPtckDUcYMTEsUy9OpyfkZjybh6hAlg+gr0tqZS
	 FyUzdsupNRStWq6ZhHXw6gMIzs2JggvCFfiEqZq0lVaR5Y/J1t2GVVZTFyL20SJZUJ
	 TF3FFwFTDlnBneiYNNtZnNMcmSwzkTK5wSdAud8XRpCwhQOKeDJcBEYIGGZ5iqdb2S
	 hNu2bjBz8IajRP3EgRIhm1e5pgNgqOTnpLeRpu8pg3qdekMWtmihaXtK2mXJIsYSEQ
	 8hewJ/sbTi6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E71C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789779358.28944.2085940425051913355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b37f1abd7c76737ba0a2a8d2a4b114d8283b34e2f7cfc666f569c3e903cbe0a
Date: Thu, 22 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747897793
