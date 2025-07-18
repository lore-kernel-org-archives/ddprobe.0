Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8218035
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752803394; cv=none; b=FJjOg4WL/ZxCmtDj4Dh8pJTBRF4TO5fK5gNVI3vMkyQG5ExdzQI9GXDBB0SXK6VVhqdkDgS+XpcOLuOxM/P5zrCCXom3neLV5DBZ6VrptHlJ55aSeJy48pK83AKLta7IzdVugmtek0duckkoYi2z8DMgL9c4zDtu8B4CbfNoMUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752803394; c=relaxed/simple;
	bh=twt5SZU+09J9mpzxxDpd5esK8S4byzvALMVnAcQEuIo=;
	h=To:Subject:From:Message-Id:Date; b=IZgYnQAuHwf46LSsGNEw13Tkm++G2IJY9bv8lo/nqfMEbe8K+fX9twmTp5olwhBuFIPVE+nzwE24m6W7Luqqjr4BoaEWx9rAAiUM2tI5C5ZwD0p5+i+Qm05havlx6obq7kXm/ofKeQEKqo9xKBVAufTM4lUjKE33VufyljFtauM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTjwBaoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTjwBaoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C9FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752803393;
	bh=twt5SZU+09J9mpzxxDpd5esK8S4byzvALMVnAcQEuIo=;
	h=To:Subject:From:Date:From;
	b=jTjwBaoHsDFYL3OfTTeTYl9JZ82aD07iHjb39ZVwZQU/jHiRnAX76ZInT/yoYOogn
	 Jmp3OY2IhuqIoIMzazXHjTLfwEe14GBdxig9cEDgFRY7yVhXhruRoc3ZXeeBWH0CWw
	 ZZrwzEZP+lTA1/XgNWbzFwZzjY//iXXqtMML3YwyqskLPESVyzo8g1IQVxnIdNYkJi
	 Gw12/M2qpITfGfbRAVw/E2HUYZuutS7PNO+wLKV6D9apLVZbRjgWeW9v+ecgrnOCIb
	 4MpCgiwE1ubIiXYzmyEo+syD6jLBXgDP0/QuLO+rFOBFlUPUrSJVyvOSUSaI+8RZuT
	 91qwy7pNLudpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F448C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280339357.12668.17286322121231741724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb4d30bf3796fa397d72e57c4d41852cb922ac19433273670bfce9a8cf2c8d8
Date: Fri, 18 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752803393
