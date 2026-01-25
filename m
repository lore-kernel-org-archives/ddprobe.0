Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1989C224F3
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769348034; cv=none; b=t8hk7Q9opwZQXdj+7gBiV0xR7dtsL8sJrYQf/ftZEW0MME6UUpkVtZF3KuIrbICsfQ2tRUeYflCN7HQTdXk/oX+h2wxApkCJ+N0Dx7R49kHHlZExTBzA7ER59xzPMAqbcWTSGaFpTbFjf0nFsKLfKEdDXRe4rGtIOqibLovz/oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769348034; c=relaxed/simple;
	bh=mZzf7evAqgt2b+DiX/YO652a9Dc3c/ynA+XrWHs908Q=;
	h=To:Subject:From:Message-Id:Date; b=YOGcqmxplUQUezseczZc6VigbrNTuuafcUXLSCiqp/9lnQ4j62jqUuziVa3sM/C4vzPJGx+nMUCc9k5K9i1/+J4C0BEIxv3huv6niVpv2DJB6oRinzdFLVk06InEVUqO6ll7AiVHhzUheJ72oig+FLXo6nQ5+mPNZh8tptqRlrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNBbDk83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNBbDk83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7249C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769348033;
	bh=mZzf7evAqgt2b+DiX/YO652a9Dc3c/ynA+XrWHs908Q=;
	h=To:Subject:From:Date:From;
	b=DNBbDk83jgZE+ZDUlMoKnRzpHg8xsTV4fkZfaTg01bkjnhXJZx76tp0ft7ZYj3D3o
	 5WfCsD2rWjVRETdG4YEvgeh4DBtGw78Y7e3cLe65gl3SR+hzD6SLAyx8VxEPw4v6yZ
	 duwn2Jc8heyOEYG2aTChmeuX5mZKbyeJhQyRjpWKKdZkQSWNk3EO+SC3rh3QymTvo7
	 nH0+RVINCMAXxhL+Oj5W1HCbjkvBFWl78aN8ltwlHafLV0Wk6qTtTIFfDOC6RzzoUQ
	 P9YRJEbq678WswI5dTTOmxwAIemhSHxa8Cnmv8SES+7afGdyY9ENGv9mhqVGiixh+p
	 7GSixmdgVkpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95170E63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934803360.23563.17169465078190519236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21cffc41357da044dba2879403f848412c8d26c6f206d270353ed1034e8f6f8
Date: Sun, 25 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769348033
