Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363D419F12D
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775706334; cv=none; b=csMuWc/xtP0BE1bs9zoinQFvPtNpsHFtDo4bhRo90QmF3rCPOxJ25nb6MdVRrvFRFomNZPT/G1VV5TFv7lFyVJOeZBk0IpO9iwuglf8Kw9jMKxnPuNN7aVGvSWwTznSZSgfLJAmPAhby0bwcx6jfAvZfeiyjeHNmbf4+AGmxgxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775706334; c=relaxed/simple;
	bh=e8/TsTdS6bRDUs9XT1M65bbkL36NBP5gof+PeyuZh9c=;
	h=To:Subject:From:Message-Id:Date; b=YfDWp+A/khK7L+MUQLjiVO1YobJUsMeZzlez52yVeVjRFLnI/qfJmQuD7oihszsinRMsk0XyM/bWR9B/jaMbEDBe+vkIpJ+y0cF6b58fJ0SfGhI0S+MZZEtozwUcXmInVAzAQ9Tkq8xXpZK9dH0VyN0sh+miMEBPG/gMy/6VQfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTqr6Zv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTqr6Zv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3BCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775706333;
	bh=e8/TsTdS6bRDUs9XT1M65bbkL36NBP5gof+PeyuZh9c=;
	h=To:Subject:From:Date:From;
	b=GTqr6Zv462BJoQk6Gsi3NQUqNlXmSJIG+zi87v9El77xa937JpZxklttu1iyd4mbl
	 plDG9NGCtnhiRW8GqINZb6OD39zo53jwH5WMCFk8+hIWdjKKWMLoOD0Rb9AKnEU3UL
	 rQBhc4yanhJHCZmB1ZzKJKEjQ6rWUqpEMsiMATa6dA0Gm3dYDWvfKy+uV3+7j8kJAJ
	 lk0GntIor3yKbdN+BFGQltQvyIAs84MxpcNG0K6UmQYiangdGMXkeUNcIq1jW0KsQk
	 EBQAYns7U4lUrLUMZwh8HDP4QTEUrstZJqVI6TJrmj04YfGsAjev/iFdUmEeNMel4z
	 XrT8CUPvahd3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD157E98FA6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570633368.24813.16651013578532158212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720717514a8191bafa04b945acca480596ebcd211ca4c7606448dd3ddb3fdac2
Date: Thu, 09 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775706333
