Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430F415DBAD
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969863; cv=none; b=Qn+qV7Y87+U8x5N22ForN3rozN6IP1tKm2G2LAOUiwbZ+AIF8YmSSyAlRTfw5LEUMT4uE6tRoBf695X2QWBFJALx7sqfHNB1fdgTAB6dfoBLVXsIdFpWy+CGAGEjPwz/eGxt5jkLKCi48zAhwLFCCvr/dWpmYpb0tMB9dDZh468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969863; c=relaxed/simple;
	bh=m3VyM2K7dA7jZJ2ZuCYW9K19E9ABvDmEBsJ3thZDnWE=;
	h=To:Subject:From:Message-Id:Date; b=taOKPLt0A3rUTn0PRYu1MyshA15vKxtxYymlf3RPjS3Mg0rVaEDP75sLCpHeQX245bEbNoSrQ8qmYhbZUkchO6QB6WAHIby4zZDgAAI9LG5D9r8klLw1fE/yx7t9JyjlfBEH8xRUiaOHUJSXQp009/OXXvh+4UzAMacx5dXLbjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV6frDNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV6frDNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79E8C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716969862;
	bh=m3VyM2K7dA7jZJ2ZuCYW9K19E9ABvDmEBsJ3thZDnWE=;
	h=To:Subject:From:Date:From;
	b=MV6frDNc3vEkjNtINpKpbGkn7gWxS/ALmPyb0kMgMDoFXawSlMOZI83f9q6Xf3k3y
	 BfPxnqeSdMKCa/dpLmkD3p7C83xJB+nc7jmHvFp9tJ+wpmsyEw4vUtkJjFPPLSzP9I
	 6zkrgBUrex5yb5vtgVgq1C6cKXWvTmLrtT8BIsHzL9vV3Wp14IFkBIVJG+WB6LPZhP
	 Y6JJ9GFCn0edrtaMy9jVHt/4BNKXZR8Z/I4npPrDwOroCIP9y8E/4IiNwUk/zu4vMg
	 7azwj77wF1iZx9SvwQBBM53oKmRkSG5qzPMy6nDMkdmlWE2MbeS8fuJM5oN59h4lTy
	 aJA2lM2pGmZlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C096EC25B7E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696986277.21667.6328832610222481342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187543d339a3d0e0468a06f977b7dee045801807e924862a5aef4c3250bf749e
Date: Wed, 29 May 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716969862
