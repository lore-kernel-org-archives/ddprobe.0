Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506BB222570
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738676754; cv=none; b=dWvamSg9Fipalc8YH/n8iHee0r/sF9raEDMBX21JJfjNrXqvqtxAfAoFWdOH/QA93fRdv/2mvGIXlEG8yROvcXiBl1Nr4f0dJQXhe+9eN5vbKe9THBK0azhJihgqRxyRrEOxMd7QN7ft+esgCERJsMBU9eTMLKosq4awxwoA/zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738676754; c=relaxed/simple;
	bh=Ff7sdz9kimXIKPzlqq2tC1Wmo3sqgk915DUoWMU2aco=;
	h=To:Subject:From:Message-Id:Date; b=pVKyfojz7M7Pb1lBSiiRD5umOJ1tZeuDrvdxQWRPc5inh7ug5LWgkCCT4G3+jugkiB8LL76ufRHAT+IQ+3Yivkb0Mgtm6V+Bqpcyse36qZCoMvrkP3YmG2hHrmYtk/b9zLyhKyHnwpGTDpxKeUjN//KypIqq3+NBegx0DiP7jnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi7c4Rsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi7c4Rsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5982C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738676753;
	bh=Ff7sdz9kimXIKPzlqq2tC1Wmo3sqgk915DUoWMU2aco=;
	h=To:Subject:From:Date:From;
	b=Oi7c4RsyRIUI+WyvYbgJM+AqT53wMocooVM79yy42xx3afH2O+/bKl+VkmZRemzp+
	 Rk0xHEly3INzRn6MiBEjtSnuFOYYJ07C1XD2g/Yi4a1uBzrWeeU2no2DTTs2x1xX6h
	 GZKXNh5AvzGixIH0XHloDumovPuy9fnz8diynm/5GfR51VEulLArGnxvtYZ51fQLHY
	 TETFGzhlphQKFh5HfJf2fn+Ij157h46rpR7Uvsg5dyhJ0CDQtptwyUzB5SijiS2SpF
	 YBDtsJBuLJic7p8z2g3T80Hp7yaGAgYl7xuSwEcrUa4cYetA0R/kIUtS+7St3FWxF+
	 htisSb3e2xrCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39EDC02196
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867675365.13896.12097198489231894754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a4c7a0590fa9f4e0f2bb17a9f1d92d9d83da2e56b3083944001bda3880ab5c
Date: Tue, 04 Feb 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738676753
