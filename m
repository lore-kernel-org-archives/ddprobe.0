Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CA2433BB
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726262754; cv=none; b=eBjdzSwPYoAk5AGJ0quzmNI+ezJ0Wle4E8tqukKOXwbxx0y/rJrlNSNPyHuVqRtKDxEdk0+KMM4tk082pups+udaRM8ivQ+LJ6ukumjPTLIz1+hRMYuPe2FeTzAdnWtDUw5dyc1uibTr+qstuWyEUK7WjBORo2aibi6wcpuptn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726262754; c=relaxed/simple;
	bh=MXOWONKfSD2OaIqb2+IQRKfmqeMHjtGEWB8pjqwhNNo=;
	h=To:Subject:From:Message-Id:Date; b=dS0wIqE09E/luCXzRZUtGqx5iTZkCVH7S76xPehLBtLGA6VV3avxixW+rVurKdBV7QZgRL8NuCg/7UsDAuAZz5yCATnJ6TUU7DTw9z1DVIaCyChnrDMsQuIU2FPAAmHLqVOWImJO3zC2ZRJPqjGyVAsIK9xtHhBk83JvDggYKQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAhfPCnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAhfPCnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4A8C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726262753;
	bh=MXOWONKfSD2OaIqb2+IQRKfmqeMHjtGEWB8pjqwhNNo=;
	h=To:Subject:From:Date:From;
	b=QAhfPCnbDuWdVndy8nZqHQg4bH3rMqUPdxAN9GIeqdDECMs8P6s2RkOp8pv/jt2er
	 T34Y55IMnwcvZN+fo/BzeX90k0WhIjJw8WmmMnah8eEOdYfNE1iXoiNdxxSBpez3M6
	 46rSs5RWVFGPRzrrE2q4u8si1yPjoURQDGqlgTxUjHdaGHI1aj9Zfe5izIBrzh22yj
	 PiG5xgY6hPHUC6CMtYm1DSKbTOfokDriBfwelhuqucWExHYADNB1tNcEA+r4Yb8PVV
	 8a+7kMFWDFzwzqZa+TVw+7EiHQDJoU+Bf6ckOvwdDpV/k2I59wbpijpF/Z1xEi/yn5
	 ZE7Na4hvy6jhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A623EFC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626275367.26414.2464956952245669143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bd28dedff9d12b5055c180926aa689a01ff9211c9e136eebc48234f5ecf154
Date: Fri, 13 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726262753
