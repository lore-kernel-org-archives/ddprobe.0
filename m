Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E06190045
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726587354; cv=none; b=SaTyxhXs42C9MraQ9PJy0/1uXV6rjZ4G72Q+Chn9+gGQB/2S2SxZP0D/keM++yumN/2KqInaIy3Y8o1GCPGEoVsjD0FnmauwuVXhRcWWQWANwDt7vqctHIktSF77i/gGCRc1hzrAeeRzLbWRWsdMCy4DaDgXveGW75Dr6LlSw74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726587354; c=relaxed/simple;
	bh=7Qis8fLR7EX0mK/4gD5jfWXWcc/RGWIRg3q0gKH5IFk=;
	h=To:Subject:From:Message-Id:Date; b=crgVSFzWY42R3k7ner/B8tkln6C/k7rzMp04w7eKH7vTNlREeY+7v8NVatonkZ1JQn2/bqH6vyMZ2bPRKZQjkuuZLtBMdt5YqbpnJFOb4JeNukuQMVjZGMOu0jIXoms4m0Z8emNmF89KfKfHgRKBYJQMYa52gcT8gJAgHgUIfF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcyBDvXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcyBDvXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD42EC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726587353;
	bh=7Qis8fLR7EX0mK/4gD5jfWXWcc/RGWIRg3q0gKH5IFk=;
	h=To:Subject:From:Date:From;
	b=VcyBDvXhF5LM+1IrFcxdG7f50wLvmgKxd+fRg8ys70dcx34bAQoDmcIvvS87eAp2d
	 O5MdYODj5OI/w+FPt52PpL5vI94MONRcyQRnVdBN3owVs44WZjyUimnQV1NkZm5SCA
	 MBp5X1kJ2HeIGj7AKxiz5bHy+kPFzdaiEA8wBVGUIQ9704p2+pQrNGxRKUQ2/HUlnO
	 T6zTVpXVWJ8eiztFHLFR+XOiHBXZU+ntfLn+Egc4akevHZKViwUaPrbcDkTc6RJoOv
	 +sgJ7tg4Mny5YNwBfTO49zg+bvLLOKY+SpzuU89cVEHSJPw86AAMOQrN0i++5Iw6Nr
	 6Mk7nOKioJlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E6CAC58A
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658735363.20778.5295796534649215302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4da1614ef5ab34894218549bb2032efe9d3ff6a6f249ce11385299cfbfa3f4
Date: Tue, 17 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726587353
