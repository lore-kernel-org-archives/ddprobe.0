Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFB81EF09B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403634; cv=none; b=Oc00PtGHhxIVY2tTMINSmBIXNZHi4tzVj3+02CDeJ50CgwTCj089gDkTH98nAMiDfbKMqC7A3T1EG8fEPqYe4/U0xd7W+R83eZvINU7sDVmWQ3SsygWVljop1WD6Ldwh0zFWkXxg9R0Rvhf1OuHK+LW5n5JUljHwEoWXxMLRK9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403634; c=relaxed/simple;
	bh=IM1H3QkuGo9kSPBYWghq6YFDvJHFFDybte20xM6V51k=;
	h=To:Subject:From:Message-Id:Date; b=MmMWXwWo3o1YZFEh5VP3O3YvqZ8e+H7/YK2Vwne6D3wpVG0tNHO92B+as/PMDocE5ur23JnI37AC5/D9vJfvPT/7VXCb5c1kmiG6CZ4Ytwj+5JtN81k62fMFV/cJqG8mkV+GUizWVAiXOZhQA+KqGw0UAGNYLa6+nJ9OCh6xybo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lA4YhJdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lA4YhJdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768403633;
	bh=IM1H3QkuGo9kSPBYWghq6YFDvJHFFDybte20xM6V51k=;
	h=To:Subject:From:Date:From;
	b=lA4YhJdzLQ7zYvKK4QpIR68aLYtU49YJ8AORqzQjzxxps7JT3unTMKaCbiQPXmlrH
	 HlMOTq2PIBr7P8Z2dFFFr4k01wcYNo/rms7m8FeVd0dJW6+1yjzlzfyAo7mKAN+PNz
	 RhLyQ6li0FZEu5YfwQhaKTVpYP4OeRr5MsVUDgU3g6vNX6PVYwUqbT1srg6EeWinQM
	 TW+uR2miyweDWM6U0p15iNVa6P0rsKFcuPOYYoKYVjSIU97nbVjx+89g4AIhjcr3xZ
	 +E4xR8I7SfllakI8hqICw+3xzQzD/xUMZ6wlvqgH7v3ltW13m2HCop23ZC3MM7UFi2
	 aw01a5ZhO8FYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C9D37E3F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840363358.4340.2422739900178052825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73265bef01427d1d73efb8eea2bc354e0f8f4364105504b8f1e174a960ad738a
Date: Wed, 14 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768403633
