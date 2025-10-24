Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C152773E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761316193; cv=none; b=N3tVVBnDVoYTcoWTE2/+KkfErDSRF9gX0ZCAF2fPFbwwfAZIbqwCYCkdRMypawd3Y4UBIZYdqAMqpyQPTHSlX1HwHg+WTDXxS0j8zpVJdbDQ+c+QaoApsjM7O/ePwt6uD7zgZTMu0QafpIHNgU7XI6rLtKpv4GqlYLGHh3ISSqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761316193; c=relaxed/simple;
	bh=k1BmkNFjwUoUz+EyjLR/hDsB9XLZ1VTpnrY9+HBgHPA=;
	h=To:Subject:From:Message-Id:Date; b=UOIRuVOX9gumM3ZlCGIJ+PiDcqv3wFBcB+t7MV9IEw7Dq9YOR+n36ZKh4qnWTjElPPwGEp9hJ+EJXBR8Vvz+gbBIgqxou+LZgE5liqbXrJL3v5Y4B5bCUSfm1ZNfln3VZJue+kwXu0LYzg/wp8hQoE5kYc04mbvDU1A9WIHRrP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TguVcDfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TguVcDfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761316193;
	bh=k1BmkNFjwUoUz+EyjLR/hDsB9XLZ1VTpnrY9+HBgHPA=;
	h=To:Subject:From:Date:From;
	b=TguVcDfvlGWApB220Kz5tHjoZJYn2af8DsxZX0YuXYH8M2rgo0xKpSiD9SWHZWCHH
	 TPUWoo+nRYyFwwX/hwudW8fMzCGJYmqHbeJ1qL4P9cnGmpW4CxfQ9aBJHBQqeFrMSO
	 dWCl0+1n6xlQTL3JQlSRhKjfOJQYIStw7BEer+QG+Vwoe2tBeqAqcatfWhU9twpu9L
	 UxK7/eTM8UJRikkwg4vGAYijcRGHpnmWQSWv59udvsfxG41SRAz+7gaCZ9yex2xxOY
	 sBKdWw+PdUoX7bxsl8dfEAwk/EdljhdBkLNZV1/S8CXC8o7rit8tmNic3wTs6fwsDk
	 ZE70DGiY8utzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ADCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131619358.9646.10221908205157616954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd81e1c4b94b1a26ffd2feff6896fd1fe393e2708e474446fe9f5967c53b4d94
Date: Fri, 24 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761316193
