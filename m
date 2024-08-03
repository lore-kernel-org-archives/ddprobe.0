Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0F6112
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722707154; cv=none; b=VgqFkbwdbVc0nq7XNdCuaevihll4pRavsLFHcTRMeExIRPeT3Y1qzO/00RJt8y+N7BdsBwTYPTwRvQz4yAGqaETCaVzL655DZyUmPyHYQ7wuIFsy7HgJme/lT+W+s94MDpH1gK0vIhBS+JPameOAQK90N38AkCd1k4DZ7w3QKWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722707154; c=relaxed/simple;
	bh=ZMO1oFey7F29TdUMC4nlDG/nwldxPXitA4e+Y1JGO8o=;
	h=To:Subject:From:Message-Id:Date; b=g8D2oH1mlwYqrd8Nh6ME809THMSOUGTTvE++LTqjfAdjxhWuvgqIAE7D0wm2nS/yWWs/MpyFmyOU3ilUjBQv5bgd3h1UYa1qe56YmlW2pC7mxxO76vi8m4k+JGtFMILBn2cLTcbn1IQOuSdfX9jRL7YIDCs5tE9TGe9h/Zw9Bow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS/WcJdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS/WcJdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C06C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722707153;
	bh=ZMO1oFey7F29TdUMC4nlDG/nwldxPXitA4e+Y1JGO8o=;
	h=To:Subject:From:Date:From;
	b=eS/WcJdNNeoTP+JKibI9DmPMqqvxjuhhJNeokcqCCOqOBFEAnKr33dxUOluwmTW4P
	 b+Ja1+QHc2OzpJrZU7xX4+M1yStaKS5LTLTVFeMjUKga7UdV4+4lA1jCVttYgXknJr
	 tic/A5HUHttei/vXTvVRJvPiPHdscmkBO0RFCDuhO3b3qoNIX61kWKnwvnPCHCJ4yh
	 fu2GZkVfjGKKpguOb1+U6IwfGYpVExgRgsSsZFj0lS4M9uDHqc3Qab7M2DcmJxCd2c
	 2DQZnnNb6Q8D3zqYHChuAC/1cCy3vPLWGx3Z/lJojTfhutNyOQxM05wd9Ht9s0kyVf
	 /S79uQE5tSxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC38C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270715360.11598.1156198925091149417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e3af03876cf99957e17f25bdb80450417539e21f4f1c86f0fdd50d289a436f
Date: Sat, 03 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722707153
