Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7722D6E61
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764166374; cv=none; b=ZsTILHCesmFrYvQ5QDeRa2w/sFehiav9Zt0BCjKYHoZMut/6fHBj4w5+5/DZWhhaiMHx6b07X26PEzBIaENHp5f4GDfCUDaw5Obxi50cnccZmWskY2yj+SBGXizd45JVfFz9akpsrHsLjC6NYeUhx7Hb/RphtnprczRC0ilj/6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764166374; c=relaxed/simple;
	bh=cFgU0zb5v2xKkdhHPxphRKucojy4Mr5W1hVGGaP9NwU=;
	h=To:Subject:From:Message-Id:Date; b=eRcNGxGz3IeeB+eXE6zI6V2ine3gN2KP9qVZ31BkXCzL5wFB2WVy9iAHhbOnu1k9CKHRVgioOk1T7VueBGBNFb5sGsfvEQp66woCovX+5jvU/BGCUBKbWwBHYb/IOzrnjLs1GM11Xb0BfX9+Fi11M8EYnhHQ+ixSUrtpdElmsCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnf6kSFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnf6kSFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB452C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764166373;
	bh=cFgU0zb5v2xKkdhHPxphRKucojy4Mr5W1hVGGaP9NwU=;
	h=To:Subject:From:Date:From;
	b=gnf6kSFYwRd8ibdprwHLxjh7av/vzsZr2mCB0dV3e7E9vykn7KLjU1NgL2FvN4PLr
	 VZYrSgrGmVFEaVWkJTMdxNfyPvkRA13dfGOziqgIznW5//iARG1v2IVTUMShcoLEQT
	 MLXRiy3LYd6rGW/EbGT3jA1TuN4qkVUfQawE+18etA54kAlygxB/rsNVbqOWU148FY
	 UXS2JPzEykAhyAaAx9t48/9skJuJtMnRaqGJ2CHHTJsq4mKFK+ex7UeJAm+lZHMb56
	 otEmiuchfjrdSb60vYlEhW0t9U5J7VLdU9abvT9vC47lHVhDQWMSNBIUQ3WGX+m0ce
	 dTwlNH8wik3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCBD10F56
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416637360.18678.8290768380256003996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07a9bf772ffd9b184d6dd60f9768983436d1b30f888eabd87378706c2418e36
Date: Wed, 26 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764166373
