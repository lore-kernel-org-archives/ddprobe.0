Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD3215E5DC
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761009594; cv=none; b=XTqB9mneQuwUPQHqnaUxk8SYuzXHb4T25TLxO/UpcOGkbo0A8PPbaQ7b2yqu4OM0LQEahj/OBRBf3iDwxw+P1OZBinFXj+JbgSNc3NTJwtjAu7qNHz1kxAS6vt2+97eyawiWSgsSrTm6L253FDatPoaBfJbAEhDjbZ/V/26H8E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761009594; c=relaxed/simple;
	bh=ztDt1YSX2GUNzeOw8AkRsMpL36fNrA20nCnKq/yuxvU=;
	h=To:Subject:From:Message-Id:Date; b=Jr/I01LXS+G+FyL2wE6tejfE2uN7CgvkiiuwYQ5PLqDGOjZVnRXoW8qiZ6ohA4CQows/mJWXB0oSQEBFptaQjb5GaEYiFGHjljM3x9+dB75BXmMdJ5BV73GjqJlNFJ5JKpCTm7PPcBVZP8tFyVH4KQBROngW2GGnVMNifp2u/fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgU4EWTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgU4EWTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF1C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761009593;
	bh=ztDt1YSX2GUNzeOw8AkRsMpL36fNrA20nCnKq/yuxvU=;
	h=To:Subject:From:Date:From;
	b=JgU4EWTr0e9gkcrkQd8Vcq7DiCYwM/8okDyjiXwWvzbq5XE4gDtawDZG1NtNiGqz8
	 JfdWOJn+OAARbaNtMMWkgCRDL4AjSgv7QnEgqXBRWNe+1e+3EMAy94Bn+v+ABQO0c2
	 8bONLSvHN21yYeQetP5Uf9I6zK3attwA8pSaDmWy4Kq4kg5lr/+2KgG7F7IEP33FQY
	 5Vtx0YmmZH09axEuN2FCr+32ubT6rTgrW9Xk1J7BgEKdJmrKEbNJiCv9+nGe4UikUG
	 xnlbDQKL6Lw4zzkJ6YpJ5B/W1BT4MOjOqLWGdqjZpG5lK2lzNaoAMSXp1vToOr5HRP
	 n7A7gAtCtlxZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A148DCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100959361.27907.15146811793627360279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a1be30999a13d79d4627a492ed0debb3bdd38d807760504de8c9bb30a3a739
Date: Tue, 21 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761009593
