Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F321A3172
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787799634; cv=none; b=Zdi6WNYexNT/AP9YxjuG/zO+ywkY2+urrCtBguyJBv2qvJ1xAk4ftjXRZRRaIuwrjRlEl7/g19Hh4Zg9pP4uFJM+e/pZU4dCYvy2C2wJ7NjJ6bKIszq7CajOVpw3X0CRBQkiGol/APsNnpt4Sm70ShQm+9qf2R9WXolUDuA3hDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787799634; c=relaxed/simple;
	bh=gBtAghP5sjBMWVbL+lYCsn3A0RN1vERVCrxKhjRNHdU=;
	h=To:Subject:From:Message-Id:Date; b=DdC3bIHKGCfiCfUHRayT5STqfsbUa86hTgaKDVP4Fg6Zz6LoAvNatdaBQlFLhHUo1uRgHYtAkvfgAhZxwpn9QSelRAwQTu3HLnJEBdSQT+Izb3S6M3nwklsnKmaVvQvmDNjGOi2UpUntboPP72o3x47e4ODeehkzbGQfcw92QZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqQX9SrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqQX9SrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC7DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787799633;
	bh=gBtAghP5sjBMWVbL+lYCsn3A0RN1vERVCrxKhjRNHdU=;
	h=To:Subject:From:Date:From;
	b=UqQX9SrQ0YebqcuZukBGzBioURadc5mu+9ahjOZAd6LDva6tDlFc7JRx+GaMZVXfH
	 mCafUA0YkdRd6fiLsj2jA4T4Z/ip2tXXBm0xtSdsLy9+7TFSrGYKdx0z2Q296fbByp
	 vBuyGaF6/9IHiLtacyYkj2wDZq2lHCb40my8bVWwtzJmRGsTUYTDL7yj6Yu9LmbeHc
	 8S7W6Qh1k/7ogqsYe6IJy2lBgCdYtzVfZeik167eV21t+XV9SqF8ySwdAhC+jQtM6H
	 V5fw45M0uFgUBwDV2T+AqgDioT0ZMrL3DsB6BIxYnFDy84YAjceBAiSIHSipepKCGZ
	 QSTYtefnc6Ueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB094C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779963369.3653.15077975096753065456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffcb284823c4ad9075e9c43a544945fcde82a831e5ee933c44a5020f7a87a2f
Date: Thu, 27 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787799633
