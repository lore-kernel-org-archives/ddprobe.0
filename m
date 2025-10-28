Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131302367D3
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761670194; cv=none; b=TeA1iGyiA/+LWcmTiTb466c9Es+nKUOq5e2bxTTuXbcw/NlQJIhxj4j18RQriOzXmja6T0GpNJ1UgWCbnpD+2uU6nilMfJ8rkP9PXzg2xpg4odtNDCIPhjdYLGV94aut+/6g2s4tsUaKd58APNry+Qo3bGT/tEgYe42SkdGsX9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761670194; c=relaxed/simple;
	bh=HKCNgnIAuQA6enBQo7kcEw2ZvvAb9YJJgMV7on/PPiI=;
	h=To:Subject:From:Message-Id:Date; b=XlYS1kEDl7TZMy5i/eMzCUmZUoSnNa04prYz9ClA3NVKgCI9XZI/tVAZnF2XYqU9XOhb3+r+LyyG0GkfXZTNVXNLY3hCxn689XQaEd2igyH4VE2lUhGB4vf1rnnicCnriUS3nJqFNS4iVpUUB9CC3IvZx/WiJVNgTYz9pvXnmgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2rH3/rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2rH3/rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D05C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761670193;
	bh=HKCNgnIAuQA6enBQo7kcEw2ZvvAb9YJJgMV7on/PPiI=;
	h=To:Subject:From:Date:From;
	b=D2rH3/rMmCX95iJFCbLX1Uvs0gDC/uyTsTo/Xo6sJE4kUGKWEj6pWUc3SUcZcvYRH
	 T/Kzgu54f7Mj7Yvh4FGHHxor8v3mRNNx/vJuDleZe8R7+yW+0hL7AAJGbqcAlNuUGN
	 6bAqqUVz3tvFqnNwogheruiQr9XR3l5gTXKAdf4RdC/jPoOGeXOjvntn9SooK1SQ1k
	 /3VZEDXijv4Mb3WQH8eYknjipjQM+FPnFJyMp98vSHnviSXf1DcppgNFhV/DSmLM7K
	 H+/Dr8UC+A9PILc7E5a6Ks0/qkXiFFeG1cjrw4dv28u9HKOOk0RLCxtZPtDsVhM7xv
	 WrA6kTW4YaNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0CCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167019358.4517.16527850136606011053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e152d9d80f5d7ffd5e9185a329a626254da1b17215efe7693f37188fdc9624bb
Date: Tue, 28 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761670193
