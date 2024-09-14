Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5611758B
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726337754; cv=none; b=suqkenm4Qu3dtx3vTzHLvctK5h1d+pBo9WnEhkit/ngt6YcrDNGyrFN26PpcezMpKEcgZKm0invbQUX3t0d+GjVfcrpx552tCXQkFZWqYjiYIDQjQG3Uk1WJMQnDSRc/OoOsZIoEW0Qp5zS7nu8nELG7NKDE1TOM0Xcj3hRGntA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726337754; c=relaxed/simple;
	bh=9I0xSdsQZ9uAmt/Uilw8J26Ag+ARyTBHzmRYKXjdag4=;
	h=To:Subject:From:Message-Id:Date; b=XLVTmpZdRjR/9tyaXk2+/PxU+VogV7uMb59L3nJ2Hb3FDlerCLd0J6l1MyAajRx0i6TgZf7wUY6EcG9y/md7BVBSBkx6J6DdK+gDIGJcmzqTqQ8A9wzxoFlA/Ow0IWYrbpqmc9HTktFTRH1J7S6n18mYGH3QeJEockJTN3rIGew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovyioykG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovyioykG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A0C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726337753;
	bh=9I0xSdsQZ9uAmt/Uilw8J26Ag+ARyTBHzmRYKXjdag4=;
	h=To:Subject:From:Date:From;
	b=ovyioykGTn+HuNDAXSLyl7dCCk72qV3wd8OWHuh+Wq4aEt2u3mgchUotIvaf7qqnR
	 hc5mnAFI7UVvIyiUfgdSoBpgsq3e3O7tdBzjW1fHEElPq8HggzzD1nT7HeamGBW825
	 1vdvumCJHDkQ2MBKCNq4EIpAtbfCOtPSsExawbzuUsYmIKLGtyvD9LptxSPXDifyY7
	 ew/cWw0fPTkQCcFVHmW7r5sIuka9VoxQ4lPQE5Qjz8R2jzEdOb/ope5MtCrgD3bVrx
	 3cda9T94pENW6/DhXHahtD4hXM9MLanD55lQ9O5oUjWpcPzzjsxSImkShAkn/WlBfr
	 rlx8I0f8mo6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8AC021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633775360.22349.15450597362139296021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3893cd258006a58657633b6a718f97395f1485132db0996e5dbc7b19af5a13a
Date: Sat, 14 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726337753
