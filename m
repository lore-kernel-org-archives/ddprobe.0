Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7F286281
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739915334; cv=none; b=kwgAYlC7PcETWxgDLj4VuW46d5ZCYEHWw1ABLFHTzal784zodHn/G6pmGDRR+14/ptdlOHRZsBW2Vez657RUMkVn6lk74cJnqY+VROKhi5fDAVYj9y9ykG/l+fplGZLlqk/avdQM5PXbPEOcUiXEGC5tqTbyCR2p1RvPG4AgOB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739915334; c=relaxed/simple;
	bh=hRNB97v21Os/UbE8FkYLLeqxmjPBYXcprcb6OMagOB8=;
	h=To:Subject:From:Message-Id:Date; b=Xmk6iUwsZANg30UPIgXCgPXc+SDzjbxaMjYUSZsZqwIYsPMgdW6SV/JnD5MNxCQU6sWYOANhesi2thrMf1/btUMfQUT+jbykKNtYFDxXtTZDYYDk8N7EnwQ8TVg7IMwT1xMadjCy8dyR0YAWxdqZzdTeHGqkFpUBoS+Gvysx594=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i50V/oAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i50V/oAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF7EC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739915333;
	bh=hRNB97v21Os/UbE8FkYLLeqxmjPBYXcprcb6OMagOB8=;
	h=To:Subject:From:Date:From;
	b=i50V/oAKbTeciGXrGnG70Npc59KYc7QtYYXxJC0XHxcK2yW0fnVTsnTvdsa3JHoVt
	 EtYwKOdGzLixxkcBR12stVhUSdCzasCfs4UqLI34lzldZtMNKDBWWJ9Irvc7Q0lMPv
	 umZcRLDRUXEuHST4bCrnD83YRnNwfwXNZNVG74wrIlpgL9ubPSn+6hHxQ4hDLaoFVC
	 kIFFRWjkGwVG435G9wFcJ/iVpcfWTds7zAVuX281P4lrNS85iXmtp1O2chPw2M5+EB
	 v9gE1VdaNcGrJmEl4dLB8fFMSc3/Wd3k1QaRZctw3EnKWswwTIX82uVQJIaLKqUsXU
	 Mn9g5BWOQReoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA191C021AF
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991533368.22355.698785854649880883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124624f4046d01532452af7b6dfaca3171f33b8e44933deb1cd35382edccc790
Date: Tue, 18 Feb 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739915333
