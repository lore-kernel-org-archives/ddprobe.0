Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C72367D5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764804774; cv=none; b=UO8dbrBsJYnWKhVjovhx2xwsstQZEV6s6IrS8lllwhv/4lruDPXVKFx9/QJ+TQo40cY+mnuvMLPlTlD0DTj+3hKm+pgRtvexD5Ua3QArjWPMlHU6yctN4DwAfSD4Go9igA0GSqFBmvH6iFwcCsNUARumZRWJ0gVDEWlZtUFsnlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764804774; c=relaxed/simple;
	bh=RoIOMy1gbEGt69N3hrqXyawcHdhCgDPwXP/I2kq/AQg=;
	h=To:Subject:From:Message-Id:Date; b=gOigTu73aq+XeXTWVYyQQQ7n7WCyyqn4pRMNPK4TejHvw3nB4jyV/X3Rxz24rZ8LaGsfXx2xWqGQvz0KWlXVloKlq+8B98KX9J9GHCX98e7FAIfxps+HG09/ggKagIDN4XiIN/GDhOA3w59K63R3aWKePeBWZ9RvyID6GqXI4eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlC5pLCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlC5pLCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF85DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764804773;
	bh=RoIOMy1gbEGt69N3hrqXyawcHdhCgDPwXP/I2kq/AQg=;
	h=To:Subject:From:Date:From;
	b=OlC5pLCN3wBopwP/Ct/M07/qRQXRDRN0D7w1i7qbBO59/jqy17wjI/BTLqwAJhK/8
	 vTbn73SKLWcqouu7O2GGGN0eenNU5CPN7gMQADyOU7JqYrn1fmXGEl3BAghg7KPqAh
	 5TvMF+2Ot2dslc8kSMeOlQBxQfKjyTx+XwbqcWHjbiY+EG0RXQzRIb5IO9iEARBzYR
	 wZeqC26rcxr/bbztySbdtrZRqeRl7+kwf7z01iwJslymmLRU9zDyz9b6kEB3Fgj5e7
	 110HPPr/J/J7tKEE1EI2fCQAd1ilZfKVcqh4PBPQpSEjG87HrMoIvQmunY87hSVpLP
	 qXFnZobU2k+NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F82D1CDAA
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480477360.21381.12227805868620369915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5502a2630ee11dfef2ca9406ff427cda332b897c960e7e1900369b04148c17d
Date: Wed, 03 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764804773
