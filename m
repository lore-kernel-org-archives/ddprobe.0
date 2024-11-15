Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8C314F9D9
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731645354; cv=none; b=NwVOgUNNGIJ2oYsbLuIgeoggMdr8T3lvr9tgixCcL0jcDptIXzBeA2vCswNs4X9M8NxyJG0TNZP0OwFT4uRavgHk+XGLC8O+17B0ZbyXASPuiwaqVqg6FSBDrHsFlt1S+33HSSn2L/yFZLmBR3+ZxE3jT6BZ8I+WiADmiYPR0KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731645354; c=relaxed/simple;
	bh=I0jco62ghLU9PCyVawC5DVa4G+R/DhDCk3axlAYKsnY=;
	h=To:Subject:From:Message-Id:Date; b=X+9oCaUDRs2iDU83V2LrKok2mjFSx5KDJsuKJGmNDt2I8mYjWugIvLjCqp1O0R2PWLfWO0XiIJeTB6I7lGUbAcllhksNmoakVi/Te97MY68QkENIAx3krzs/iUSUjYTXTVxc8kgu4MA88ZpKSQ4NHdq/IbevldH+9C2CwleKTFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI+VknnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI+VknnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE220C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731645353;
	bh=I0jco62ghLU9PCyVawC5DVa4G+R/DhDCk3axlAYKsnY=;
	h=To:Subject:From:Date:From;
	b=BI+VknnXUZmbWWFruDz8Vmi1Y/vLMopLTaZ3K7cC1WTezgjVYCD6j+5ln16hcxf51
	 S8DxWNN9nnDzgLV4B7tLrCfi+o1eZ4EF9ooMSBTYr5VReKvQBCzKZpSl9dps88CGSs
	 /O+2llMSxK94HtTMclimCItGwiZHfEiC3jM5ZXhGOLnUAPiUsqG4PSzg58BMzdYMgm
	 /iIJzf8ZA6+hFcXcwCsVJETC5IIoBFyEvITqpS7OCUBShrchQ9s8R2BzLqg5SD7z7o
	 M7RuOvtFNrWbwZ6pj07iXTtiMFC34JmN+MuPVpfs90xqrvBzwyZ60e6N0gVWJsVkZh
	 udW4K9hsmcObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B190D6DDCF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173164535360.31229.8849466122416271741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e9ec3c4a11ba39b88b4afc45527252e424a7e82ddc71e2dabaa0a4eeee6488
Date: Fri, 15 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731645353
