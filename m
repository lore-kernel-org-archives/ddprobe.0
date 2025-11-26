Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C839928B3E7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764153773; cv=none; b=IK+r0737M8ieeNKaav0tSXnWhNToGXtgj9o2RZISeSuq/jHISCBiz+iz8Jkn9WQwQ3VmDLE0IsvvlsJx1vplbvp5qy52vv5lmBhVPXOkmrMoEMqaFCnzcOstU9Kp1os6Jd/5m1gpf4bwTyob3lx2/Q7qWbLviIqB4kXDnZ5EVpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764153773; c=relaxed/simple;
	bh=1TXt7h9/T23SceadSQ8yqBsSuz9vsMyBu0sQ6/NEGeg=;
	h=To:Subject:From:Message-Id:Date; b=J/afDocAcGnfw22Z1AL/7927q+KpL3wQvtpHb80BB9H3KVkoKeXgtJvdH05i1idgqqaRIy4NRHYuEQ5JbeYVrKjSILddoxzRzpaYeAEKXl1F3sqnt+QhdXDT8F0HhTF3y63ez76/lfCLlXo1aOGukF8GQEEvh+kVuinpS8Tdv18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugK7kBqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugK7kBqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764153773;
	bh=1TXt7h9/T23SceadSQ8yqBsSuz9vsMyBu0sQ6/NEGeg=;
	h=To:Subject:From:Date:From;
	b=ugK7kBqKv82rjTt5X1IxwsFf5wUqZe3Ly/PTaFPJ8BPtyGZD4dV7VtwdI+V0WGR9T
	 wwZbU6snjBFvErQd21CnnjQZWNJQ4oYiT0TGhXtT8GGREnJsU7CpUS0h7lPEuN+MPK
	 Vis4sN2XFjSjS337Dn0JisYcGp8A/At+5OXsS3G511vQVSN2K5/15ruRlRQQ5D3JX8
	 ffN8BUZjSMdUHs7o8otbaU7bHvpi8KNuAnpoypmOmoN/BntmAANks5bZZ/d8GxBgRf
	 Kjv2bPTpC9+InNjbhD1G0CXcOr26xCluwSICbUZz8ng8237b/jx9iP/mAZuaQCjCqr
	 OADvq8/ismB8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF6D1037B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415377358.31314.6466894077031343362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f85f3b8a329980d405ad38f1af1ceb1844e90747097993b53d5b68ab1f1ed2
Date: Wed, 26 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764153773
