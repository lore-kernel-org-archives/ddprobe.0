Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A3D1D6188
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760216394; cv=none; b=idiwFHy+t23W1bBJR5iQZ8ZHLwBwjWRp5kYLhw844lo93Rd2r18npf4ugviyLWP7mR6GIUl6arwTRnlRnqh4gZxlpXdwWQyggpZfCOa4SBO0dZHL/cXMH7OcFUcJrbeORkwwieql689nno9M9fMYeG02iED+FhBuG1LvOW+Ydd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760216394; c=relaxed/simple;
	bh=scf9J/q56lUIBWa7VGQC1BYmFRPaRzPim//FgM0OjUw=;
	h=To:Subject:From:Message-Id:Date; b=txMeQ0z7c0ltJtlQmq1AmEWhmvQCTjVAdD6/Xna+n5EC1spIU3wcWyGNQUwQRrZM9dEhEyGamYDtg+1ffwm73SzY27WVzs7Ioa0QIGZqx2T1CqCeQSFzyeGhYedWA8aSegssnX1DbQJKx/w5ZgCu3yiGDvxOtMVgIugEEQp3JAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQkxlIYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQkxlIYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E3C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760216393;
	bh=scf9J/q56lUIBWa7VGQC1BYmFRPaRzPim//FgM0OjUw=;
	h=To:Subject:From:Date:From;
	b=lQkxlIYe1+cHiI+QPL8u55UBf4Wf3SxMEUiV2W+QOzKTcybv0/MqjP6xQHBpJqAQE
	 Ei1zsBpbSmZUIgiYyNAcYXyL2Mn01ovcLkIpGrabS01oJdKJmYYoSBjbfrztV39zVd
	 VS23mwhMTkM/ZCvTAVWOPt3wNA3qEaoNrMHVCYC/U1df2teZfyg8H8QJKSq02GJ4PU
	 1b1WfGIusbH2M7l9UETqcfRc1whL11pe6l7PvqEOJpGg239EoMW6lHN8Pmexzm+2V4
	 fR+udORgCMQC0Arppqd/K9jiT35R/8Kd2hOxX2mhdcHGRlNON+VRNDsQUN1nQXJEKu
	 sG8mnCRszY8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94276CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021639357.17458.13515041526115669389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ae74b4192a7eba908569a4e7b0c58330ef10a45ef43b2ef47dd394401c51e0
Date: Sat, 11 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760216393
