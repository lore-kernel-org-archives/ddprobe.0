Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB8156F4F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712763497; cv=none; b=goYlVUG7nM2sZAD5GOhG052ZW6Eg9XjZXfV6shwyUtFCp2tVhUESQxqQfW8/muWEWmjOhTAUmY16VWVBvgWOjpekPs+mePSEdGRj67loMkGOx/WascSw1NyjqgXuKBGrr45nennwDR734QFCCBvn1Isi+9GBWPTXfWIt0JH/9EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712763497; c=relaxed/simple;
	bh=T8VIQQzwy9UG/EwFcg8H7+8xJp9GiueQIB8gWeLQpco=;
	h=To:Subject:From:Message-Id:Date; b=QHNfiCEUG5auxEmYcRFDsQV8tL3zvKjkXiJ7C9yr18FP6xS9H/r1urP1J4Ozc7CVFN+lqX3iTm82fL/vcZYI2QpAElZsVnguff+k4t/OMYFI27rlg/u9oQVZgr9p7sGOJix92/foOc+UOMD9Z6puDB4D7W+nvvyPvxdmxMY4XOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi0kJp25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi0kJp25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F39C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712763496;
	bh=T8VIQQzwy9UG/EwFcg8H7+8xJp9GiueQIB8gWeLQpco=;
	h=To:Subject:From:Date:From;
	b=Bi0kJp250kZat8uV4YTHZ6RotTqcyvTyv5by330vovnPEJ9N3mQlqAm0Ydq/nmC7o
	 2NYuO55nP4SDWqGiKdIACi3mFy6dzVnjQR8IJeeCVRPVrSnsCaL7qEnVxSHFFdc0Y+
	 2VePq0JAL0oN0z/KG+ym3rhWmEPYJxeyidXLzynVN0y8mYYPCuPhu+6DpCwNS7CJ87
	 b7Z2llon2jtr0hQpQ8m43TM0dBsRdJjlyBRz9iQwAk9Wk8VnJVC9O87jvo3XTwfY9R
	 wfkZUizMmmeRUnYi4pISqRNQzPUbYEed275P4u8g/eoDQrB3t33krW7+NTUkNVD+qa
	 tRztrGeXnmOHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C34CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276349648.650.2395921267092604768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c53515c7229bb39dc3ab2bce0e5dba00683659846539ce9b36403447d1b5cf
Date: Wed, 10 Apr 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712763496
