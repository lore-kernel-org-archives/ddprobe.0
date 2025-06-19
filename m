Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37130E820
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750367394; cv=none; b=t5QISKTopZL0mSYdbS8r030rBc9cvMZcLWgj7SXAH5Bp1Jcplvq55Wpts3ijq61fT5ozq4VZ0/RxmhSWNT5UNMWicQvdigQ3cBB4fBnNaWuaBmjbWc/JUJvs493kLnmDvkzUszzFLzSLTytQxKCxbziJzlIisyvcNqzFUdsv7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750367394; c=relaxed/simple;
	bh=J+cexHx5kF8D4k/PURMwxbn7MZ2BVZkH6uBbYuP6WBo=;
	h=To:Subject:From:Message-Id:Date; b=W1CQKDnyr6PCXC5fbL9r9ukB2lKcIqlsrbI4prShYiYXga7hmBwiuiEWMl5m3OB/IJkSnhujtgsFWL3gScUqxach2UJlBcZZ4a+ByTxAXfgglOfrMQKByb8dIsQrlm11yA3Mj8sAuRnW3lecHaCA3eEPOVCLJsC6dhVmBrCG4aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFGNCXf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFGNCXf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD20C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750367393;
	bh=J+cexHx5kF8D4k/PURMwxbn7MZ2BVZkH6uBbYuP6WBo=;
	h=To:Subject:From:Date:From;
	b=HFGNCXf9bSYi9CEjIlSsqSlSR1PVTC350CuHe6AM3gaJBoKC3KUxTybJtW8ZmmZ9K
	 CmRmecHsJ8w+t7+o8ptoXhQUtSna5V1MItvlvqrmi4UYcADWOqvrx3gE8lfSS7CQEt
	 w0GJfwGvJElGZ+Jqnw9+U/WkdiWVOMC6U1q7UrEnc+Cy36eDI6h5fVs6RXBWQmtYEP
	 +ZezDI+zTGgjOjNPN8FVYnyBD+pLyQ/wIaJBlrzx1hw850RZCB8Ax8cn6BQ88Spyke
	 +CdRTAG3ydnbVpG3dtx56zGTPWbgpr5oBiKgeLHgtYx/NTmsGBS8lk2iGfNyOAKjEj
	 +Qa1IggS3LrVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A1C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036739357.25174.10278926119107837001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45077e8d391d15039cf710d1ceb4e1de028aa7610b3cc09a2624abd100a07437
Date: Thu, 19 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750367393
