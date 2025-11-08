Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092622494F0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762564194; cv=none; b=n/pdQUJkx/xGqny078JWpA6R5sbKvUNF3Rj1r7hJLeIgg5jmpxmABMGINQ8gmnV91mqAQE3/N8zbFYA9E+p24Rkeo4Gl+hazkvNG2AgOLs11Tdo0sHub9ij4Yghn7vvdeeF1cJWV1zLtyH5SQG/DC+FanMkZgD6Ha3ETsHWGQao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762564194; c=relaxed/simple;
	bh=8yEvYabjmjcFKitiLZJRjInadu2qZ+jQskBhRMfBLbU=;
	h=To:Subject:From:Message-Id:Date; b=DrbhGCmxNpjjdNaoMhClo9XH75xTe1BFESrctaHJI/FG5kJOniIGh7WqFcvqFfn8SoAgne8G7UtFC8fszDVlWIohoEXM7pEGI8g5ssFh1tbyDJNTm0+muq9BlSoRgRpS2OpW94v6jlqerFhpboz4lM9pTPSKX5hOt//i8NUxogU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O36HLrpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O36HLrpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D268C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762564193;
	bh=8yEvYabjmjcFKitiLZJRjInadu2qZ+jQskBhRMfBLbU=;
	h=To:Subject:From:Date:From;
	b=O36HLrpPIVpPh5Buu4veJurVt4twJTHlJ9VlSUlUGS7gNihLY1oLXWrv+BcKw8j7z
	 8/h0XK/dFLsDJI8qIUTn1pgLTPLw+vMuCTPegIwvt5MZyCs3VALDHp1TTGy4D68qJO
	 8wQb0AwOdxCjUDDs62S4uE0MlBky0UiudQsciswOjAtpHdV5zsu+xHFwP/9lThbM90
	 fxrhWGdD0yfvPZtJjKY20r4kBVn5N/JmMEcFpi8L+1xaUPT90ZFJBYun/uTD5fDku1
	 OJuTH+KqgY37oki2xvlON5QvQZ71TOiX61Q+my4bC2C+2uywDgxeyMYaJrj+WjD116
	 zshhIX6PxtWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90373CCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256419358.1192.17824766799485091095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67ac098fea20543ad03ca579f4444471a547fc3c919dab880c76198dfdb9c77
Date: Sat, 08 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762564193
