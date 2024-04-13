Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0909D45BED
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713022163; cv=none; b=T4KE4q5LjE+5NZyBQr1s7/RQ9KTQHRAJUiERuPfH3b5vLKVAacyNP1QJjpZ7vdjm3F+nBP1HEc7DZC5ADjw6AQJBDJ2sRsNnDlEKuUSbVCzFkIZym3LB/hiywN3eMPua9tBqVo7S1nIzpltcy4SFOy3UoBy/XmTY4NAdrVUh9wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713022163; c=relaxed/simple;
	bh=mmogt2A6W57ruNRFGV20OHZa+9uIlfEASjJFGNAg+AM=;
	h=To:Subject:From:Message-Id:Date; b=n3Y8rFQBKU4jrIlI5/nCqt7d4y4EZV6wslEQVBXYNzJq6SUAB6s7OD7PeNGFwZNOPCDICo0x1xutazm6nFf1KzBKS+zWNLUjQedUJ9AIVi7lEnAPvvvnMKYMtKPnrA5Lo3ph4zl6xDMSxjNdkLEdssm31rhTZuKrzMCrsexnWwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAz4Oben; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAz4Oben"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2E8C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713022162;
	bh=mmogt2A6W57ruNRFGV20OHZa+9uIlfEASjJFGNAg+AM=;
	h=To:Subject:From:Date:From;
	b=JAz4Obend5HDE+QxgKG0QUs05ZsSygKzHraqPoqlV0yHux4rATC+JG7ALN+/64gZ+
	 Z+EghpiTUS1KRlUAcFwQhqMHRsZxvtyoxsacOhQvmuZ9hgdvmi3+gx0GE+8zJh7Wj8
	 L4JZfz/wa1CBJjC3KipxhD1I4O+M1tK/03JwqLovjEW2MEkJWOkKky50p9v2r50bHB
	 Fs/u/SnFyjAs1SvSyd0Ds41m3Q+9F+29xFtZa3mrONw/YrUkprjifb3B2iVc921Aj+
	 aRUrCXAUyLt9wxU4tYaW41XOopOmNBqxTm5PeJnZHs7m0qkcIiS8dvb6709mKsCVFb
	 XTHlSzCUTd0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D02C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302216278.7294.6499520410927431063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb9ce39c8e6d2601bb0966713ce56aeebafbe6550ef3cff87212af2ac196921
Date: Sat, 13 Apr 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713022162
