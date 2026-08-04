Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238641D63E4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785853236; cv=none; b=se4hNAChNdwC3F5cIrbJpx9eaIIEEVYQX4YOuaSZ1BNacAd8MVnyLzlKmVmwqHtzUsr6azn2st6o1sel9R5lL0V5wpLjfOR5Hw+voazDaGa1U66YewDuTHigN8uzEoFoUKD+RkyvhMTOz28kBswnIFFv5GeEXPgGV2Pd2g1MqKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785853236; c=relaxed/simple;
	bh=u6NgD0bgQdIZ8XH2gn1kzrcXOJQ25dEe/BZXJC1JUQ8=;
	h=To:Subject:From:Message-Id:Date; b=uazPzjl1OGx0nMu68zikZDHbgDbbwN42d/LmS4YMUMHtNMUxeu18lqMNBWgh9BEpfdcTNJFqlh5fzIxNuJZqSHg/srWfV6hNwIJFaOVxqXc+6/c4nlJBckp2UaFfaREKvfvXacp4JRd21X46JmVWZDTFel1b5CT1dzpgKbhmZig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEQlJBQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEQlJBQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF309C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785853233;
	bh=u6NgD0bgQdIZ8XH2gn1kzrcXOJQ25dEe/BZXJC1JUQ8=;
	h=To:Subject:From:Date:From;
	b=OEQlJBQdZgwGfv34jNtPyb+ZSFfZw/JYCHLxH7yQaINLNHARvezhZwCM0kZhCSp/U
	 OGNjInoHFGvNwik/2CZzuFm7HkgDilRAnaXazFdFV56j8y1c/+gwd5yKEPquWq8VtZ
	 cnP2nxDBL7gRxqmzUlCXzrsPz2XnWBG+jNcM7IsgyTzEulJevQgNXBUHf7JXuE5GKA
	 XtgibW6IbVj1TOPEBwDyizVCVVdRA5Ejx7PuoaLTcWnfTd3IdM4Cel+lBwK9c1hcuE
	 ivuhFEpcc/tqGOXZTkMWvmO9hEfWSfZKkXaZYSamaXMZL9lK5oLS05MwxJOuPJ0ENl
	 FnnYv4UVQyPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1CAC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585323369.7789.200152353471093286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4290daaabff7c198faa6a00d27583ecc3b4886e1388e60c75194168da9bb832c
Date: Tue, 04 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785853233
