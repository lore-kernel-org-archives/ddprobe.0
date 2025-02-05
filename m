Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A768228377
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718755; cv=none; b=CktwjuZ7l4P6cyYw2F6w220h57CKsEx1Mogio8w7pSop1nT1b24zJ7l+LF6YET6NzqScObJk44UNtdOhAJK3LFTXXqeXt56PUvWAR5FddoovUNohf9246VK2UmdRSGFCmVSw6doYiQVsdgX0Z2lfCJ55i/xXf26jllf9yedU9es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718755; c=relaxed/simple;
	bh=ZGY+eoZcCkNASdayn2BQbztVIQ1yxpdIuYn1s2Vu51Y=;
	h=To:Subject:From:Message-Id:Date; b=VRgu5Lvl9zOyrcfX6rX1bGy/92ro2M9mBALjzvfJXUr/H2enUyVCSi1DEeqx6u6bWg/+mx3Hb6cFqgQvcRkfOSuMqvTWRf4mSYyJnM/kSrcU38djH91Sk8mTvj4oKXzH2Y1JMLdRyuC4XYSjYSGHoK5qyKNpxlRaIzvFPbRI8Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/izAChg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/izAChg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC5CC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738718753;
	bh=ZGY+eoZcCkNASdayn2BQbztVIQ1yxpdIuYn1s2Vu51Y=;
	h=To:Subject:From:Date:From;
	b=l/izAChgQWHcxD34tBKzTne+idmX0oq1U8mchkOmKjw80nBR2A4MV/TRn9vw+EiR9
	 dQDbYqK+k21kq+ZlWbSGmXiFX+BjzBghIqSUX3iFiwxOiZv7vRDXriU/fSRDL1Z++x
	 RUUZSn5ajNjB9ZTd1Wd8PbTE8Lwq+kCyK15pWu5/IuTEu+djeJDROja0ktkYk9A7tn
	 nEAh8MFe8pWOEYx7h3JMtO/qDtqLdBnXtpbMsW9y68dZeM/cc3sUTOAZdaaDHDcdv1
	 NImkkvevIBfRIr+hvi9W35Nje47tbSQLTTdR9mjHXi79e+pRe36/jc85W63AozIPSY
	 bACZoQw3wsFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493EC02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871875359.13466.11689780224741732861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2866b3dbe5cddf8b0c258e80677233e1e5331830106294925213abb90f271ab9
Date: Wed, 05 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738718753
