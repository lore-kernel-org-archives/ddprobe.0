Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E16B215F4B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752320394; cv=none; b=O6JTMTqWBcIBAwYT/Psw+7+KrtRHcVCh9wpSWRjgKoXgRuwk3RTVAbavmmJd+A6HL7Av38C0vA64HPLoGzkepcUUWYZaB546//f0xSPUW6RLwFyzibPz5gUOWB8dkqI29h9FGez/XqKq9fSRZNO2ZDR/fhjpqPsyEePYvBegfqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752320394; c=relaxed/simple;
	bh=BO0xaD+i1ALCrCFDI466tO1HPV91TMoaknmI3Fi64KY=;
	h=To:Subject:From:Message-Id:Date; b=gVrAK8qeQjwn4N7Lf0tBcloS3gq2IDcDr3KKKhlXjmO5jd/ts7rYj/cRKwZilyADF+8tiyj5MjpbMcUMRiYA7wC9/b+sgDoSwrWwEqoxvuQn+N//luf/HnFZTllB5e9Ktp+RfqiswGxxaVz857alScGQ8KGhC3chUMBLCdjmZGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji1W8FRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji1W8FRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D99FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752320393;
	bh=BO0xaD+i1ALCrCFDI466tO1HPV91TMoaknmI3Fi64KY=;
	h=To:Subject:From:Date:From;
	b=ji1W8FRhIkTWrre72JLCFTJJy5+99mRH6GNx65zuOpeqXLiWs1f/U4s1em//vjibB
	 PjRp86qQx3a5kzoox6p+Vta36XHInzXTYhbOR1KU2LdQlR9DKK+U69RE+zcR67+5G1
	 oeW9sPDDpJc42ZkDjEECs4K8AQPOu0rzvPaSxRWeDS02OCbzmLihZOASSV+0dWnNwp
	 wpCK9ICN/B3kQDxQIQ1Rc+JnkAmLwp0slggEBvqWxMW6th5acyuooHzMUCqEwEz//g
	 lPTEPzxX/tAIA6XvVnSrnrfu6ul9e3IbGpvXhtJVOTSTQwKZ4xnWFUWhICssF5LQ/X
	 KTlk5rI5qK+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1CBC83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232039357.27098.7595128974504211530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97add406e24427525b662b3484b2fdc9e85403075bc12d851b785150deec9bba
Date: Sat, 12 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752320393
