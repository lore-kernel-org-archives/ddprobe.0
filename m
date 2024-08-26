Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2848E19B5AA
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724708154; cv=none; b=NvJoi4elRaA2VT9M27RK0NRklKv+5M6fVBwn1WnpHul+1hzO/fyX+O4gbL9aXXkJoNt9/Z1X3tDw4SZubdBTQRq8YDKOA0fIVxQ36Us2VMSd5FqZWV79V+2gqpB4/gsExLCzIoPeugDOW6NELP9tBPEfLd1Ta3ZvBdm9LNq7RUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724708154; c=relaxed/simple;
	bh=pQSoxfWhpMm1k845Bi9/DOye0nRBK1zMzLObs8mDYGM=;
	h=To:Subject:From:Message-Id:Date; b=dEC4cYtCMPclhx5tzmar6gyMN+QMYLGVzf2bNjp6KQbRTKEyUF6SEjxIA7jopg9Zule+vvDkMKhaDVCuRMxgg6IFwMHIyn1w84PZFctTE1r9SDbIMjKQ1ohIrzqIb1hCxluCJK7ZBCTBILFWn1dF+1bd6jy7e51fuFOCTDWJ7WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKjU8IVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKjU8IVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193EC8B7BB
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724708153;
	bh=pQSoxfWhpMm1k845Bi9/DOye0nRBK1zMzLObs8mDYGM=;
	h=To:Subject:From:Date:From;
	b=FKjU8IVlPXes+xhsGWrZlV8kErfKt2n1JSCcgJH5n9M6bFjTJFeDP8QqV5wLTOmIJ
	 CNiUXdnZwE7LiFoxnr9aLai3AdEUyeYoAievuqWNCVALIZWbu699wkkyOLl2hCyT9l
	 zymUpuZgqaILqbcgMjJ1Joh2AdqOV/hcbxJ24OVfMSo1gt8RG50WA+gInjHhurjmFo
	 q/3aMCiy0Yf3IuumPszukuiwqYvAogRPxpOy1RAtz4x4XWd1r14Sdfam07Q+08YMVp
	 l+TPjdy/y4w6JiELd2jHMaFQ0NBJQwANC7uxQhJn34a8nwCkFNJH9eNspEHsbPLAA5
	 sDc5BbHPxBM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92110C5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470815358.7974.13871704036256731792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dde6a161dcadccffac385d58aae23408dc95fbdd76bcf80929577fb7c729aa
Date: Mon, 26 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724708153
