Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD38360
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732769154; cv=none; b=IT/EF/1VSOzwxLtmeEXs3ajyEKko1wpGUAVN10GgtdtJjiIWrSKgXLpa6KP+cLt6USbolA798C2bq7y3L8B5dBT/nn84I1fsXLkuIbhL0sbTjAoje2nBSxU1X88mes3DEctC9h49+OnECViaEibI/hOwsrh5VuhJ/Mt6K1roSME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732769154; c=relaxed/simple;
	bh=endd+MRnrXgMcs9WPw/W9dYxeE5uLbgFrPvkHfds1n8=;
	h=To:Subject:From:Message-Id:Date; b=A+MsWVBRxIkvRaWUzZXkVNW92Vs+2MJaSZt5HhFB6mG7ghOiSLlJhqEkjzC+o6/zpGfN8ReBlqzhCHpH7XSd/C2QNLXoaSam8O1uEoleFzefTyu1jqb1xArD4QcPHfjV2hU62+UCu9BBG9KfxFUs8CjZ0fjGU/6vvMCu4VMzCuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikLUn13r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikLUn13r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09C0C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732769153;
	bh=endd+MRnrXgMcs9WPw/W9dYxeE5uLbgFrPvkHfds1n8=;
	h=To:Subject:From:Date:From;
	b=ikLUn13r0b8Ewi0q9Jlu5IFgmkbALGdnGFpitZrsN8I8pf7rG51s331lASy1DDHTq
	 c3YBsBhdpGqF/YrlmXYQQWtfqm5VJhLOqGC3Xebx8JmPCWQkINj//RMSU5xrBwu4DU
	 3Y/w9vI8BDhdDSDqBSxwrdCpxHlqt6PMWUEq1R/FjjBaekcEhah+X8Sfk70uPKbLnV
	 xxw0sxhPCc+a2sObyb0PbA3GQtK0T1Ux5zHijTm0S+fvRkGQqg8VZAYGCInyKbGwX8
	 UBL/FVehBs5ajdkgFEPDLdxri8tBPNjLP1oa2oHHKZwCpk72oBlwnKSuU3Lygnd/Km
	 jsmzKQNE+vc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EB9D3B9BD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276915359.25381.14846798252961555723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9aff1fd179ca8f05987fc86fb406630b425ff6b28aec54ec3e7745930ba662
Date: Thu, 28 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732769153
