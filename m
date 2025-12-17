Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FE3221F06
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766004234; cv=none; b=uuzIQAdD770dsP+ISPn20tocEqYfdUaUnwle8vITP3o7VViiVKN+DlEsl0eA2/yqEmRvPpgplq6Y3UysQl9z031tVIds73Knu/PN8FDDNJzw2g9BPdS2YYCdz/9FM8XaE+y+qYMmmVynPlCMZ5OEG/hpPldRc19iYsRlnK8h76U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766004234; c=relaxed/simple;
	bh=Lw6Oq2fxOb3oioFFzfpYAIwTPy/urcmZ1ov509lCPsI=;
	h=To:Subject:From:Message-Id:Date; b=qFIuA2v2sppifiq8ecOw/lgdmm23i4xudR8RXkZ79w+SU5JUC8qTu7DdijQKO8TcKaK5zzVJtI6toZpc9Yv9gMWHZO+GM0JwVI4nMAcJK3k9Ua4txcquK+od66dh8IwcmjX/1XIbe7GtV+Gc63tZD+zgPLw4i/p3MuCRUrryOR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mox50tBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mox50tBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F5C116C6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766004233;
	bh=Lw6Oq2fxOb3oioFFzfpYAIwTPy/urcmZ1ov509lCPsI=;
	h=To:Subject:From:Date:From;
	b=mox50tBY7FnVBQmuQ0b5+ZUrlfGkuEgrAlacsufMDWXzitK2IyxO+HA+CSpDGOnYR
	 fHg/fuK7s3UknWeAhEm8kf6s8iLjhCyeNITAWxkgUsiR5HUGK56I84SITq9EzO//v1
	 jDpJlVJr2VEdnxtl701TLwLmkLTXTtuZBCEqdFuAqwkMZAkbKLWzZj9P8dipEW/p5P
	 0GstPVRieiQmYCdC43GrK1qKAQkW8SkNY98/OnxkNsoYCItGZd10Lu5qD9667QF9zd
	 2iw9+IdbpCc6YwPjT7otiwyxH1HDOp930enqMwBg8Ba+YDM0WE0S8AthcRASlido/O
	 c7nkYzT7hIEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6ED66BA5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600423358.20195.9022589568010995177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7b8df33bdc46c2c41a0ce775e4c5ddc4320a4643d8fcd1463f2ff50443132b
Date: Wed, 17 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766004233
