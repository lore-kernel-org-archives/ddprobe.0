Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ABC20DD51
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764157374; cv=none; b=RjW5DEXvRm4u9qxuzc5UAB5VQLrrtoriOV7cqHHRumPEPfrHNJkRe634Rt4wo92NkQmF7Dzn8ZNW/xrKrdOXAHbQAXzxLK5mWLRFaEMwNDPodkjUYkTUDdzQSoclTmqLQtP67VCoW+0lk6JJTW7ac1kKZ0+0UnCnq20fhDVgSCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764157374; c=relaxed/simple;
	bh=d3hNeEQWvuoKqIlsFw5Km1hvst69ozjI/C3rjOGGYSg=;
	h=To:Subject:From:Message-Id:Date; b=Sx8lfVQ2Ch90+q/jO7ragCnFcSKMRa9wRiqlAm8esCTyQjWVA/xm72h1CgqFYp3aGU70X2bSG1ZKvLigSWIQn8O1slxbC2AbJTJv0/cmbjRCrtFm42QirIARtYsQMUEEPMg0HowBUCQhnaYZysb6bD5E9D2pU7xDd2U96w72Zyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNq5HpBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNq5HpBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9661C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764157373;
	bh=d3hNeEQWvuoKqIlsFw5Km1hvst69ozjI/C3rjOGGYSg=;
	h=To:Subject:From:Date:From;
	b=pNq5HpBDVL/8o6hD512BQPiGok/rX6FXwcDaidb80FzupL0Obca0mM4MCuWhnH4tW
	 ZNCGHwAW74oCdlXFMI3UgMCcDAJkQJz87WUPFMos6+axQ33+b9yUz4L45H8X7NFXa8
	 BD+uvJ1Prn7em8Gi89GIX/MHesLuCXZ9qKBf1bVeJ8CIWwok9xmiAAE3MDpszCsdyn
	 2JfluS/vwXygT9YVFBPyxcseLkuKp97WqaRnOHcdaOLV43Zgj8l/kVlyjeKPmHXMxp
	 MB553lLdEdeATsbB48LcbRel/iOUY3FmFV/hwz65YQ3EHO9k7a146PuHTyiRn8e2fn
	 ps1oIOiwzT0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B6D10F23
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415737358.31822.8701359756700954085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb23806f57f23d146709220911928d809da4e8f83df16eea5886b32530195951
Date: Wed, 26 Nov 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764157373
