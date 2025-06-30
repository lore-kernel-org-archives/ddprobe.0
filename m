Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2261E1E502
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751281194; cv=none; b=p22WVIW4H3Eyqs9kul8eHO1si2ZUBWmEdcEj7UDISVU2IitPytagHJeeOU+sw9fEAa0GRtUhcx0Oy0OVnqmk4Ul4Z5uvf7H2TmTvd5FBFE5OkrdaJ/tFW9IYpRhl5xzOAFM146gPRdiyQciEhFUP+4qTaz7jhWSrbV/LBfbGlqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751281194; c=relaxed/simple;
	bh=vlunekIIHsSWkG39Oxf54hj1e6f2dCq+XbDYWBzZero=;
	h=To:Subject:From:Message-Id:Date; b=S6WkfkYZ7k5Z92bm7gjo2UuCcfCEKVywoHveNfJmAyVvw+DjEuWn1QFf8shGbm1RNbTdRRjycMm9cwgFRpPXAsNg0EU4xQJ03GlTZbgieeAcLbvKNfJjjdLAudwnp22IaS4qBfnmEbAlIinl5Dra/B9zVz94BaCTGt0F5gzl/qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7clNbm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7clNbm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751281193;
	bh=vlunekIIHsSWkG39Oxf54hj1e6f2dCq+XbDYWBzZero=;
	h=To:Subject:From:Date:From;
	b=C7clNbm/bYFwE5Pz4cB2CaYZ3Eo2BejOIZchtOKznrOEAdTToHXD9Z7TsazOr6e3U
	 tiBr2yCSjp227C+RUZ571xZBko9rOW0bHnukCtUwvhoA23tfEUs/36Yi5/iBox/eUI
	 4JJHX18daeYMphMw3AcA748o8e1KhcxRh43gViKipqJyvlgGDQwfZvCKQQmwqaT8jh
	 8CteLzKBzcZyQu83yiHadmQx2ImFAl866LUi0T6l3x/ukFNv+nQt0CX5znsiSoJY/j
	 FoOvX0GE+cydp4euG8X2NDBm9AnP9KzHdvqD47aCez++/xoVM8d4DM7vXwcStPm/2g
	 jqUD3lhvt4thg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F2C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128119358.30146.5075640371046420691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5c34703b65d53acc51cb70ecaac69770df89631101178bdd72fa3d03f12a66
Date: Mon, 30 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751281193
