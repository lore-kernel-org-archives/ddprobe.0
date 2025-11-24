Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3301A2E8DEC
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763970114; cv=none; b=vAjNSJx4orK5DIjpTHy4MEnJMO1MsqwzRAnXdADvwiUS9iYFC4sP8aIkztaAYK7fda1KkqiGg0rK04R15f6Wfd+OUuNPY0zUFu+ABnqyDTureIXdDXRRlMeeKO/mDFiFY5CAJIPM2QKp7TOEgj/BzeUhXprtQaw67xb3Rq0w8R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763970114; c=relaxed/simple;
	bh=edLWee2H9igaZWGlLLi3oLd3TDo/ekKpYiQondLhEHM=;
	h=To:Subject:From:Message-Id:Date; b=Y1xT0knJINkysNhBwh1q0qrxi8onTuXWqxGvltDdBetzvWUaGJm8ouRhEmZ6aash/myk4qIvhO3ydI50q5cR3HjDQiXm8eqLQqL2LzKKN+H+Ty4jHfYF5SDwJ2YqIYBmH+ddOo3hf9OCsOnGs7AHe9LVjLRZ7nVvl9hSNeXPTW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoLoCFyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoLoCFyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4109C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763970113;
	bh=edLWee2H9igaZWGlLLi3oLd3TDo/ekKpYiQondLhEHM=;
	h=To:Subject:From:Date:From;
	b=SoLoCFywm1oI5NcI0FlZAOyM9S14F7TNT0CiXXQjNPF/mO9XoEBpFNaqbMI4Rs6th
	 FEhpmnZDvlCf3auueehs9BrgfUiPCcvN9H8GIWOHK9/9+iojGZB6AeaB/PMXw9xXzG
	 ATwKuS99jiERWw2RnHhUenxJ1sxmon/aumh3suFSoIPbDCfw1cQhsvqLVJ0lbb26P3
	 kPUMa809CaSPZ6cOAcx2h1f1kmlmQYLNdiq7Z2ktEQ3WR1sXvua2W3xx7J1vVUM625
	 eSgtsxTS18/cXzgrx83049mIsesvdngh3i5czWE0uMNRWaCYCiU4v5OL69EFfels1W
	 WUWWjtKVh+Pyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC4CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397011358.9887.12799206907781675190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3738e75f2c5da7af1933979c0e51e983916c98a5ba247bcb204baf4da97c8ac8
Date: Mon, 24 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763970113
