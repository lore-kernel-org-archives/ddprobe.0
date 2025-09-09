Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C233A019
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757437794; cv=none; b=sUbRszVlIC4J31H6/dATh7qGG/rjVlAAf+0horMktwBkJ1s6A29aaQKZoW3MTZxETJ3qGBOWVLOvwUFtfUhhPEBWivzMar0kXV2YVZNm7brEE0pIFgR9YkA7hjqRw4p0U2qJItOysNCf+Z4knqd9zkJPZjQ5lIyiGcqu/WWgeTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757437794; c=relaxed/simple;
	bh=iTnn1quZOSLHnJIbkDsQkjbF7TjWsDgzdW2OEi8cnFo=;
	h=To:Subject:From:Message-Id:Date; b=a+rvBnJTJ0U+BH5qR17syTZ5eACg5jAVTFowxQbdhIOdyDPq6n0uMixo2ll53AjTWkxwtZMkxHTOS15hWLt6C+/brJsYZimDdNYdjpp29LaaZbR6hZ+46RoqObRIJiL80JFt8mOK35kvQ4SkeH57/5rpOsQ44LRf05DD2h4dHAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edgcsvb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edgcsvb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E31AC4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757437793;
	bh=iTnn1quZOSLHnJIbkDsQkjbF7TjWsDgzdW2OEi8cnFo=;
	h=To:Subject:From:Date:From;
	b=Edgcsvb5v5oxPRJHMeM2k4bXLZl7vNX73Hb4T66RE32HLmx8XZuCITTZObgZshRxh
	 82iRU24E6IfnJ7piSO9xjMN0m80/2ygUx2EQDQpLoeX/PfefBBjcsipxy2F6KTt4A1
	 PULOEstMV5d3OQV0dsrwUDeJ7+BlpR0cl9COtjibJQtnmyi5w+YXFnqWVukAy+Nsx3
	 SzJwpweg3EwBejgp6RKmUVNh3YMzs0yT5CbL1uzJ5zJC8/+wdFgtpz0RFoI6FH7c/E
	 tuvkSPX3VP1I/3Ppz1XKTTzhTZx7xgL88aLoSMSejqha9K8VoCRqV98qMGexQo8Dq9
	 l784X8ArURkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CFCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743779357.22199.2432777847603960084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec28a1c87098ab8fc6cfea311fe481b586bcd43ffd1b2c3d0a8733d920e766a
Date: Tue, 09 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757437793
