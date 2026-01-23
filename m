Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E519644B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769133837; cv=none; b=pH1ocbvrGePN+2NRaCLxJdDJZqkq8xGY3xR9HRgplkDb6z63qFPNYIbFMMv0eygvnj7K7SX9xfd8DcXc9EGxfAj0gAjdMsAn+01+6InJsQTdY5AzwjXdoYtVKHm8seo1+uFPJMdkJ9yg5lfUNw21OLpWuW9rYgzTSXsrCYU7DXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769133837; c=relaxed/simple;
	bh=S5gJBAiiKRXNcvqRT5Db/hDMrQmAUrysMa3rTIarBwo=;
	h=To:Subject:From:Message-Id:Date; b=DOJYMgsQ0+ES6aU+q5PMKDpzwZBCmy7g54mM+MUdEBRNSw8aDKlfDfdDS+thHHEAxKYsdwug2sUaBOlzZxbTYDO6Vp2gL2/Y7aC8aqxLR124mDiDUZHG5U9YmbB8X6Oo45qheR7xrfBi5K9rERfFvidDYLokhzgbRwxpzW6R0kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAV7ULeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAV7ULeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0532C116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769133833;
	bh=S5gJBAiiKRXNcvqRT5Db/hDMrQmAUrysMa3rTIarBwo=;
	h=To:Subject:From:Date:From;
	b=mAV7ULeG9rUEvDOeekU0eqQ7BIatefX3syrMuHCFtPqpjqejNjWC4pgq95jsOGgaX
	 YqjS7bXQ/ICn8H2c5olZk+T7pQXm+OJOwuAzLkiu+Sl11Yim8Rbnf9DMjFpjWT+SHY
	 g4AH9hFqbeAcCu6S2M62YI3+I1ii18OK8ZskqP7gbzibMRyTHdSULUwSSO7CH7yGaI
	 gpjb6nBqnkh3qm9vZStnFUFarRMDTa7Cv/dRElIQcNekXeZFlalUx8lShWx3JB21Cn
	 2jhUgOpR4Elc5YCOOV3ehlVxnZQGlZI7XWOmvr7MU+QAD2uP+z8IYvkIM82K11xJx5
	 gg29ok9YoTjBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95791D6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913383359.18198.11410843318163322555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9f3820a781a2f7fe21ab8784a0e70bedf15abf108bf3d921132c460e69f71e
Date: Fri, 23 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769133833
