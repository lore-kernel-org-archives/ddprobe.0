Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266CA3BBC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726034154; cv=none; b=pe9iwCMcRg+PXf604LhqNELz7VjWA+/+RRv3qcMwieWNzMvM2P5vaknHJJ9VXc0b37tcb4GXKA4KxyZKfoQt3LAOCgNJ60P5QAjA3IoqxOJej4pfLEJRR5MOqDub5M1e0cczsduA8F9o/FBpfeOrr/jOLGqAWPt7P+kICC4PJyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726034154; c=relaxed/simple;
	bh=Gkp5ott43ldrgNCmfM4JF4ox3qLVMZFCQ1jY2nAlzpw=;
	h=To:Subject:From:Message-Id:Date; b=kpuzj8A5ZuLznxtxWNWlFJSsPmru4YYIAKmfJsz+QaUspFyukBKeAGkEZtcW/Zw+TKoUEoDv3OIzLcxGuN07jE7Y7noJYt2/uCu+/H8BfMEh6CGzHXJ37bU+a/1HNWt+pnoaVrHyGUE1yhAAunTfoMDH1l96GwrFYs5zyNM7its=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbHSkD1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbHSkD1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7192C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726034153;
	bh=Gkp5ott43ldrgNCmfM4JF4ox3qLVMZFCQ1jY2nAlzpw=;
	h=To:Subject:From:Date:From;
	b=XbHSkD1wqZjHDWEuTzHANhdwU4V106GZ1VCFXb7pkxFyVNmhERZJZkvinY8ZEteFq
	 CeQ6+umPbCE7Ms4KOhGgUl0uVbScvZnCcfSptTInLJVYoaxk/tPLk0qtukR317c4ur
	 Kumeq7FtU2Jnny1Wi9ibY5RUtjJ+4yMzFIyyhNQSiTV6f3qKRUAfEnUd6RXg7BkKOB
	 BdvuUj+FDZbpjNnXJlCA85cvdw3xAo6YUNaakcCO2hfzHSbLvvhmsl3TKF7u3LjDfB
	 knWmFXdwOyJwSG+iSyucvoCMlF+z9KJUBJ4VdDNRwkv6SMWA1DWwT+0tRM/boBIac7
	 g5TjCH+ppU3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19A7EE0209
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603415361.28777.8730823523085345047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc0976f41323c591690d5b0a5648367126c1b867fa9d4050387029812beb577
Date: Wed, 11 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726034153
