Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C398258CE7
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744618194; cv=none; b=nQjDQnBRDs4BQgOi2OPquMNMr3InAFdYHgavkzPjnQY7cm5kyfQA+kUc96f7xj4II/VaEAhvtY/qzMyHggPW6i4DYnlZ6l/w+A3uDb3qqxz7V9lLzNmn79dcnO5F5gUeiUV01wEodKJc0x4OZlcmAhPyol/Nnt/VsjJnxJEJ9NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744618194; c=relaxed/simple;
	bh=4ZTqp5HeLdX78kyION2wt1iKoxUTuLhg/sRJFtc0fkg=;
	h=To:Subject:From:Message-Id:Date; b=fmHZdoisZmcjoBUFvYFqT09sSH+t1bg+YBo9gZqN6typxca/v6uG4GRoqTMntJ/lY9njsY61FrB/sliZ2nzSV08I1aWPc0wUh6ZL4dNTwZGzIlCbEnLoUJvVR5qYTOOFWcXDqOb3o6NFGr1O8qET0gSTgI7svv3j/ymO11+3jAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2uHiz7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2uHiz7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01ABC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744618193;
	bh=4ZTqp5HeLdX78kyION2wt1iKoxUTuLhg/sRJFtc0fkg=;
	h=To:Subject:From:Date:From;
	b=M2uHiz7ZsWEP720YwD0+Sat3DO+b5+AnUnWGA3HA0TbQMnHpVqdXmclKlq4M18F0t
	 XddVeh11QVeW1FAp8HbcOXuqJ6EtRgehmVNMKK70R+KLv334+Nl6plBPTucT1z1bDY
	 HkKnfIwb0lIwCaI4R4aSRpeJs1Pv1BlCE5BbBzBybEi0KLPbuepeAjq+xFrFV/3f+l
	 rOPK0x3RGp6tBClKskFMfnKbf5KpPtvt1BtCcQmU9CNectyhfCtnDr6kY/8kAf/HhV
	 J2pHaviqwZX+uNhEej/LYyX6A6HrHG78b3R7F+uonX0V313E9bZODkQa7uefNkL3+q
	 2P/wkvzntsQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41DC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461819357.4047.13734039824896062996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e42e10974153f7934d3980f012fd6c5df53d6f5f3b4311d28fe027a57f13d6
Date: Mon, 14 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744618193
