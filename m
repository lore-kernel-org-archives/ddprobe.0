Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A19D1C2E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719973523; cv=none; b=qbzIpW/YydBn9NL14veXMV+1iyDQvsRY6ptBEV296OCaf8Pwn1msAp72WskwQ19RYpoVsTS2ETbzPSRzcZQRN8OcRmCcT6Y0sOTi23BoFfB279fD/zpCNFaIAPvXGJAeEN2gHjQ/eFNqrvhJFepf6Bh1ilky4c3S6apKhjaVaE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719973523; c=relaxed/simple;
	bh=kyEXq7rdqxGj03SMwWHzRGpZutR78qbMeJWlktiu8NA=;
	h=To:Subject:From:Message-Id:Date; b=V9wYoFkNkiBuT37CbQED7VxzUs5qdcbkwvBwS4Rwl6AseNmZjkmnkVvI7jlYc8HSrn6AjIQFVvRe8nUTgjzJAGXT9rpqG2fWkoCz9oT9jx0znE4Pirvqho/KqRcudW28wXr+XiHIZ/YfDPgGlcCDQ7fg/8aCbWHEbHj/jTtz58w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDvvttAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDvvttAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E13C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719973522;
	bh=kyEXq7rdqxGj03SMwWHzRGpZutR78qbMeJWlktiu8NA=;
	h=To:Subject:From:Date:From;
	b=pDvvttAQHSK/BIV+0AMkPpM0oSKqp539WWPTboK3cQkHt56ZmBUCqQCyblTBvvEbK
	 2GxEww3YON/HTOdLoEYK9gdSfQGYShP8fyhCaV8IdhMEmOUMzq142DJCUJaU/BbH/S
	 ac1PgoqMMSqMvxpZAKjrhn3Fv60H6GRsX/DrgVlzJtwWLCs+SkLS5vVZyduaedJgQT
	 l2BdQ+J//se7WKKmiWqo/FG84UUDQ9AsY2Qt5uJQyVCYc8tttIYox3JqKYkfL8q5hB
	 6D3WLEM+A897rBH91vrN1OLE7KgAK89JYe+9wAquaJ+SPPczuYglRI/pUWUBIy2abG
	 zohoWFIpwfP5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CA9C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997352280.18636.17909176834046024839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4955fef8904138d3b4ddf08d8ec4355ac4e281bf695a4bdeb4abe4535fb12a39
Date: Wed, 03 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719973522
