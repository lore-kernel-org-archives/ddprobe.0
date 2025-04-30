Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265E725C711
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009595; cv=none; b=nylMPpYdI9yvRJ0CHR+VQ9VF6LG1VlMYKYbdFexYJdvrZGiiyIh1pjo1ql/YqKaAkmZyYBUxKYo88uBAxof1IQrn+ctSaDB0HtAp0NucyyfTpjEymjgvW0TruZ5iASvVoWuu4mGz1VTaB/CoL5svX4LnHRDPT/QUflpygakSC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009595; c=relaxed/simple;
	bh=zDZgzAZWg9EsJah485kt9viChWm8tdXN1A/afNK2TYE=;
	h=To:Subject:From:Message-Id:Date; b=jqpdtcjwc9iFOILXlv0xHs6ntvgjwoMPcSSUb3UYHDhzK66YLC2DNqs/Urs3RklcEwUJpchp2S1hrRZEUUZt3bPALbi0V5U346NVPGYHy2tYvj3Dnusy0wLf+GWMt5VYUhNMXw7w8LypHIIAEnTRl04kmG1gDel7ZhkXEzqTJJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfcXy9Bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfcXy9Bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5381C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746009593;
	bh=zDZgzAZWg9EsJah485kt9viChWm8tdXN1A/afNK2TYE=;
	h=To:Subject:From:Date:From;
	b=ZfcXy9Bk2SLeVC9QgyBh/9J6pbojV+flTCz45rZF8+WqBUR5jL9ko0QzQqQu5z16a
	 etEodjFDe0txwY84xYYpoQiHUnY9gZbyXF2qoSwK1DI7QEAPieCjcGsitCEccz/xqs
	 Qc5PEDmsXAHIkZvcI9FzLx0s5l8pUvnbNqdZ79tsf2vmzkL8opLxCbcviq2jE8jsyY
	 PjyE3NmL3f29jIuWUNF9PHsbRZfJJM/q2ZQqMj62JkdJQvZAEtJ+i1hgH9XHGrOFWN
	 b53m2ttQlxGZffcQH4ZYpcc5RvDiju+yWYrqMHgwVFRzBSP1roab/M0Rs+0xuEUyUI
	 UI8y7EEvv1a9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E2AC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600959361.25333.7957419433203230026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf3cb7207111b9f5286d505174c0181f37bf503103ef14922c5d9cec2d775c7
Date: Wed, 30 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746009593
