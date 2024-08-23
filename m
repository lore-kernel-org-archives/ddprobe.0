Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66B12B72
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724373954; cv=none; b=Nb4+J6XsxnDtZHLfFfEuA0B9R2wNhMzb3ggxilQarfv6n1Z1I5FukxT3sDNW/ubAwwU8mYfKuiULd5BeKqxTp3F2xJe7kRlMnKNZAAfy0q6Ivk7bzMzA8W34Iry3gj99HpkvAUpCpY2AV4bs//CC9T5vSjS25Ab7khOIDVwu6Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724373954; c=relaxed/simple;
	bh=NH5+AC4CU/cffL+UBYWj1n2sFt3drak1yKZO/xplTAg=;
	h=To:Subject:From:Message-Id:Date; b=BowARhr3x+weGfMctPv56DuwMbmC67C5+qRXc2xiqwIGvdi8Emm+276Bhull84U0eWw0A0xtyKuX4M7cvEhG74ESC6Cpi736s1MQhsXLiwbldeYFsX3CknXjMmUAaTbZ0XMTzDZPGUTuqJmooydK3/9rTw/R1MLVd6GZ9CXUkFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDuWPFVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDuWPFVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A1BC32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724373953;
	bh=NH5+AC4CU/cffL+UBYWj1n2sFt3drak1yKZO/xplTAg=;
	h=To:Subject:From:Date:From;
	b=RDuWPFVK4UVCrLsv7WnrpGFeF1nOOcSBNYxBqGQxESO0FVN7or9RIYPl/WnmfGz34
	 3ad5PzYlrvjAFocR4efHyVh7E9CXPUpQnmR6o0Dii5393YYrRO3+1QNU5qv+xJci0d
	 cJBoJyrQQSxhDaq8yAaNIdfQlzH+dDP3fsk5UuoNJSt+GYQnafZnxWyxlN2PX9TPBJ
	 YdPqJjmRvBkWJ5kkQrX4CGuDtLq8HqjUOT9fuzbxvW/qUFX/s9sLs519o2lMuLlhDV
	 Y+620sFHcDux7MDFKecVgH0v2dLKfsSxYuRH/bGexZQGpqaCJJUu7AJrvaEdR/ABtw
	 47LSsz9nHnN1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A5CC531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437395363.4462.7148680498756528908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c03a2d5fb022d3b02fa307852ded7b1105bb10641d8dc0289e636099c4f032
Date: Fri, 23 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724373953
