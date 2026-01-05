Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5703385B9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767626634; cv=none; b=rtWoVHQDzVcuDd0JcFKjwMZve3jl/jXQeT/8m0NFix/V2qPDxKv7sAM0Zeu8Z+5tB1Sw7g0NWibC5yfyEBqb87Md5zdq8DMBz7hzwXk3jBsvW8OTicFdLXRMSwFPIpkH8O6l3458A/XcUlfNBuKZMocbimF80qav5smZM+5C0YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767626634; c=relaxed/simple;
	bh=oI9HWeg4nJ0RAOI7EvqB2JS9Qlb8yitDDT/l8Qxgjso=;
	h=To:Subject:From:Message-Id:Date; b=n3YTQOtW6/VsQhTsgu2dCVP+ktx7vnEe/P6jU9LMMsaEoP2Zs79X8DCONPDGSuuMxAmCUT9DKN3+29YYLfvtGvkWG5OPKBF9mRtiP6fsEZcueNPHuRI25KiXDqhv4EBMbF/4U9YSlEKZ7yoUC4FLBkBSHH311BC/zsBOYYo0tYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmocTGg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmocTGg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16EC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767626633;
	bh=oI9HWeg4nJ0RAOI7EvqB2JS9Qlb8yitDDT/l8Qxgjso=;
	h=To:Subject:From:Date:From;
	b=QmocTGg7h/UOqmUGutdwA2oDIhgAoeY4gaWbzLh8iUuhe4h3j0P2DIPE22lLP6o6v
	 fdOZHVuegXh2kg6htc2+1JHxpD/N3TmXQKhQBbHFg4FO/gqPoDVGmXcymdOA8F7ZIk
	 PabRVA9jQ75K6qvebQknAfU7qSa5bzBnrFStkcFPD1jwAgRFeAzbq/lMOe8BvgDFn2
	 PUjlfV1cWMc5NR7a1AY19dX1W9QOPZKe6BLQ5BOxv8y0VyMTeu4NzoePu9QJ2Xwtb4
	 0a7XkGtV34SF/mNDRJdhRwfdQEDjYm4piu0IXYgvcH9pFYczBA+Z4R1pLhgeWKmg9P
	 MS5bYRtMcweXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2B5C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762663362.6164.17935257134104598884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21f5f60b03f6ab2ea27218dcaf30628a5c2f5bffb9e29790d0ac43d9362eaf3
Date: Mon, 05 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767626633
