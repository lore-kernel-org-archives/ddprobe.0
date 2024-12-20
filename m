Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261EF1A4E98
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734683154; cv=none; b=j7B03WHwcEnqVamu9eMYPkMQk9QIV3rqDLiWApBKnuDW5B3oHasZxFL8ZNovPvteuvKdLGnw9V3MSYCpEY4LvAb/TVv/Kn6jBalyGtS3Xg+sYphDbAEn/bP3mzFwcyVXkY6ONbEEJV2pQ0Rxs/JQl8KlxF0j9P5kJ7nwGVmwodY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734683154; c=relaxed/simple;
	bh=R9FJZwGx7bfRjTpAIcQbdJS1Q3U2qnnC1END087x2t8=;
	h=To:Subject:From:Message-Id:Date; b=hnDUW62aSIsC5nvdI15yyZ2xqXsk63Otx254ywoEcdwrSkjyrLA7G23nQlzd2PYtM1nFbyHh+whv+YX9W7kC0IEi2vs+Niz7h0X9SRANI1LeGrd6EkSkDmwe0IxN9vsIsXvRMZYUUdVmcjWznXH5e0oDHwfVRKZy1BxzXWcis5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVltxX5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVltxX5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECB5C4CEDC
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734683153;
	bh=R9FJZwGx7bfRjTpAIcQbdJS1Q3U2qnnC1END087x2t8=;
	h=To:Subject:From:Date:From;
	b=sVltxX5c/crpolPe0YNRODCES7C+46Iu3jYu6TC7HHLVkniYFM4/7hEDz1pHi+0z7
	 R92FANWlsf2+JTO6EVwfFHD4cEO4EndC7NhubgU0Cp1d4pI64454xkQkvohA+LWb04
	 hAolFKXLw1em/iMo5dBq9sVTjXyVDmavBQbpN4EzHUtozXuJxVvkte8vmP+GR4Cg3v
	 3yxi1lpmvtkgyUYZAX3rN0r3ta+IDqKrxdvU9yCiuuA9FcGye2+PPGAMWfnHa14z+/
	 GY96TZhDTkho/gWQpUI7rKgG8zDstu5EbbL7miZbdkwoQ+g6jmxf9GLwRrIAh0NQcx
	 dsjARH8lVsYlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9786DE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468315360.14069.14495285192461245148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aadaa0629c2e523349f4b9073373b6c18aea5339043aa2125be7a34bf952b37
Date: Fri, 20 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734683153
