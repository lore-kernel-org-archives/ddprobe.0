Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDCE79EA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755315595; cv=none; b=uujGmOFw4O3uMGVnfIhLztGKZ+mmK+P+PwSPB/Gj6nnZc1HvZXxkRh7PkoKk5+7dNr3IoJ+8J9KD/ZRhZSojAjn+KdbzCbRlMUnyk8yiZGDB8/IWPprze1/IvkloNZgiV9G9fB6Jo0DoCFgJPIJK7H1kl80dHyY4lMqlydfGRNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755315595; c=relaxed/simple;
	bh=n2ASWaPBj3ddFydNpjHE85szuyfoD6b0MyHfXXQ9Ua4=;
	h=To:Subject:From:Message-Id:Date; b=O9xlrB9+otCaaDGVpCA3+pqXFQdEfeUixEIgBO1/QknJsyqZs52hhjMPR9/4nRpWXTjzBtBH5HxAufvd00mYIMwm959f6zHhjM/WuoqLxdwi9SS45fmxwNjA7K8nmedRJCXj6A1nNDnFF0rFxscisG2sUyye2ZiQNj2094rqJfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeneUPES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeneUPES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755315593;
	bh=n2ASWaPBj3ddFydNpjHE85szuyfoD6b0MyHfXXQ9Ua4=;
	h=To:Subject:From:Date:From;
	b=eeneUPESIR3ckUeI4hGRgzCw5jVU3QJC1vxgRMYvJIk/Ojgh86ZtcWZ5nskQJHmGq
	 kaxQfO1d03CyAUqv/5bqkTAOL330ShJtGAY/qqwhT9Jq57uhfHITRzYAr03/daQv4M
	 HblAyzvSriOIz8cxFIMaDiddN35lGvESEN5i2ImD9BH+s9pTzA3eCQJqy860wkHFzd
	 MlzE3kqqYxYyoRiqTGGoIvjc4yX2HIbbsCy/Vp+hhZ+OZTpqiRmhy0RGZHd0dcBNHL
	 SoL0llVR/8APZHm8bZR286+kFBrnzOLunnbBz9zUbLNeSsc/7pYY38ktJyLCH9bQOt
	 1/0UevkSzJgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531559357.1806.1391339443318345661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69879cf9a99280e553f6e61f8bd2f4b1cc8ad8f538109f48983261b96a77a7d
Date: Sat, 16 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755315593
