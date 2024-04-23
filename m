Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E3B13AD2B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713887423; cv=none; b=OMa4VxMWDCE/gA+Wg1qh+0WoIB1FOohPmSg6guVAf3RST3qmPIrmDSePEr8dY7oWwC8+/x7s8qUc5opgPeUytE74bqKW0/zM9uA9QciyWFAdOG6qn6OpsjES6Maa+qZJRu5wLmALzRbLeJBTehKZdxtGspR8ulJySUtzdLxPcEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713887423; c=relaxed/simple;
	bh=BlpVM86fsizHNmltY+6uWgkMIijtc8vMABrea9afE1U=;
	h=To:Subject:From:Message-Id:Date; b=iFyxQOLXgWyFNEVgdw3B/zNfUTHMJsOviKd2lSXOGNg3gKAuEiaRNMsyqQPKvRQvalBaBMPomiEKGqgA2C2LBOdUN/B2mUlUEZu7LTmol7u3pCqyV+VifabeBOfxomHa8xchw1dLqgOr71aVj0ddlsCJISP0GFxkYKMYTii3C44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb+XIiHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb+XIiHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D946BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713887422;
	bh=BlpVM86fsizHNmltY+6uWgkMIijtc8vMABrea9afE1U=;
	h=To:Subject:From:Date:From;
	b=Gb+XIiHvdGb67j6H5L0e9g89JGuaJ4MSY+GiwdO+g8jjwKAII4vKVBIMgK0LpQZeM
	 F++PT5Bb+570OSPDKxtpS8g5PpF69Sg4huXTJocgx3gg3r8Zp2P51l+lD6fYLUaDSa
	 L6ogc4CVP2NIHdyXhKQ6UHtTYNGAHhkdZppgT4VWfKH+VOiykAHc7ycNiOyXsk1zGr
	 f1e86UKXE1GOJj/UbDUhtxwz8ROmvWx+wT6wasPcIJeMag068EL4agxQc7c8R/NEG7
	 /lBX4MpLZiUeUAObmVa+WnDx0/4xgYQkaTDEm9h7oAk7N0sOLXavh/Bf0T7gAK5FcL
	 wricNwVccXUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84C1C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388742278.4156.1379768459116042119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2304ef0c1eb3b0d466b9e07ab2e16fd12904d7611ede85fc1402a5bf6328eacc
Date: Tue, 23 Apr 2024 15:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713887422
