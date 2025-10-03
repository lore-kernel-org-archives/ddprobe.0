Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAC4146D45
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759531194; cv=none; b=GsDynPrnm19IRKVzAxmnldpoTKLJT/9ylRUlgA6vZmbEeixHnclO9kUHKqj5rt19MLWWGchR4LyvPgUUeTUGUgKW7uV1scdB3E3LPUNathCOm1DSgMwqjo582oiFDkzvbiO5zCg3rBS9eOGef9ywhQShm0raA66Ugy6UbsVZBpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759531194; c=relaxed/simple;
	bh=e8I7W35/GM/dvlRrZQlT3qAxan82Mn5yV1T7s07BjXE=;
	h=To:Subject:From:Message-Id:Date; b=lcjAYqqwuBOV/FA/WvYi7GIa57AtsCLsDh31UFxEOWX2wfnq33GEYVucsTJ4FmoONGzG9xHnVb9Es1RMj6xaY4UdKg/6S5ZiOjjAfLYOHkS1jnUv89ttE3/vA9KjH+uBo5slp8mHnWtEF4roMlVjb/FZ6682r4uLUyMfjpc+b1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exMhL6zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exMhL6zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759531193;
	bh=e8I7W35/GM/dvlRrZQlT3qAxan82Mn5yV1T7s07BjXE=;
	h=To:Subject:From:Date:From;
	b=exMhL6zTB1CXDlPHFdBNmB0xKVecWnN5P0eP+0G8Vn5VlQoVhxJC+VNqiW2OC5D/z
	 TNUigFQw26DIXw+7PC5SZO9juc5W3evqdUVUxJFBYMx4GFP6GKX5wxZDA7HpKk6lsN
	 hCXizCdRpTzAIFesnZ/O2ssZ0WDra1fDk++1HW0lGQXPdSTPQrlhzKp2DF7S8TgVzR
	 cWOqPiw3BIBA1W2sBN4IKhRm2LsH1oC9kWIpCjmPBvlGZxcE7ceTSYDRYYmgQytLzS
	 VXJNMeNUTFbTlggdN0jGesSvCPvR4jlXJtr2TXxz7k7HlIZXiQb7uXMfcdRie7oKXE
	 bfjcnGGsXf2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D5CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953119357.11330.12476032203303793828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e464b290abcf2f05d9fba5029b5a3f52484b0c0ebb3548f403c1f465362038b7
Date: Fri, 03 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759531193
