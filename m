Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501061898ED
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728462954; cv=none; b=aI3lTvu/H+rd6qvUHXWYJkrWjau95J3oc1uo5Anrmsx31Xvs/KJ6sJKmhihXHS9WvK3YmUBBBWK3+A+2xPu3XZEz/bSy0zFi0+FGrubtN/srhvU5XKe6AZmiCjXv8Rvd9en6JCXNebSIy90O7iIIk8NNRgohLAk8uZ/yQEG5G0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728462954; c=relaxed/simple;
	bh=CYGz9F4GeL4iD9uTQIc2cAWFaMRYOuYx7QlGQEU9iCY=;
	h=To:Subject:From:Message-Id:Date; b=ELax5ZvD1VshwZyCwVcq80fgkrZwzcCHeRcSMAhk5kd/tuwcBN8oc6dbLjxQt4t7AajkHvUb6HN0GQy4f7WozzMF2g2EetvkXXw8sf6ggS64NRKcjV6p1VpHMIVOwa/Gp4MmSL2q5kxswffP1CYcWfcn1HUHbLHBnuaYytntkYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iocBcPns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iocBcPns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3DEC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728462953;
	bh=CYGz9F4GeL4iD9uTQIc2cAWFaMRYOuYx7QlGQEU9iCY=;
	h=To:Subject:From:Date:From;
	b=iocBcPnstbvBW/enBseeTOF5mIi2Lm1K0QO8pehiw3m5UWZ6hmxFg9vtKsb5G60dy
	 VtcemFZdiSqDOa1IM+kG14PED8kQiehgCF+T//Zm2PEs7JO1SRE3FMfdg6kpec5m1c
	 VHNdm+tj80BeafSzYU+dtVoNCTfSZ94AgL/tvIp/n8EYvVBTWZn8cmDtygOcev8/7f
	 4/+OCF7Ood8jMS0rngcBwERr244rz1fJsSSBBDvJtCIjeFtK5INm23SrxYElUZFazP
	 v0shXDzYlCy+9nWqZYCS+wMVjYb9UY4LgwG3YSs+vveDtBTtaQ/pQgvDg5EZB52D29
	 7Itbr6NpW+0vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8806CED62A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846295365.18802.15117538525602669406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc168ef2c2bca2b646c6503ad58457a8428020e6240f64b1be4202acdfb89d2f
Date: Wed, 09 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728462953
