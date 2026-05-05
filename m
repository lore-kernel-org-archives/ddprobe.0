Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7413B58C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777961254; cv=none; b=jrSMXtU8GturY2E6iyWGMj+CIL2eCVSBzhr11eXgqy2pQzntaEO3B766ODF+h9IzyFKyL2XU+9JenCCyn6uzoqt8+7kJP5nT5B6dsvmoX9jCvTJ679ejJHelYQoZCknpi1xaX+cqqoK0dGFcBeH2JJCu/A2qo2+f8GZVsFjZqiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777961254; c=relaxed/simple;
	bh=zsygcfAtIKTa10h10aXVCnvZq3LYhahsHV+BhFMTXbE=;
	h=To:Subject:From:Message-Id:Date; b=HBSTMxCgSHUvDlwfcKZmLmTp2zE4iNAss81Svo++BY8L8ZQju8IpaLlunMT0VamByX9eG/zLvj8Rze7ZmwLWQyUEFXLObCx9LhT1f8Vj8JHgKXPwUrEAi5ou/0jl5bD2xWtnSoegin/0iub2evQalLBKpwfuvszIqoMg796sr9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8NBvxTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8NBvxTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F29C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777961253;
	bh=zsygcfAtIKTa10h10aXVCnvZq3LYhahsHV+BhFMTXbE=;
	h=To:Subject:From:Date:From;
	b=k8NBvxTStFwMKkmnVtljbPCWvSmP5tQ70JNL7VGUzgbNJ/RRihACpkfkvlI3M/D9H
	 sDPXei/yP8+DAtUZ9FxqNKrfwSwfK1Lkojtyxzmpu75OpQxfidkGK0vhjmlYkNMWX/
	 VkiFHnHaqds6prJ+L2NOwZdzUk1eg5lp+aLVrHiUJBJgkgBjL5fs2hxiMgDiwNF6Nm
	 cjh2YDEkMhDHwyKw+VUkxDIptYYvm3BdBFfZ86EHrTazATX4RjUsmLsAQgWLqy3TYV
	 gsWhb/EvmHvVZlA5YFjywqW9E5XOcGZjGA47au3GklImC4Hk/yrkLdBER7YyVkENez
	 CY7cSaH4aYpRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50BCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796125368.15552.7091245618684498273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d991ccfad4716e01d12bcc1488a6273043408b9b5168bdc6e64ffba0a9008b
Date: Tue, 05 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777961253
