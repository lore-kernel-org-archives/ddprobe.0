Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5213B58C
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791652234; cv=none; b=CVUY9kW7Qy0i20JfYqc7k1JrH/alvsTZiv3oz9OyvmOqU/38QV6V2Srlvie/gfIJItrW2/qju1e7r1IAi7+cypbEv8QFWrTrzkiVStclbNg50QUhaAUuF2K/ilE9p7D1T6l+fyF0ZBZxn1gMCrO86AVxgfhpOYdQDxpNaT+0O2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791652234; c=relaxed/simple;
	bh=sBRPjLFtoOyCxpm3yBtvsO2QuuTpA51SNU7yWQbn9rc=;
	h=To:Subject:From:Message-Id:Date; b=iwUKMDTtpsS5O3EtD/CAcptpPk9bFf+xA+3GXDj9gx76zIR6bs8UabmZqXUPzZqJc4FccuYzyZhRzTRARZxz/JoA3Qsfa1twbiHpsiMXH2SckI+zA+6c2FkE1m6hz7bljnzW1q+R+AwVU0fCfW/0qgp4GDAqpdEsmF5Zej+cszg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnEgx+Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnEgx+Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10EBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791652233;
	bh=sBRPjLFtoOyCxpm3yBtvsO2QuuTpA51SNU7yWQbn9rc=;
	h=To:Subject:From:Date:From;
	b=HnEgx+ZlacNYq/Q9/NgC/28d2YP7Bu4omO649uaKzvDFUzXkQ7QTnNa3fIF3GRfQp
	 JSwGaztYev+CqdPVck4oBXJY2YTwolbDl8vtGtbalElttL+4QPvZisDf6sOz7ISwGg
	 bcuVVGtgcnbwH3k9KFyneVQ7AkETRKlZmzBreBTX/h8mHvpE0txoOF8eFkQ1pU8Xqj
	 0IT75QCh3SBASf6lRatSX/S9BItJkvzPHqYNdUNAKTvY2yk946P30+/Y9ZYdkkBn0D
	 G+AcpsKBn5IvRsuR2s0HnBezu8cx/x+8x0AA5u7ymg9m/lV4dPm5BPt+gB89n22Cx9
	 oTF4dLTt1ztCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51ECA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165223368.25187.14746110081583656326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db302d67d8817332efcf023f18db8dadb3b25ad1fd6c83bbbde0922949f1902f
Date: Sat, 10 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791652233
