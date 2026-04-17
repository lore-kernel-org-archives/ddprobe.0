Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BE32701BB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776431854; cv=none; b=U3MXZl7aD2ks8r5T4mn5bTUvIRowRuGEX/HD1u6TUH0UokbTwBYcY7IP1hlc7f2VyFAFFFRc97l9Mtk8Jc4jhD7I03nYz3icDFLIyaDTCUMaItx9Kx/t5VjQngMiVuvqhTcUDFDmLGe8/ZUnaqqtVIwmiZNoVH1UZyhCR9iVPa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776431854; c=relaxed/simple;
	bh=tQxp0/SSljxi59zzq2ZXZajaWmyJ0BPR33qSKhHwzKk=;
	h=To:Subject:From:Message-Id:Date; b=ReW5CBnHMy+GB9XHN6Hf/IDW8xwkrRIm+Ml9mQpZZNLudmMmzji6fRjg1SHpcbGfOmLB1iubAveh8MN9DV98GgpWMVlXOKvqUAijzRYOO/jRG52UN0gEkSYJxshdn8vcXiS+3Ne6IWA4qipEft3nAYZuMKOCaSSfTHLHKRyTrkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUh2ynpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUh2ynpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EF5C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776431853;
	bh=tQxp0/SSljxi59zzq2ZXZajaWmyJ0BPR33qSKhHwzKk=;
	h=To:Subject:From:Date:From;
	b=AUh2ynpgE0NL0u+fwoxpne/gvUv6gCItGV+B6P2ktioqLi03QzOI0SqZgXRzyvIrc
	 E5lgn+BRiD0SWx9dRrhtIZhERSUKrtK7qoFHQHWtaOnUVS7kBTIMNLoAAI6geSUtSD
	 Ikv/3Re+SZzPeE6/no1tloeInnCA2NX//pvxlbUf/vqk3muu/KNpx3MNzTaChAgILN
	 sOpxz2kY9vdQFVwd+oBemMX4sq78G3cRUh5BvrLrl9oJZJkQGdG09IgP9pQG8P7066
	 W/BDFqsp/KPYPUUyR/GSm+vwfoTSGBVhUeeawBH1cD73w/vJSuElTcogiS8yc1FUs/
	 KOwUzgt0nV0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9631F4369E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643185368.26564.14875777464823358108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab18e643133f316f658b1cb7e6a46b1ed538cdfb4b117f61d086576246b1d187
Date: Fri, 17 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776431853
