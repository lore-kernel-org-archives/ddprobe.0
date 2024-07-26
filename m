Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4224163C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721952954; cv=none; b=pv9Wwns7DAyky5jdlyOLQiKC03vpmi50RJrqvYHm0/96nNCEoJgEpaRb8uGgy985WzSLSqkCeGvYi2xF0qrRxJ3P8yk7TbTNr+F5Q5T9X6C18dJocv4jeKw7DeWXortz8Rz8PbQe2Y7PS8YQj4Q2tshkMjcIm0K/D6S+6YhnwDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721952954; c=relaxed/simple;
	bh=ajf+zLlFETisXkhhpCkSdmDf0NxVPCs43T9+jtoLBmQ=;
	h=To:Subject:From:Message-Id:Date; b=hXMcwpgQeg2OyyQjabKM6MdYulGV/M2x7mbwzU97o2k+xk6ClObo4VbUs5Il7wvvxQyR05rzwnJIJDcipBeKepji4W3v6GjfI1JSziPORDvU1uf8V3qd78H1K+GCmkvMW4FlVlxniXCBqTDTx68pzAYuIFBV6Kf/TT2ETK/EIkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICTJowmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICTJowmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8BBC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721952953;
	bh=ajf+zLlFETisXkhhpCkSdmDf0NxVPCs43T9+jtoLBmQ=;
	h=To:Subject:From:Date:From;
	b=ICTJowmrijfp23AZSGIzooWjQg2fD6nOgNH/lZYUCV1IzxiU6V1Skmdyxg+zqjoH2
	 MRsDz+pHPB/b6vpmfLhHKEqOh60jpVp8QWFnoWVFQyGUyI6C3vHSYNUpQsM/b/2MlG
	 ufQeR+a+OhMUHBHtDOPrRiRVP3MEM4CqTZU7kdaueR/ScREYnA19FnNNAIdvvbSaDd
	 vGPcI9za1ZfYj8ymZNbEE9TVr3yt2i79VVucgkpLNjBCIFXFBI32Khs1ofcUy9c9tB
	 HH1yDpXjukvp0GN+ttLDrNyu7AJ8PCEN9rm97LPoO129DQnmr3reee4iX5z6o2oLr+
	 ZUfYCOfiiAagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEADC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195295363.23337.13552451858454741406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30ff56071ce1e06f969cc760adafc11dd8c5156f4c9ce8311b309cb275748a7
Date: Fri, 26 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721952953
