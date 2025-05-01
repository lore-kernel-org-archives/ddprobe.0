Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EE238385
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746142194; cv=none; b=O2/yFuI/4Jhqth1j1EiWp65vcicZFwPRvaVo20oef8+cR3CNUkLhFLAg/l3qx8uQI/2lkznB5ujCF+gbIAfVJuk3CiMJZi7KIbwLRXlxC0CfYpx7SCSmsBlc9qUS0Nkq4N9f75knTktyifpCTlvRKS1z4GzKmf+UHqdMR4z49GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746142194; c=relaxed/simple;
	bh=MyV0HyBJY1bCbjOYyEfqtxJ0PO0GurPhqvOGtT9QQjI=;
	h=To:Subject:From:Message-Id:Date; b=Z7HXVPWAN20Nl2PQsf4uw81aSgy0mMlQt0S8u7beKInUImuTo4JwaoVDW8af0V035OKpG7VwnI/opsmQUh6EP0QQSzNFRrxgP1Nc1hzyisjpMtTEGz43r7mfYRKBHUl2NogeFc140cX1g2AsJpO8Xfng8d7IdnfKl46qVmCIMtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhGIPeJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhGIPeJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB4C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746142193;
	bh=MyV0HyBJY1bCbjOYyEfqtxJ0PO0GurPhqvOGtT9QQjI=;
	h=To:Subject:From:Date:From;
	b=XhGIPeJB1thqe+/tIPWd/CQsIFJ53jBuqyPLWJURa2jtnWKa/MDYhzw0wqhGRAPJo
	 bdmIWAqkCmmL7DzXbwChG2wIhuPSC9UMFL4ZQc4LUaCb9g7Lls936rvuOWWNOj7oUJ
	 GCphVhfn7snfWCv8BfN+N552CbGt6UJSkrLMRQ7XEw6ubs/GsH8xUoAV/mLDzcEsW1
	 1jkRPnS4dnIJtMrwKl67YlAg6G7u4KDluA0QE/68yIyLpHG37jArJQQId1BV+6mAnJ
	 VfE94dBLrJe647z2K78exukAUKo0L40RMbnAOA+byWKL0ddRvCzxjfpO2WPxLWKAg0
	 3KQbZbccPoG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC99C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614219357.25436.11361000667594871603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c3d451314e86f2860b1b02638b7c72c07ce05899a89ab12194bc8b73271659
Date: Thu, 01 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746142193
