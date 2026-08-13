Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64437B018
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786593034; cv=none; b=pO11hO1whigskKqMVr/vZDKOTidpASXfMDcAK4cnDyo4sOS599RQ+GUp6kjowAGNkqo27I73hhEzR8KIL2vFuP2/hQX+LEnopiUHx2uDXUeEWZgtJq9fHRxhWNDCTWy3sQnh/Pws1SH7lVQ69lWb3VRT7w+YRr1jq780rMBEJIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786593034; c=relaxed/simple;
	bh=GJu8mdkQEmSYhDa/wGNylzbU0UjEAsp5cZ6hvmCKE1E=;
	h=To:Subject:From:Message-Id:Date; b=fjeZ4A+Et2usiAq5VtKIDxlq2+E9pT81UiE96PBzxtB/Sc4ghpflOKeteRqPALjF7gUV42IhM6vzjg+dJurCFQsGYEu5pqARE/NrwQdrvv8llHmrgASx0e/bPJ3a6mzCgfFxEHRfFk8hJzDnDXVlNfLa+m97Nw07DKV7fritzAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVhHpdjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVhHpdjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57C9C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786593033;
	bh=GJu8mdkQEmSYhDa/wGNylzbU0UjEAsp5cZ6hvmCKE1E=;
	h=To:Subject:From:Date:From;
	b=oVhHpdjZmi/B1+rdJ14gcX2KnMhbyGxHQXlx5IkCrTk9BVA/GSRGSnaA/NdWL3vUB
	 gJC9jG79S0E6u22VBwj4j63GhN9O3R+66jA/4ci59U+L8fxorTRa68DTY1CojaR8v9
	 vQpMR+aQ9vTYZxZop3UKlYLh3oiBu2k8dnK7UELbqwIpytNGCaMrb6iG2RTxHA1glS
	 3JBXEU99FaTmNR50qKpKmgFCjQHgDhgKgCPhD6UPUBl7Y8jSKoQRMAVCWJItEQRDcf
	 z/XlTrQo+oSqXKV19q4aAL/PP+yd9eyatwOgOc0xqV5FUkSLKmeDBJxNNCukIY3Hfp
	 TKb+qICm6F0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2980C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659303372.16097.16164374640001480318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193297e47e8b7b22699e7d4e722f910df906050290000cba45a2030c17eb3429
Date: Thu, 13 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786593033
