Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF1327A123
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762016394; cv=none; b=EhoFz5msO6wozAmVSMKx2F5ovavlTQUoy/BxGp3cl6FlE+5FqUzn+qAC5Ve9DzCM9BrFjEIdY8L65xhVUeRgSPR0zXEUS1qQjkZblXbNByxlQMYh6ndHQSO5RysBYF22HGQOYSwbEI93WUde0sWhIcdjJ8PZcwFKqAq3QaEdpTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762016394; c=relaxed/simple;
	bh=mqIKQIOnDy8B/MtmydCz4JgT5kQpQWkRAeY+pErA+WM=;
	h=To:Subject:From:Message-Id:Date; b=glX+NQ6aq1ccHOhF3HfA5TUGH1u/+fNJMoUlM3GtyIA6YIahWxr8hwpK8Orr7XoPXwhdwJCFCOi2NvBWQiQaZKkdWvSLSNETZaykOMZ36eqsVmDcFn9Wvje8IEtDI+QbbVbXeFV2ceDlOS1O5jhjZo5it3jQ5njOWSbe14aQKzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoDn8LtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoDn8LtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE821C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762016393;
	bh=mqIKQIOnDy8B/MtmydCz4JgT5kQpQWkRAeY+pErA+WM=;
	h=To:Subject:From:Date:From;
	b=aoDn8LtYhLkBSY7zIPWdwUImVG6RR62zYFsLdnJOzfDuFjYQLQnsGvX8tJWWC09tm
	 //9wAEJ0fFPAyy9XvLFqCgvg1IWbzVaoPif+EHi3Gq6hFY6V4+LCcwIKIfiK/42msB
	 /U0zEBj+XWegzEQBUy1U149WmwhelHgDBo2yPb/78vyRL374GPVFVYocaugY4+sS8z
	 AbcbXu7G9gi59EEjF/JETI3RVgHvabrMRh/BJVnyAL8kwRcGzBiGAuqy6bA/3NkURh
	 H4gcOKIJvZj7VnmleOIJ5U6xyUDVskA0zD11a+MlvGeb2JOwm/dFbf/b2/MjSP+YYL
	 VfaNdytIolQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9506DCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201639358.31879.14903885255509959581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf44a64e65f743157a16d86d833f5cb125243ebbaf87f39debf7a31ce01a2b8b
Date: Sat, 01 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762016393
