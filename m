Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B8286136
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714410143; cv=none; b=ECbck0di6Gmje6V3Y/YrxzgFtN3EKfCYQ3srp1TJci1iyJu9jImI5d49Egv78qwZ0SNDphJTJfD3BN6QBqDvDYo8No37nQVz8F0xlUCBbqj3AN5BlWJJgVYW4ZNAwAkYFz7iFZZIc80nZrNAyWmMBLrxve8volgeO4xlwrri8fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714410143; c=relaxed/simple;
	bh=/xHWZzSVis4oIutlEcbOkq7vZmWdhlnSLGJve46/raY=;
	h=To:Subject:From:Message-Id:Date; b=XFuirGvxtUAo4AvPovjNA8wgTjmVJJRMvKOKNC9nA+ep+YUI3R12/F1ZGgUxUVSKUCbZyYh/nn6xiS7hhb6db3TYVSOhQAWwRKe5DcHQQPOAGpddJkeBsRLFWtmHQ2S6zmh+wUBChoFCwEDa0O3cvUYlm+NYy001heJYWlhHeOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQnv4gwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQnv4gwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94D3C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714410142;
	bh=/xHWZzSVis4oIutlEcbOkq7vZmWdhlnSLGJve46/raY=;
	h=To:Subject:From:Date:From;
	b=cQnv4gwLnofaQBFLFdzltkaU6heMYCWlUlVTYnt01/LdQjpxoObbh9kPeL3h0QiZH
	 /rC9pU6u9D2O9cRV8GLeYgy6uUICC8Edz5sJ9uYiSJ3l4ERqM2y0P8Bt5mdq7lvjzL
	 ZirQlM/U5DjvXrMWX17EabfWYsFfOW1rsGuhavnka+sVaKUBK7OqWnIQa1BTydG5kK
	 3XxATRw8wX5HhWEonWuY8aie2/w0H8fTzed39D8ljpjRG9Ip98kLZSMCxX4dEotBHe
	 jZI3/4Y0nmPslNhhL8sOBQSHssyTY9w6Jn/r/wZx63cdHgeFx9Y/IL48Pvja4QC+ZY
	 y3WYH/UOiA/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBB8C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441014276.14793.2346376255989184166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1f26817cb2346755acbe5a2a3bf803dbdd5e25f12cbe9a885cab712a6640d6
Date: Mon, 29 Apr 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714410142
