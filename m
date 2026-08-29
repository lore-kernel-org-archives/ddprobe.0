Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E19D3191D3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788030634; cv=none; b=T83/Yd+OZz28SxoBqG4zqkPIGSt5B2uQ3makUMB+qQ4KB8ZWxA+hCNV+NufyDOqXvi9URKne6FNn8cgokTxd3wRiBtLNdbQmF4Ewt5hg0XZFja/cYZFZXRgRPmWvrrlzduhCISOEfLg3dBTTsrtbMRxPvZMCo5KEjNAxRHFUP2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788030634; c=relaxed/simple;
	bh=K+FDqdNry3Rzpi0oTr6/CEXm6uzyv7ffhg8agqUZYyE=;
	h=To:Subject:From:Message-Id:Date; b=ApelQwgL4AImvGZsFScaawr0hgbLoWNm/L5ZGkrfIqe0CA5ZfmAbIxFuOB3udXCG2Hya3egqcb/3LoQyaTGFs2JaQBoYLjxo2KO6N2TOv6ncsqJxxsRum0pf4G6+DgJIsRMcjFEzYMU8fCECb0Sfqp6a8EN0rHIXHoeM4ZkikvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKDzKoUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKDzKoUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDBFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788030633;
	bh=K+FDqdNry3Rzpi0oTr6/CEXm6uzyv7ffhg8agqUZYyE=;
	h=To:Subject:From:Date:From;
	b=OKDzKoUIG200Du2Fj2+lLd3HHQaWwdJ8KBYrc+k7ScJw9KlDfG1RBzw10eHykpxLj
	 AtXm/DwEGql3CTND+Ffzj0vZVAQiwTkbCkmpW+1xkTRpuGGHFWV+PbPK65BWTQG6ku
	 1jfM0kUxeThaZLhK9zJqP8sbnpUSg6vHsdWQVJtM8CGmad11HKPEnqpjKUcerpHUpQ
	 kVN/MVy8vtrlGyzLhw+PP+8BdHoNGxe2c07jR6gQU+QdB+ffhXD2ccKS9S80OjmBzD
	 xY44JB9Y+QAsXlVv83ZSVDqAwmHDOEw3GJ01ub70rnNgUWWk5dBpr/mSsmz0ah1KKx
	 CcQcgng5JxLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB112C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803063369.9724.7015695504849035110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5459958e2eff5593d545cf6ebbd3e810ee812d49055f382437b58dba7856b1
Date: Sat, 29 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788030633
