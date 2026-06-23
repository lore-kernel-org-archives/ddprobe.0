Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B5B30FF27
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782231994; cv=none; b=RcHSltXlxRqNhhZxxmYC62GS0a9xEG1wPuZ2VpcSe75HbOw4sxj1+KOrCBr2j5zz75JAGh9eNce5c9BPyZPfBlnq/JRUdtlCuCxga+zW1sQR17gYa/bKI8TkHLBxY1V2vzzYRUffKNUjxYiofGyb5DVYczXz+8DvQU3YBgZdHsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782231994; c=relaxed/simple;
	bh=vQV8knXLP+brd2HzZMXkOzb3VRb3KAJ7xiij4jej9DU=;
	h=To:Subject:From:Message-Id:Date; b=lxjNOctX+qYg/m8VOHGjA/UUI/CByIt+KwY9xWu58l8p9PWQ5PFHTzTORZeb6N8BNHClFeIZwQmsXD3q1OehVVT3SAlglDxld80muYFOD+0ozPoIIT7bLhk9s6iHFosmt6Sik5H4FnQDHThdM8OwkXtb59N1QNM5LXOvav/4SV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU0ndDCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU0ndDCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C952FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782231993;
	bh=vQV8knXLP+brd2HzZMXkOzb3VRb3KAJ7xiij4jej9DU=;
	h=To:Subject:From:Date:From;
	b=RU0ndDCWvbG0nzMr9vxd8SkzGkmEA7koFH4Dp0FBn53CibkhgWT5koBOjIPCdWVWn
	 IxlOiJwctgsW9tuv9YI7bOWOv5VUQRAvbHXx0zsJA6H9rDBDl0xZpQXxpMXYWjV0y7
	 YN3HvXP0e4vYmlRQbYsSek6hYg5dG7s4GQUvE++EusRtZuknbHqybQtDZrWKsVeV3v
	 Bjw+zZ2WU/+dZo+eB+QqdftIEeDbzuWgySPvfvR5MjQf42d86ORsMLKhuYbGYsiF4q
	 rO6E4J4emFFB0DooVmxDAPx0nJM11H7eGIX33bQ8RcYZL9zYHTJepkpXb5mUUwwHJW
	 aTT/lpo0BxQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEDCCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223199368.21365.13623153778358718864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5fe22b54bae7bfa953d1cba2310618cb1d8403c2daf94bf8215717b0336f52
Date: Tue, 23 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782231993
