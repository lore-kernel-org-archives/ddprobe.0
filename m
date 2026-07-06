Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A8420863
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783380514; cv=none; b=p5p+WPhwDgOZXcdK985NM32Pk3WLEOxXVcAKKhPeWQCdXvcsq8osoHPZk35dPnYHJqQLWbfPhKIi1ipOzRP6NizcZxQ1QLLNf122CkRtEQIHj5yti8LLnKaFeKUibHDRJtxFXbsSc6VGtMb9QJHbil2ueK8QMXx1LxrKconS9Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783380514; c=relaxed/simple;
	bh=NoXIL+lvCZeZYuupggb3xxHf54u/BQ7jGZ/Q67KJnW8=;
	h=To:Subject:From:Message-Id:Date; b=dL8910WfHlIu3eLuq6RtRA7AhyrG21+We+Zq5cvJnZSrHOfrMJnhGa2EWtcE8Zq8NPpvkKUVoWz8iS441SVPYuGzau5dKfcow1N+HL7R1z77dZeNTvEyZ8/V72s55AepGa3ppIj6nl42RqFIPt855E//TstmbnkGOLApXyLg2LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frQuzXJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frQuzXJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE4DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783380513;
	bh=NoXIL+lvCZeZYuupggb3xxHf54u/BQ7jGZ/Q67KJnW8=;
	h=To:Subject:From:Date:From;
	b=frQuzXJVBq07CHrXjHP1ZilefpPQILYBtGDrGzrF+pJj6MG19NlFJ4QbWhtOsI+J+
	 4s/XFPTwFk/HxakpXNPBfujrg9Yp01lfBMqUtrcwDsTszrbYbxwFLwtn4oeuRAY6w4
	 b4/B5NdBT8m3aXgu/UhCd6uOpO7myU0VBQ7sXi9s2gf/bXJM3BLVUZH4bW0zgb/ZwT
	 F6rUrytZhbb8eDVmzNPKUfh0UcBzSVgRZnDzrEUwn0vFyWbZdKxYzmoV3w6C+5e/jI
	 COxXRMwoSER51hu7emHVOiGq3I87a+2fyWrUAX7wZ0tTIekxyqxZjfAVBXCfDtPB3F
	 0h1V3p/sHmscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EFC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338051369.26410.5208264464176689170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc13cccf26ac2ab8a32bcacc59d0a7c3c236c48589724b8a3c06a84af913576a
Date: Mon, 06 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783380513
