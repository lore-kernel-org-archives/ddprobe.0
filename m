Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94C19B3FF
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726738553; cv=none; b=GaFNhYtXxQq9mysga4zKVl/au6oJqjgBUiLm168IHWqFDu1U8uZgH/1pNsuwEHHYoK/hZKYebOeiPaTmLfYrGeUHffXB7CkOs+1PQywUqZvnNfKWUrRpdj5VdbwdBTuJGrUV6Kk88eTelZgH48oHNTPjdq0huIVkJRWxBLX/SIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726738553; c=relaxed/simple;
	bh=tQzrWUjW4Oj8IM3hqETAQhXd/CP6UWskO2RHVksgiKc=;
	h=To:Subject:From:Message-Id:Date; b=iemHefu/t3Y5Hebb7b6co66NmkP6EzIDWV3J3tFFup7isByZ5b0nXgU57XcEUDCbbranjCX5dOxUV6C2dxTJMLFXNspqetJbwmLVBTcV1G067BNSmYViEFIqdrzpUe3Mb/HTdvX6yT+/1wvXjDmjPRpJDs6ibrfk679jUcYhTJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzsb2lJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzsb2lJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0509C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726738553;
	bh=tQzrWUjW4Oj8IM3hqETAQhXd/CP6UWskO2RHVksgiKc=;
	h=To:Subject:From:Date:From;
	b=Mzsb2lJxzYjfjHqSQeCPzjQEjKSKSKz7EptlIgk0Im2fAzQG94cWTdb3E9kJRC5IE
	 fmtlBpBCsefnvKPdZ5e/hDjtuiV4y3H2TOzdsBjrbQcYKnFGPOPjuXLNnemkeAtnIh
	 GdThhPBRfDQcID9KuTgMmkfFxnpgEiS7tmE1ejD8nkmP54rY4oM28CYczAcIQvXFTm
	 i0cRDWT1K0v76F6yYJKtmSADKUthkWzYlOcDR4ZFj1Ajg0sGzQqes7bSB37+xntnzX
	 +iE/GNvyafI0sJAJcF/X+bLTZ3g4iQblUbxm+EH1/r8BEGFoILZnIaVn9O9yAJ45xl
	 w8/7UbM3SRDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9670BCE8D61
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673855358.18348.8274692863892248700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e17d9564bd74bc92d3422957b28314d5d9f1b032af0c67bd60472700f5f18a
Date: Thu, 19 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726738553
