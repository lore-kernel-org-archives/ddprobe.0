Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3188F189919
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742797196; cv=none; b=EREzfQB41bwEkprKkjvIyRQkzwPwUX8ZYFR3CKvuy9KxOkn6gv1xLvERTZLou6sg7ddaSj1AOEb/1zgtZkz7qUm5Rbb4HCfPVfy1GkCr7toBBLzkA0a41reh6gft/lIRdHNlGMGaiiZPAD8gCj5/z6QBpqTzveLYfldK1JH+zJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742797196; c=relaxed/simple;
	bh=S/u6YVwebUONdazxmdA5cpA4yzXrdnRQ5znlkXfBp1Q=;
	h=To:Subject:From:Message-Id:Date; b=FjeFzxOI9WexFi5YOI1W29Qeo9C3k15bG1R4ZgHd0vBAk2Hwro34eZmnBSnRSxVsdcNhtdV5FvT/inU0gGRi32a4EhFoPlSUau5zquVmtjFe/NwUkzDDBP+JRRTqyfKXeFIJSn3c0P+KU4FCPhrpDvi0pDi+OksAHI5B2Cq/4Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPAmduMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPAmduMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA73DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742797193;
	bh=S/u6YVwebUONdazxmdA5cpA4yzXrdnRQ5znlkXfBp1Q=;
	h=To:Subject:From:Date:From;
	b=kPAmduMp/0waQ3pAnYGop/NgOZsQwrsDbxIj4C8EL3oaPT+MR1yH6JjvKlvqw9ixj
	 ZeExtoJaogkyY4rkxUHAI7rPOa5OjadA2JJ89xT114NkxjRwDjBoNCtSqO/qn9QgFV
	 x+hdJFUXvWPz/yIMSB+fcOU+xSQmu65hld81l7qVUBwyr6jbFJWXTsMRzxvCndQevi
	 2CTKVGdeMRpys0ypDJPa2zl+28ZmhdlCJ4YBpc8+c+xQyu7uUrywbxJLIURpNBNEhm
	 0d89Itblr6pcAnBrTnlQjLrQeHmMjp1in9w0TolSQdOzAPUKQq0tLW5R9FWsMnxits
	 V+NQo9TBfaMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94702C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279719358.2592.7937091942487319137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c05c1f2795aacc774999dfc468f068a8d93de31077f362c171d8fa628f8ab1
Date: Mon, 24 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742797193
