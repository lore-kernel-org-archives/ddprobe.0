Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C2980BE0
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711657697; cv=none; b=uTyyLbulKGvLsj06APy2eljHV4Izsj4+XKMmJg2THU3qS1LTqbM5hlgPcXJDVRp3iy1GPEdROwOe4nGadu8/pjNjZXF0M52eXen1T2DVFldkKebx0eJ0JOKKaTFUaZFTdghDOIyXt/nnZvwGCj5fXMli5ar7PYkcxdNJoVMyqAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711657697; c=relaxed/simple;
	bh=tLf+u8OcJm+UYLc54revAUdIg4OdVmbbxefE2hPa5QA=;
	h=To:Subject:From:Message-Id:Date; b=pVcfArHJktRsLCW+eAMgt+8UOMmEwlD3CDdmsPEmJwC995DrSJ4W9zY+647ATqNrYPprHSpWjF4ZsRIPlr2bzu+WIByd9algB/pvlTIrsm3B6At15oVyPTNjAciDTchvkT2xOeTlNAGDzp0qD8FLH1yoMw0l+rvHyM/V0vivCnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT6t/TLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT6t/TLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9444DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711657696;
	bh=tLf+u8OcJm+UYLc54revAUdIg4OdVmbbxefE2hPa5QA=;
	h=To:Subject:From:Date:From;
	b=cT6t/TLUZsluyBUBw03abfDDKxiMoIv9F7VVGSDGKu/mpKXL/kwyTrDpoOWRpE5ZP
	 bGXQgeZir2R60x4gwx/Q16uI/xK4zihO7TJ003v1C8aQ+g3wjrnGZvCVh7u3YMtnQz
	 VMgSnZBh0R0QHouyGCJ6HqYMMj7ZxoRpfWI9kkTPz0/43kCvk5ReEQzXO/o+Cea1c1
	 Tpq02q9XT9fHg5JGlVZQb3Vyy0bxA/eX7qUOIWBx1Feu5A6Wel0wP9HJClm0BBE24O
	 k/VNY/BQnZXzk13urpTFIoN69HT37QSJSRaMBlvYa6W7IFmEL4imklQySqUjbfQ5Pp
	 dPB8Pmm4vaiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E8CCD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165769644.12135.12156809627250867601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f1c2e196553763f166fa68c481f07cfa45ede4b1973566d7eaaf76a257d171
Date: Thu, 28 Mar 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711657696
