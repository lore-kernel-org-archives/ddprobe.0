Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249D640DFCC
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775321134; cv=none; b=WRtObQMDnQhNqTrWcLMizz6bcZ7m4uuxZrmepc4IeNoQOSxpzuycMHCZD3XC2+l21I6m+E4230FVSRcZQok8f73zWG/UYGJ42j+hDMFoH1lzu4VJeunl0mDWf5crj5T6y9pZT9E3WEI+J5aI8FIRPLkADBplxzuiicb+fBOnw30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775321134; c=relaxed/simple;
	bh=Eu0571v1+1P+A/X3fH5KgWEKW6DqE8fJac5ZfLcpc6o=;
	h=To:Subject:From:Message-Id:Date; b=lg5+wOJ1uHPJ9PzykBbXqPPTfjy646uixa8Ij/uEWtkogbfsG9pHWloDcflcetzlTMyhG2H6EfSNgHxGbdn+qA0KIBhQ18w76H9WdsEWtJP1Ve2gloMyncNRxalmPD1Zac99ktmqnJRBoxO8bsaSSWXSm9M9hOLhfn/SA/HC+Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/8UHsQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/8UHsQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B88C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775321133;
	bh=Eu0571v1+1P+A/X3fH5KgWEKW6DqE8fJac5ZfLcpc6o=;
	h=To:Subject:From:Date:From;
	b=I/8UHsQknZC+dpEXBbTcfcZWk+NsXoMhKJEM2isS45YnQDXhTEEgjxKi360GII5/s
	 s0TLJOlLi32fpG01OYsoHfeUIvdB1a2MScbkdqoY+49V/2YjJ6N9etKm9KJ0ThuPZA
	 u0mGxV4X1xWd85MtgcqJIt+iO0S0WGEBFX9FDMJujN6rO55Tiz2tmY0SLd9INjkzwa
	 Rd5TcFuC91Iloxd8NnfUcfg4ed2cOtuhdIZXdZkT+ORBSuHRvNHKrzz+WcEHTpfQt8
	 P28lB4ibfaY8YnGzCax0oSRuomcdHDVukz2V1xAlU2i7J6gzg8O8yH7tUUx2q3+iC7
	 /43hsmdoXL6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B989BE63FE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532113375.6081.1374624584095659219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cb3724447184512bcf49a223112658864cddbcfddfed6322db1a09b91d06dc
Date: Sat, 04 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775321133
