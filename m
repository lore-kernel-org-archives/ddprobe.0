Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9F0388866
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781780194; cv=none; b=o172CUaAFA9ya2EmFglKFyH80ludf9Ozju5stc8wnkuq+bR2GiSFON1Obmxe3RcuFb0yZwSHWKoV8P6EpKVbL7vG3wJ1f/b6sFBftwjlRVoUYE8MDwh3UmlmyraiBOL7JTFdqsDmyhIrZIgQIug9gxsNTC0mKKSBOulWaQ0J7SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781780194; c=relaxed/simple;
	bh=CArixTUm4qrCduDj+Z0vbRuwTJrFO+AZ7cCqEKfdFA4=;
	h=To:Subject:From:Message-Id:Date; b=aGYo40oYFQVB16z7R48IVU4vdjkF14sHqe/YqIalPF3JsWtnihT3J1285Dg+cH2XlrgAnQe6z0rVAHRaEZ0kDNmVA7uRsxfqcJTV9uSIswu/ZFPDdRrWuml621hMGnpjzH26jOuPINUpZxbBpaDkGySxBewCUcbJ+LguArBzBoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJmwWDrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJmwWDrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B8DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781780193;
	bh=CArixTUm4qrCduDj+Z0vbRuwTJrFO+AZ7cCqEKfdFA4=;
	h=To:Subject:From:Date:From;
	b=QJmwWDrIg7D0ofP0uF5dm1gcfPKKSOwzfVC9YHrvKnycIe9W6sfBgKkFQLags07VC
	 J3ehFEHtfAaSSgaANfHE6A/KITBa0O1kBu4I5CcDooOLLt6i+lmpJneHmlkrijYX3f
	 mJUwM4f185dXZgKtlUODdhDmz7x+lEuU8uoCjmRcE6/lOe2e6JAbAEWA6wVP3Iu0hj
	 pPc7i4b/+blJDwRZ8xi6Z/ga1s84vcym9m/OLspD6n1XgcGyP5iWrJ+JBHGrX5oh8w
	 /cXlDpMAl2l6dddRUt+uBdw3OEd1eiDM3ciVrPY4mbgsvWIhGlmz8U40WA8fTWkiUh
	 u7QssBJpppIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12ACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178019368.18844.16860792396234132788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c905495790a24f507a3b004b16239b23ce871199e2dfba681a3b6f6a19eeb1
Date: Thu, 18 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781780193
