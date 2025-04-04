Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEF3DF49
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757194; cv=none; b=CELOV1gUn0xLYMRftdGY+/QVU2sGYrrt4nDlxeom2yf9mv5wXzcauGp4K22Srgo/W/99xnmRb6FiNKyjhKbsbFfgpimbrszKIX4mMFo444bRZ1Iyn0N/88JbdIoSyAtbc0rA5qB0MKexwPIkEJUcgTdVCwifjBwKZUIyJdWLI/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757194; c=relaxed/simple;
	bh=52c5W1vqfpyviFNTdRbW3l69JX2Jif6A3d6wHpMHoj8=;
	h=To:Subject:From:Message-Id:Date; b=rIUrCX+Su8yMR2vPfVfift926i0c7Rn+4vodmw+bJComIsduuvr6GJ2gtO1inFLi5T/6x/yJ40ETgihB+wNgAGk5vK+G5UEcmXpfPwwU9s4oc3I9F6ZuVckaZekQY9sVJF4TXAgZUPkzttpA8FbV99D7QO0N+iLpUQ+LLOw8M8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnVAMk+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnVAMk+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8386C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743757193;
	bh=52c5W1vqfpyviFNTdRbW3l69JX2Jif6A3d6wHpMHoj8=;
	h=To:Subject:From:Date:From;
	b=qnVAMk+li59aJQqOQJXqC0J5KT/wZMWdQlRKQ+tXNJ5NglEIXqeKw/+kB6P7eK9ew
	 PAq4e3nR82whXOg+2ztnJ1Z5r2DRQqYfMI8Oy61xWRo/asjVh7+7kcsobqICUKT/Ow
	 lEzPek7MJfgmZn77WErpDnXRHaSIw7pexW+5L51jsh056oSmGCcORgGppAqfFRRLNs
	 pL57aVNWlhB+dgZPHWFx7Uxxk1IkGNwidu9jDhKLF/C0bnDuKvh2MBFY8pyqiOH3Mg
	 YcQr7e2r4HPU297yhdWnmvQHXNXSCjZ8J8DuEtONPTZYqFXeupNUZUb5kOPVnLXAF7
	 LtrQyJQ4Y7X2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691CC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375719358.27727.5542053333883253798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b2cd98bb7781c2112f4472ed8edeaafcbbb7231a229db982391c90731a2198
Date: Fri, 04 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743757193
