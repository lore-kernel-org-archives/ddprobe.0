Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC692F28FF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773276294; cv=none; b=Pa/HEp3PS3fXp3B4AEavWA8yd+XbZB4TmAH/ng5rjF4dntY99QyHqnH2gBKQF57Gcx6vMOs8u/c3LGaD8vxsSfHLx6o3+prpG3v4yMhduBKwbOgsO6g3m9GHkN9KeNDjlOm6ahQsgsAF/QczIPqPOaR87GLe8j9EDUks5Rh0Egg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773276294; c=relaxed/simple;
	bh=AOKk9a7qT3H8zrIU6uos7cfiSKHOtin04Z0apjBeXBM=;
	h=To:Subject:From:Message-Id:Date; b=cZw44V0olBWEaF2TpU24cS9ScxKuui2ovTUvu3+fpmZtFd8MhMgDXJLK+DuI9vJFAA52GClU+0JzoEVc8zC0/kuzcTiOnu/sCJ6VZUTbKtDdM3ctsvZ/ENrXV19dPfo8hnNygSukKs+iwYzklpR/oyqcWtSOZNQr+oCbxgOe5Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqDkLTB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqDkLTB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD660C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773276293;
	bh=AOKk9a7qT3H8zrIU6uos7cfiSKHOtin04Z0apjBeXBM=;
	h=To:Subject:From:Date:From;
	b=CqDkLTB8WbDCwPi7CTC7PuzniebwVwXGNP8j/SAzZLIA2Jm+/Ehcx2CDjszZtxEOl
	 +4yNoiB3YPnoZH050A3qrx8Qf0Bp4YZpbTF82ietXHWiz4L8vwPd0aEq4Ngti7lLZI
	 QKUdsgXIkM3Qb2zioNlVPbOb7rywD7vVulgtCDAczkbz5VVRVBxzbanaoEiVRv6zmN
	 CVBYIaqbi0gcHBf4eE+QLszN86J3eszoHS27o/964vMWH2jwBZr+JruSLIHFMgnYo4
	 9UyKoj7pEy1ozGA3gbX6kapEbeqxPEKPlj+gafqUQTOFUp3wMUUf28RaDeA69BsoHw
	 Qwx2EiVglUW+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497E103E2F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327629358.22687.701387744875542068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4871cb9220813213f6bc0e9ac9ffa9b45b937dea0f454b301723336216401dd4
Date: Thu, 12 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773276293
