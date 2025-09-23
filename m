Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FF27FB2A
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758665394; cv=none; b=O/gkBq07P06v/cwIdau59Avox4epzFn4N03AmP3AIP6Jxi5JrfyEEOJL+Tl6xatxjEUnlKuMPoCi9nOzNuB8yjH9wSxuSl3uIQHrgSRh09XZ08AxWmb0Tse9M2NX8FqPVskg9rMKI/Uux3s3zrPEAQpR+K3YN90Hiz6b/2xnF88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758665394; c=relaxed/simple;
	bh=Y72WBJlKhETL638woN6iZQTWmv1KiSCQV6M7A3ZtvjM=;
	h=To:Subject:From:Message-Id:Date; b=RXj/FsSKqjKq/A/MGVRSaWLBc8CFKBh8fc8xhPMSV3y7i0u7dZsEicsRuHgUACXyheBqKk35kyUW0++ZOsatC8K1Ti90+UOA0ghf9tSTrGwdIArgfasYucTiI4oYC3RWEQLMhS/uN1OYxoVfQHU2XxLkl7lr21s1xqlAOT5J1pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sixCbs5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sixCbs5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B84C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758665393;
	bh=Y72WBJlKhETL638woN6iZQTWmv1KiSCQV6M7A3ZtvjM=;
	h=To:Subject:From:Date:From;
	b=sixCbs5tnxDf9LyMvYl8VydxcZxQhaeCpXDYMhQ3bUGM7XtydX6MvExWxF/EHMBPP
	 IiJwms1bU+Uh2jaQx8wEj8aYz6TkBz19/boo4+xvEHPhOiCDeYLaymQduljWnVP0rb
	 XKrS1pehLUP3i7+3MgLUx0kGPVmKHVJeeQ0wBxD8F/A2yAaGFPJt/QOehOJY6uul36
	 IBud7ZueaXcx7emTg83gVyy7xjM1JtFe2LbaleCNKsf3UBjrCCRBTq6K2obcVt+GM1
	 5A2JwXYAJpTdwW64o89brpkcVuEkMNrBE2d0Ius6TyoyzkAb5ntuYmRgPNWMCSVFvU
	 Wrplkzwye8LVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75BCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866539357.18706.10391535671393569405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d87e6ab812251838e82634c5525b10bbaa36129721c0c0e007154d995100226
Date: Tue, 23 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758665393
