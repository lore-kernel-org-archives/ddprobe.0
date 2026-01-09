Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B4B238159
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767944634; cv=none; b=fCAseCLOpd66Fl+kRJsnMeFUF6/LsUx7yhm8uSdwoo/xF3aZCeetqXe8h3CFKZZYlJQT9C3muz2hzt5WYCVEdkMxAOtkOWsv1n6mD59qtIJRLa/HZ2b+6MBJgwNT/M33PFRRY/lwFANtS/4JHPpa2+L2zL0fov7pQ/5Mbltkp2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767944634; c=relaxed/simple;
	bh=RG03vZYSJflGw2MSKwX4zO3qMFwjj2iWbMTc/RPP1DA=;
	h=To:Subject:From:Message-Id:Date; b=iW7k5essXfSEW2LN7dv5OCNsjELP7OopdInjft6ebTs148nTDlrv57XR1PU6WQn03fX/OCSfLVU9YTIFrv+gT7mVLqrWsXRp/Xoob3L2eo0MOOJXDWCkXHCw5fC6lioUr2RGDJnyi9uVKv6qcIChWZB6sg/oCwVF21qeJ4AGP9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCTd/rhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCTd/rhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F35BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767944633;
	bh=RG03vZYSJflGw2MSKwX4zO3qMFwjj2iWbMTc/RPP1DA=;
	h=To:Subject:From:Date:From;
	b=dCTd/rhwTeBktgDdqmR1hm9nXYGK1w29dS5hjlDjbtKplvL6uPKwq5gIACWaAA3by
	 hmxmp2Zq6Xp0O97ZAEfC16SA3vGOpCrCCoOyQqcRvRXGnhZU8GqBMBHlw68tp3aIKT
	 ku2cau+wbVwxIEOqUSBNVO4SVn8zK0FIHYQi5DhBMrDvdA8+9v9ORoDrar2f0tZavE
	 ePmnqkYv2pBOKatrqEdTfe4VDdG2iKXro6NuMRJvwJ7Fo3yER0UwWSfzQLuwZbndy5
	 PHSRzdIgzZqcg4DY8YfKNvqORQKb9heIhf6lv8yhSaA2GmoxXf/9bLhx/LVhB7GoUe
	 vEv5jugcjLslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB01D232E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794463357.8741.8290442683513866326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3488b68969f923ffe7cc833d39144c54f0f7abe85cfed3cd7a807dff20a65f8
Date: Fri, 09 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767944633
