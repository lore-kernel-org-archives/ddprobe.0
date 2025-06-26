Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1747F298982
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750930194; cv=none; b=gpx5/6l9zPeDjFOjmgMJvW54C5ADEr//4tEA/oELqMWvi0pnkTTKyHtxgAt82JEsYKNqQHRFDRbshnWZHvZsf+KGmfnQp+T7bnNjjsuBhuDzIKCEfzqUSdQIUsHZ1PYJjRDK1zh3LFHWUy7DW475gvlwlqtsleyRZ173GYYBXeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750930194; c=relaxed/simple;
	bh=e1BBnCdLKbztl1xtC7r73STSwEXLWksslmTbzGGfMzA=;
	h=To:Subject:From:Message-Id:Date; b=GrtT3GFYgB1VjiIFqASD3ON5pNxMQZgxPGuc1E7ZLjs0gOUsvfWIo+kPnTxOya3/FDieUIAT7u+eEoopgIpcoZ9IFY0SAfWxrcJ3aKGPgZcS2iTwmjxE2kjz83SiJbnHYFCoH8KCEtJSrFQ3/tNzR2EKTZgo+u9W8NMVYoaHWkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md5hFbNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md5hFbNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE18CC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750930193;
	bh=e1BBnCdLKbztl1xtC7r73STSwEXLWksslmTbzGGfMzA=;
	h=To:Subject:From:Date:From;
	b=Md5hFbNFratfC10zT0PJ+6ebfaKRITyS/+QWFmrrsfYf4hNJFrjgL/Y2sDuGvjdTP
	 714vFPNDDj+LUGdlKTlzN+8MrwrW95iu595lutnk5DOCbiB+9+q202zSuOTO1dvbzZ
	 +eyiWTF97+pcxbUkQ+sAlmp7lQY0PVvt/9sTDUrijfauGmZLTHInh8J6cSwWPT/nOT
	 4Y/ahuU9BlH1Y8zrL+7e/8bpV7fqvCnrczyYE91iKd9bZEG9Jb57ULCak1cEhbqtRu
	 dDuosMW64p1S2TPtS82jxe8OkU/bGcHS+82fmJD4vuLqiywR93xt0rFMeTAJ6OXy3C
	 obaD13acuGJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93456C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093019359.20513.3492307971637034590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fc8ea818539a3e55d6ac14f28ab3fa571e5e1f773441052b6a1d58685f7d35
Date: Thu, 26 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750930193
