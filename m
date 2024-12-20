Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424FE8494
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734660354; cv=none; b=WYmjZWoXwBsV1PtYtc/U7+OBRxYv5t58U9/XiOD7kbtD1lXhk1mWLpHTUMkKAIuGMjEL+ghfk0uB9kGQ+9zKOpkm+BneH8Uyq6U2irTdOqWZLEnYo5HNbuf+6maUlOX9KEOAdsARZzOC/PhomKV+uzqM6vfymEB2RYEWn7iu1K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734660354; c=relaxed/simple;
	bh=IFCk4+SqSc+3uSdWW9hj54k3tFx+TUd6vZ8UPCY7Jq0=;
	h=To:Subject:From:Message-Id:Date; b=qKVgTi4pgiIeYu17xImOdeN//E7CzaBlKy4Y3tQKShKf6MUwepmbCw/jTTvTnk4zqM2qaZ5jr13S8hi9y22fgnAuZKCxJtl+B7qoB9AOfxCRlPyudWMBwsj5MkWj9Am7c/B5OnQ/DyZMfI5y5DiU0lFrR+ssJ8ovZmWemHoP/c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX23G5aH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX23G5aH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6BDC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734660353;
	bh=IFCk4+SqSc+3uSdWW9hj54k3tFx+TUd6vZ8UPCY7Jq0=;
	h=To:Subject:From:Date:From;
	b=TX23G5aH/Cf/YGO60oME9ZloEgkcKWuaWiZWWplz1+/y8bLENSx/7rbTXMw8fT9dO
	 SoynqMBegBl55e+RI+WkLmuOQuhijtB/ZmSULowGwJOPEAIEEbUgrNj7EciSfvckfj
	 +Y6PvMN1wzkuQ1TCIpeM9EDnjYZyCEE/jInDFzfIb68gvqW+g3n25jIqE3Zf4nxXPy
	 AVu4NRtyrY7rbJw2BA6CTAqf4dYjPXokUxafLTSNBGXqAfWol3X9EPAVvLrw6xRx3v
	 Y4DktkePJwYPZPM0hgKxv459XjcHkWTuciPJ9kUci/9F4F28BvrBs9b0TreLewVBmk
	 c6yH36urEYBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D53E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466035359.23696.17702741386002093279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3640ee94b1fe70a3180e40326d597db3201d1e5f3fb3974437261727d129b86b
Date: Fri, 20 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734660353
