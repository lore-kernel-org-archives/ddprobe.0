Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ECC186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743072594; cv=none; b=GAZA5tnC6jaoeqYiMJEL1z0ReCtV+jCcm/eG3xiRZ0SGvuzILLoUZYmEq1qDs0vwnrs9UNZ48sBivMccX5jOHolBlEdP53bRGD1t+IFZ6/06fdmBRKkzx9795SVyYjp0C4R25KBq7O+u1gAHhPeEEyDM2IBpUPAHiZBcX5pBbhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743072594; c=relaxed/simple;
	bh=xWp1FQKZwvrTrgQK3W8A1t2zXpWlWCexLwiy/PFW+zE=;
	h=To:Subject:From:Message-Id:Date; b=QZaPSz86+bAbmKg8G/YA2BdbqJ031eISQ1ZO5ShyYjScQwHkAXe79iGi99zMYDNVoA4oqyePAtS8Q5soJ+fei+rQBrWycNjav+Ux6WkbRm553pntwnntQgDCxHMO3Gk73VR8P0bNzRsVhuQxvinedSM0PfaRXAbph5MpBkUVEp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDh1H4Pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDh1H4Pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9CCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743072593;
	bh=xWp1FQKZwvrTrgQK3W8A1t2zXpWlWCexLwiy/PFW+zE=;
	h=To:Subject:From:Date:From;
	b=pDh1H4Ppp1O9WEmYKM+okYpijmmhSpK1lXGMOWEtQ11qKbnwbK7Fih6UiZ/rDCGV2
	 GSfarPg45tIvhO/QIBaWIPi2ANaxk2pgMecQkIazQeDaFTORvgU0rvCcjQH5xydyfj
	 NHrLcKsQgSpbgjFcrinFh/+NLdpLBjnVixhpDZMKy8JHqy557sBaiDExtEJ0brAozB
	 3ISy6eysfnmdpbW1k7CytUXDTyixzF98mfzahK+yWJTo7yn+JQuzS1bRKgShtx8dL3
	 xeHGHAxMtFXcuvsg6rHvb0t8lFz/K07i++JZYqUnDUy2qHPM7VFjdv1L8Lt5TFW7rm
	 7QD66hQvFbzLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9B5C3600C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307259364.20096.17978570647731214086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac7b6fc186e1a14a80dce758fff1b6a8225133785f7f386579a39d6bda5854a
Date: Thu, 27 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743072593
