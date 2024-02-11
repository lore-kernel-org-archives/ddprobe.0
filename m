Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D0179
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707628097; cv=none; b=NKyPWTgspLgyJ9JdQdxpslSX0XOldPfgY9dNRhIxMzEvC/+yAAiLlFuvZvOwmtQxYHILlYbfokkEaFlOkjYuSqchJYGu/aEzDCHflKu12M01MyxVVO3/nAz7Ef/6TP9oM1Gp+SMuhmiByWReM0dfW/r96EMSPF1o2n/fL3jo2mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707628097; c=relaxed/simple;
	bh=IjXMMwkgZB3qax+FwG9aONXbPb0KhOHhy16AFVKbiec=;
	h=To:Subject:From:Message-Id:Date; b=p9qBqFGM9X//GO17X9bBhPPu8PIUk8ZFe/JT6CGkPt1i52QB1QaRllMhMRSoM8h5jbD8HocHBdpfCga+KXKCstgTfIK4F4S/MYaZi+rSAXlYEjEjQvPMQ2s546cUpddMW/ZtvP3n9AHdpfpA5fyUKeA2dSlNV+qBMYilGb+gIFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R40bmcvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R40bmcvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85414C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707628096;
	bh=IjXMMwkgZB3qax+FwG9aONXbPb0KhOHhy16AFVKbiec=;
	h=To:Subject:From:Date:From;
	b=R40bmcvHq03V1VSqEI+/luR+45LTjOKw9XkGJDdQ0B4oUgYTYIIGecN/JpAxyYRzr
	 /Z8SxATLR1WuO8zSoqM6hwIzF2zvyABMpfqKzTtp9xA82zG45yDhOOcvohAuuJaqRp
	 058MSnL8Awj6j2iFrVae9eUKrOK/PTo68aD//NSU1BcXZdzq3bNkDw5sFdxZiIx+zn
	 AfjBNE8Iu3qSU5R2eOBuoTT4e3y0anSKLMpsjHWLoKelMDVJaxu4HDdztBCc3zLPFl
	 DmHHfmEXCPf3lWxJpOnQHMSEBuJWmH3RIxKlWCf/YC1RP1LjGwA/bI0A0GjJ+o+Lqn
	 uEU4oyp4BjNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E66C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170762809638.19434.10396075056605923640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46daf66082b3789dd000a32871b978d02a3800c8cf10d38ad7d0d01294ec977a
Date: Sun, 11 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707628096
