Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E84A31A053
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784914834; cv=none; b=lWirW5rFxOOwhwqkcJ3qzio8wQ7Ghotk1jqtXeTOuhlLIynoaKd+kgKUT0HsLu+KKA7Ld5sUiXeRlXkKdXzSYqmawElAlEGr6fbYUCHinmZmA1HlZf52OwQvf/YiaAnRfISN+nm5K3Xe/fG5JXFLm7qGn73oUxt+iRj8RrPbMzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784914834; c=relaxed/simple;
	bh=kyUFQalEAHOUsQbwM0hOIaoUtZkJlLEIueGeGe7KDsI=;
	h=To:Subject:From:Message-Id:Date; b=dTIbB2vydlj+49nhrZnPfYSofg/Sk9S2B4RDhVkHHyC3S8ua2po+P6WatEQNuDUPsY3xNU7Jw5HyhOvV/FBhM743ezEk8Jzs35K5e5DvG3hrevXj3AAkO66K3rLbx15Z9+4xrEB2b2hmAYKn80lWHhGLtG7kBfOWyPGTu79JcCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQS1/luW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQS1/luW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25AEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784914833;
	bh=kyUFQalEAHOUsQbwM0hOIaoUtZkJlLEIueGeGe7KDsI=;
	h=To:Subject:From:Date:From;
	b=BQS1/luWK8uR2RjoRN/ZGuWSd58nAmM3jFuF5zoEGIqv95izvadAODLHLx6t2Qq2f
	 OxhhWROqCQdNmo1CrbGX2R3g4Qj/e9zpbJZEfEtvCXpUod6IdCvkRU7S9gBr5x1Yjb
	 CJ1bat6aVBFUEAd7v5u/O0ApCA4qAdrcLa2xNzUgZB7sDT97Y9msDas9rYyHA/6gKk
	 LliV9GbpwI/m9h6c0FdVsxNQ0yY0TQbH0wro4pLK55z4i+fNQre8RaeUL1UyeJg0OT
	 igTqaJJBrzWjA4Hxf1VH1Zjs5od5nRPEGMSwi8273f271FIgoVYjKTgbJY60J5V2Af
	 hUZuqVhjU8y+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB27C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491483368.24355.1717816739029097647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7c1935ddbad5acb56c427ad38ae95ac3ee0edd9b39fbac571c496f1e398f10
Date: Fri, 24 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784914833
