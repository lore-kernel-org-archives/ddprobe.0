Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392BC2D7DF8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775685934; cv=none; b=ZyUU8H94BVt1ar/XbDldfyOJxxslkkHKbw7aIMT9kNl6JAE7XabdHRSdmNDXZRdKRgsb9q1T586mCd9mt34ZEdBB0pmQaZGwkpBfoZgVZAk/Ajd2fB7Yayg7uussXqfLrYWbDhZn/c945Sr9Yrs/hlWVLTp4672m48uw+N0bv5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775685934; c=relaxed/simple;
	bh=GmzKygMb4wAuNuT2dxIsR/6ilguH3CxmiU2/ltycvQs=;
	h=To:Subject:From:Message-Id:Date; b=jEh7Qjsr70DQmB2ANtJ0EIe0z844ylnRUw/6GAf4VF7HFtoakghFaUxgyYu+45wSHsNKApaVd2i5AoFidRm99kTDoJpYtnMmSbVhFSh6whYjUSVARfQAH6WlKImFu+vSo85rcFNsQ/qK0HbHYgXTx6G54uDdt2NWmIEIJf51Y0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0iB6gJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0iB6gJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43E6C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775685933;
	bh=GmzKygMb4wAuNuT2dxIsR/6ilguH3CxmiU2/ltycvQs=;
	h=To:Subject:From:Date:From;
	b=L0iB6gJTNrdsVHQVjoIxdAgJnr3BFGAOszrC10DC3HUoCJN3iKByzjo4NEUBkdrDk
	 VtQH5V5/wKt51a+7BjLCBsQ4G9LWfeq5q3O0r+ZLBxG0YFW0nuIfsfTdXqu2Pt5+b+
	 eeIuQsx36Oja0c9HP/RUG4n6RLwz4XlP1x7RgJK/Fc1+Ft9hOJ53LPjnJNY2JgswM0
	 0aBnYlWaJGo3jwsm1BeVG4yYFoYWwzxSNE+p4tcKiAjg5f6ysKkphKbS857oFS7IfL
	 Zm2Y7sy3D8miES7eg6Yor42Ao6Ph60NLHRQSyNphFkywcqwYXXKdSNjc3c+TOzRi69
	 KsVfZTua5nj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FFD10FC454
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568593368.20163.5058598105533078453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d67d6301e2b3af35e96a7685a77b65ba0d2bf70083a48ff1adfd04a4652578
Date: Wed, 08 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775685933
