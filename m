Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556036A36C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785750634; cv=none; b=GR05Lt/E1TK/beJhhtY2+E6AOjiNWfPF4Ck8A8MUSdzsf62j0XYu0P76KX4dCQo4xZ4iQ3CVq1+LvimvJuiBJbFZ2ShU6ltFHERD2IvnuxtaBwQdPBKLsNJl81Jj6p1oRBv0+N8rRvPotxnqKYhLpbIe9ku9dGEEtPxVIZJSeRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785750634; c=relaxed/simple;
	bh=J41JUYNehJVTF/I7ufwJ5gQqp2QLjbeZ/SHq3iWOk8k=;
	h=To:Subject:From:Message-Id:Date; b=HockI92pce+CweDH5qrJonmiHJX/yNJ9jPoeM1A0Qrl8ZG7EYOIYBuzAeadmvioi068ylqA3yqVlschHyVc3MH8jQVgoeGt8pweGsvXLp4++vvkjHvHaB8NpD7uRG0dYzaSRuvo+LZgCzXMdDJ39YB86/L15JXPjlvnKMFF2GqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxHi9xqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxHi9xqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5B8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785750633;
	bh=J41JUYNehJVTF/I7ufwJ5gQqp2QLjbeZ/SHq3iWOk8k=;
	h=To:Subject:From:Date:From;
	b=qxHi9xqdX5VAT5M7TZOiAWvOwMVX9jjNNYNQvR+Rr/50MLKdXOjXyhOvGxFaTSS0J
	 lcklUbkqpNCsekgYF54ughJIFdPeB1OYx4LED3UQRlI3wtEVIXWNsMODjxngfUg+3G
	 F7ki12dyERpxZDKN/+PFMjmA7Ox+WYdCR81Wjwsa88etRIHBJaKLchim8SpCVcVx2k
	 16T6DyA0V7myepFQUwkIcSh16YhkkDdsj4d0W7dEsrpDLr16ggSrEPdjIrTOZhjavd
	 l3DBpnP1MSBjdd4x8Ym8LdVnlwrzA1T2R/2wM6Xa81gNMwv85PJ4ob5Si2Yqgc5wyM
	 2DZ9MYAPGSrsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4BFC55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575063369.23239.12860279941779702878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4475956ee1a32d8f8d4a787aadcf8b62bc66f1e8995f57fad1b644a584521fd5
Date: Mon, 03 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785750633
