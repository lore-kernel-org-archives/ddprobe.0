Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D244D56B62
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711018096; cv=none; b=R0IQ1hw2GsQZvS+s3olCBbN3tT0jHKGSQRPWWIkWgYR1orAYMQEmNYibqhiQ5klSdYdmmKSzxBwQ0d6lUS4lk8qU1yVsaNuwkrVSncm6sYcoBK4rMNwACH5ytvkM2T6jJ9Wh0N03xW84Rvx00qfaUWOL6juBRhdofb/OjNBW+Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711018096; c=relaxed/simple;
	bh=bYWXjlWO9IVcd1ehXgQbPWMjG8EiRhLfIud/yPOJDZU=;
	h=To:Subject:From:Message-Id:Date; b=WoZC3CK3kYNlth71bu3pyTeJArBsv/2ymzTAJ0FNF1fg0lfp4oINfANhmhMNnwH7XqQnoxlZFA45evcYBHIxPDY+SeDBCCMuQLijQ9ZPmBUfcrPUnG1o4cSFRv/Sf7ZIhHNXorkh693mDdFFpZFdSzb/sBdYNll2Hcaad5VNamU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZMNrXnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZMNrXnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEA6C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711018096;
	bh=bYWXjlWO9IVcd1ehXgQbPWMjG8EiRhLfIud/yPOJDZU=;
	h=To:Subject:From:Date:From;
	b=CZMNrXnVku3AvT+RVLZHWbpn9pF1bDrQjwFKwiaguqOf88ETipbX8GbHye5ARZMu9
	 liZbtOJFmNYEm9aXwHKuN2TUTbuAvmw5V/rjpgQdNX9Fwu0Tyco5gndzNs23cEx1Al
	 BglGmXsS19GZ8K2BwFCMlnB5ITABM2Vcq10VmaVT2scCeic0IF6jwb9vdn+CASeg46
	 TaKqIgSP6Wz3ZBT/CDzGcckfMpv8HaecnbKN2vLdpe0K35vyN6dhkUVodEQr2qotGi
	 IUX9+lZ7DJVBtM+AhS32ZpiSR9hkvv6rzS7OKgawZET9ttnbtgN5iLXDNge73LXfVk
	 aRDQyb6/LIlBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE23C54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171101809637.11044.6017284128335038054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51bd32d4546cd61b98063f5e88a1ab9d059272eb3d2a589a4a6374f5d30073c1
Date: Thu, 21 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711018096
