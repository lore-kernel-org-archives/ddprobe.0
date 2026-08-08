Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A01A36896D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786185634; cv=none; b=kVhaxEcnTeaCPzmcicTfAgYMvrCTnev7sdLUKo+aqZWTZzM2ZSSv3dLVqFM5T7WddZX//MB/j4X37Aaj1Icv+LcPzoqc/B8xapDfw1Gau2V5ALSFRNb6Q5jcxn8EO0PaIx3jkoPcuP0lpblrJ+13uVnvHJ8DcyQV8KvVMMv7JXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786185634; c=relaxed/simple;
	bh=55uyDg9RFCgj0txF3WU/Sk9tNKRu17rRi46vaDNechQ=;
	h=To:Subject:From:Message-Id:Date; b=tUOBPj6QmesyqhQcZsxpdZCgPWVxlPrPUwv1lWc+GCxvAVmKUPZfb7izcHNEQADEQ7VTKlrGt0dzVWpTInIjDkT4jvIZrnqWiWNFRC/whwPTsRLVHSnQ3qPAY/1CafSKkLg4Y3LQr3gZSGsnfDlChUVYNXNXlwIv6WLqzYumS8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my+goydV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my+goydV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E86AEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786185633;
	bh=55uyDg9RFCgj0txF3WU/Sk9tNKRu17rRi46vaDNechQ=;
	h=To:Subject:From:Date:From;
	b=my+goydV4zt/rw6wVeDBhi8Taqn49nzwynZ0tw3/EqjesBR9hlCF6iD9QGajdE/fW
	 OskL5l9BcOIQZnYegYlCwyIiB6xn5ITsyrwYcMxWCY6pblNBeYk9HuD1TPEXhnfTs+
	 Wo4w7wduoi933Zxj/4HXRrLJQFvC5v+eWV8kl1etT+1CRv7dE7UD/8607/WQowHZcg
	 XEZikf0+GHivSUsRpIpr0xviKKPKgx4HcO26CsefQUgMaZPMt2anLXamw9mq3ncYK1
	 htKvZCCv/V6wYDYnQRiUtG6cuiFdpJu5GRmYx+p0qWc/wQ5lNbsgBjp+l8kgTGh3We
	 sMoqS0sZnT58A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1796C5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618563374.6516.6581055080180524570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b1058b7627037f9c89ccbceddd4210a549d3f9b731d548f8ef8f1a79d06ad9
Date: Sat, 08 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786185633
