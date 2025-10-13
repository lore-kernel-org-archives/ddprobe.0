Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E9A22A4D5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760366394; cv=none; b=pxwBfgvS0G00BrKJP6+IyXGykSqPzWhRh1PkUdjyV0AuhtAOL9kkwR2rhzwSlTINtIWy8A1GBlF3SivAk+jUjYHjF4Y3dgX/FkYzh5TvFDrc43wGt60dR7wuarTFoO4Bong26Opl9K7rj95v1xlBes2VYa48OVxWiQuvzY/7Myo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760366394; c=relaxed/simple;
	bh=LGVjKZkmafTR4BYauEE9cvOxtzRiwAfVl3mxQsdx4PQ=;
	h=To:Subject:From:Message-Id:Date; b=Rft/Iqx2Qfh1vFiUK1FnW4sljE08cPJjEZWoPhqy0i0qy5C250bG53KqiemXcc0bqPKU5sYuev3oV1yhKdL70b6G26Fk2kBZJ80OrmrerGz2nSz7RCdx0OE70AE+Z6exuljtNtakzuPcm8OhknBbKp6nKgO3uhOFTZGW2ivhgHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WE5mj3YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WE5mj3YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C021C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760366393;
	bh=LGVjKZkmafTR4BYauEE9cvOxtzRiwAfVl3mxQsdx4PQ=;
	h=To:Subject:From:Date:From;
	b=WE5mj3YG3L8FqLvgywZghw6Gxv/spnLlrNBmFLcb9IK44X1fMJaz+0mjVBXLPrBoU
	 GLghaM53zQpAZFlAle1fcGlyfKhdRG4G+rxyxiONLTa+AIA0gh2ibI6Gdw8eOW8Xjo
	 l1OBUiiOOtmsHD5ZHtkXBtg603qyYWZrrJHfFoI4YLDLXy6XLkwSDZMz6w4g4YcPSG
	 M1dgndNoWTn77PBhV2AZUDlI+UwUhXh3L2LFvxsGKLB1ggdRutK39/Pp64cBgGFeMB
	 ebKK3OCQKHYzoVXOnUcSo3RnhKoxXWarF410v1bIhQ/rqrHKy1bc8ichKAQqFbPbSa
	 Kj81wVtexsG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDECCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036639357.6436.5995533358969462900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472a078b3976a0167bcfbe5cfca6d37f9aa81c6afbb76fc08a1158e412c6ef04
Date: Mon, 13 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760366393
