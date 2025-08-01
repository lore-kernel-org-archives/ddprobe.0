Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227478836
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754008194; cv=none; b=mdERyTUVmhLJvScFaxWb8eCkPFpxMQaGEi9nLWNl4UG9zxXJF+bTnfkOPg0xI5muPcXoEbPuLovUsI2t388OkaSSAvkH4Vwzw0iIG2gT21fK400aEYXU7i7vRcc8b6deZQMU6gXc1YXFh6Fhq3wopG4ILh7ZYjWwNRVJHRULfGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754008194; c=relaxed/simple;
	bh=KRnGA55hYEsk5RFSo/hAQC+epY0dr9+B00gwLiEEsLs=;
	h=To:Subject:From:Message-Id:Date; b=X3Devv1NtbanalPoRK0RDbQvoKx4BgYcB2bdh8kQmckdwjCLWZXgCVzAr4gLEivL8PSpfb94DN4h4aIOZpOCF2JvDaVagNya4UbvNKFcOEUusJJsLncscDkisB1Lf5HfOG4pWhbw4cxrNzUZ/1B7+Kjs6U/SghY7TPWSxODzfZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2luCt0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2luCt0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E016C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754008193;
	bh=KRnGA55hYEsk5RFSo/hAQC+epY0dr9+B00gwLiEEsLs=;
	h=To:Subject:From:Date:From;
	b=c2luCt0PI06cVLMehM5gI9RWVXgZO1EvvS7nMciuWL/1uL3cWTa+b2bzQE3jBQoXA
	 y8eYBo4nY60mbIxQS9KCHyIAZWOD1r5FkAoqewZaJaBpwcotiO+AlSVFCgQnpreaJr
	 lqfb7cxCr09zLEJIyxVcW63+Yi6T7PF5khTjwpOk7/lci/Z6a0H9nppcc1DXWhoTIF
	 gW1Bhbh2mVeyC/9HpE3/b3aZTEKhKMOzS8H0NHZDwXOAZkcdEVMsGEieh4VbZlc656
	 /PkI9yUPaGsNe10+QC3X5YQu6nAFr5n9xia7DPuMp1sl8+veftnYgbVmh1axoVGUOn
	 v27YVo0ZqFa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F9C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400819357.10092.955365820762420284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f024e6b2823e0a4d9cc4db896368ceb36c9639011ae2b38f08a4f34f8cae5e62
Date: Fri, 01 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754008193
