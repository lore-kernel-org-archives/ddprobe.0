Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E51D618E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719995; cv=none; b=AS0EjTviweRYPxYtN3VAHAn5lcbVVxebmYKz7pdFg9QMDbdpJY5+8tKXbvd2UGhGy0NY4IgiVjQ8B7sX5roDA4m74iZ4FJXVEMWQFX7cRJpfwJ0h+LRtGG62qhOEH7Rh01tkJtKYYpUl90Ir62tvnvzut76xFuKWu6VdqcQu90s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719995; c=relaxed/simple;
	bh=1Y6KUhTv5L3V+pb37Z73q+la7MzZOT1iYjNLpnYYEc8=;
	h=To:Subject:From:Message-Id:Date; b=mkmSE9Oda8GgAaOhEqWjDEIM2kY1CHLT9+GTfrRi0uOy+SZAjUkaYyKmUEpzoqeFgFJbpSkNGU+i46VMIX/DS9vCaMszfL4izPCDEHlpmAr8x0C0xPRNap4QzQlSlULyR+lz2xf2nNla5XfsUZ08Be7lByYob3KAFlsAkMskpjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbQ27gmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbQ27gmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758719993;
	bh=1Y6KUhTv5L3V+pb37Z73q+la7MzZOT1iYjNLpnYYEc8=;
	h=To:Subject:From:Date:From;
	b=FbQ27gmvJqZ8MzxjDabMfFQ8cvoxxKMM6eNv+bVyPYITofXadPb1FBJuqukzH5LZX
	 46gKQhbZw0vVwISNlec/Mz6nyD5QFw6dSAG3Rn9pEirRq0qA4VVBiNmKipOk83M5ym
	 owpPB+ovXxFTbLfgyXL/PApvxpfdVTLkjflXldDMyHic6ta147+w9ESn+g3bPixVdw
	 3ThuhXCNsPcWctEPvSRWk92aHErvr2zKmWUOg0fMurChiFGVFJS+k3YfROHOrakDNo
	 KHKBESBAXRzs6ly/dcTYmutH6yjObtAcXKGXpI2Y0fwlZkbF0XD8hibhx4Igk8WGq+
	 D8qcxwpddiYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AFCAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871999357.16039.9169229228281126659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d2469dc7bbb51f7e85bb4305031ab345c34cf236659d53733c5eb7729833f5
Date: Wed, 24 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758719993
