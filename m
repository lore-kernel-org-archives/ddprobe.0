Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5D928EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708564697; cv=none; b=skf1Z/aTSh99pFVK5t/mxPTYIJteuvy623+heaeXAZmUmuoLHbwGRq1Fbv0gD/AEl5z/tUcLE1xoIkchTPdG5OMaREpeNRuW3pgbjNjdBcU5MlgZ82BONm0/9//PnyWUEu2aMThtvS2fqrlZf76ogmwVk1HBrh7ALg90igCDML8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708564697; c=relaxed/simple;
	bh=6Nj7gxtELoF0rNA/l8B5qlQkRWSIa+CnnzruoTk7ABI=;
	h=To:Subject:From:Message-Id:Date; b=RM4EKiw5vljyz22T5w3LJJZJ4tSYgbj/4tNDCmZFNmuFAgZYibv+X4axsm9WKuD5laLpURqmeCFTSg0m58EMGNT1L0qUI62J1NS26L7UtCzO7y/Af00SuiX4JonnlD+hQ9Rx0MfvuE0Z5zWhM8E0QSUP6hjTQfl/1Ydxq+YxjUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpdAmd0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpdAmd0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F15AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708564696;
	bh=6Nj7gxtELoF0rNA/l8B5qlQkRWSIa+CnnzruoTk7ABI=;
	h=To:Subject:From:Date:From;
	b=dpdAmd0fgkZvcMtOaSqYSKbi2wtYtN7Q4kOD4qj6Kyry99Tn6uWIspEn9Y94bV2hD
	 d2Oa1kUgDO1ckzG2Gde4cf08K6CbjRYEs5ePVs3P3sOexb6gDc3RlNm90Ndvf6une0
	 yLERt+EeVQnrdDx2fMO4Gt9kweBK86GBSmyT6UjY4o721js2lHYyvYLYSELCT/GWG6
	 wesgEyPkA3GM0WPa4QZVG5mH3R6NZEeWy90g5XWEmx7iV9OURtVJnv9iOqZ9qWNfPj
	 BGGK3YblMm5RjYqA5VDXcLTGxg5Nz2CDbF7PJMs0CnJ2g+FJxbLhFLBSne0v9i1UNt
	 7VUvZSvtXSAAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E37C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170856469638.13097.17499906169426405290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fe999cc6c1276e7e9308d05265a7b09d1d04940c046332c20c841cb675a7ed
Date: Thu, 22 Feb 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708564696
