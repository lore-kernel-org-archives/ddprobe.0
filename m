Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5781F18C1A
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716109343; cv=none; b=cGSfWpiir1UKlW2lY15Q33QPd/Yo6nUd31nal9C4h7a9MTxQfBhkDsAmyUwRwGGmSug2ubnB3sbIFJ378HqWOonNMAEuOc3+sn5+BMZmNhhXTIxZwDs4OFahDoaNiD1QgLmAvZjmZP78p+ZRGe/x143+YKkQ0bXEMvMTjy3tBLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716109343; c=relaxed/simple;
	bh=/c8bg+HODuj2qKBfHyTjfP9y6El9SqDXNycew8CKdU0=;
	h=To:Subject:From:Message-Id:Date; b=ZJ7m8HLULWqo6KjhIeUPGmJHAchxRVyyt+yY7cTbx4//pxbvcP40QQXQ8Gb4R5iiIIdzlNVSSqagJv/BxqlmnM8+eEBJ1HOsQfq8EPuM/o2EqNJuwOEVp2veq22dL3BW5tevhrNyKO0qHS4DVElaj2ZvXceZhjqdwfSl26qWvG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmMQ6jN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmMQ6jN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1631C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716109342;
	bh=/c8bg+HODuj2qKBfHyTjfP9y6El9SqDXNycew8CKdU0=;
	h=To:Subject:From:Date:From;
	b=MmMQ6jN7dXpfomu4D06QlKmL1XpAa5NlykhJBJr6Qr1eIiuQXdwMnGSw1dRcoQp9C
	 dahEp0wZkC+Q+YVMTzaEOcawbfFAdkNemDoyonmtsSUIcMHVHrktP5i3B1kF45jYB+
	 oLBWMMkwL5yvy1U9RE+WMHHJkiSW9OB9YfIBOACW3pJrxIezI7r3+NkAc1ZDYHGsQA
	 kW5Lpj1APyOPFaj4oIpvojlqgPsAtt1fUx+cdyCOFZfZaDJwE80ANyQ79MSdPhYVTJ
	 Ng2pvydgWDJmmIqFSmSTNHtxqOShCcdHlxzFqkrTenS9Myly1vo3AAMNW2JZl7+EvK
	 rmC6Uz1S6Lm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0A1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610934276.6717.4005418933477528891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751139bf0a20046c3376ad87e59b89d321e42146371b89a439984297ee44b977
Date: Sun, 19 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716109342
