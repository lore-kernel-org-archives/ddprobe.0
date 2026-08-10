Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0EA356778
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786359634; cv=none; b=Cmf8PiauVLDnfxV7ZQDnerFNQBj4F9EW7v4FO9GiGOeaEV6wdgLPJkyCJWWlCdo1dcnkQ6Y+eMAAYl9tHHyNCOGcA2CqkMW5Wh9stGVnqSJYK/fywf/FmMcTHfu1suoQCjUbHtWJkB3v/4UV57xuM+ZoxtqJ9LJAERr8EdJBb9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786359634; c=relaxed/simple;
	bh=IxJbOTUh9v+p2FBdrWlo+powYMsPzWQ3Ld9R/1MC4s4=;
	h=To:Subject:From:Message-Id:Date; b=hQGmFnSLPu9BarJiyGiqSAASLPzewBG5UEazTZDPHKi+DJMVOlhzZjWFdCLN758ciJsVx7Vwuc6ytvaY32uyJ9AWngXHfxN6ZW+VMhiM2tbJIkTmw34aU0TtA45NAsIzJtrmwBCSzaMQpoF1pIpntnJ+fzZqny+4n/a4HRllX7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgKhsEEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgKhsEEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2799C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786359633;
	bh=IxJbOTUh9v+p2FBdrWlo+powYMsPzWQ3Ld9R/1MC4s4=;
	h=To:Subject:From:Date:From;
	b=dgKhsEEQWsagJ+E32f752QLWVUMV5gu+UINbwVHN5zU7WMOKVcF6e6ypjeA/f36Ge
	 AgUN9zAn9e/SPcFJKjp0ZhuhhXjeHd1AAztY5m65HLZziXYCW04Yj5ZI97s+z58wHf
	 ajAMI7fx17yy5L3tAx1b9V6BmWuSU5zEcFchuholCodlXUdO34rmxprEj5Vns/CKur
	 oflojMFYLce9gHy6gVkMWNl+XkG92wdK8ptrdh1zokPpTOViUMhU/LD1I+4X6uBXhZ
	 cn8RGHdqcZcWBCwwTbruTLiDrcTYS6H/z5/bLh+qC5gFwptpdP5zBZXZ+72kB9Xl1u
	 Ek/UOymhFQ1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE015C5AE5D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635963373.24013.1522548221336195445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4ad6b3999327e1152bc2dfa02f433b6d90557b775e4f85fe764b91dca3fe6b
Date: Mon, 10 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786359633
