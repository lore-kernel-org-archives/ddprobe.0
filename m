Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BCC2AD2D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734057354; cv=none; b=aDX61Dc4QkcGcXpYEcNe9GncbA5NLb+gL/wdmYmJuKPT5bxPrfxrgbJcirli91Vi3H5/yIOnxiY9QiKDHXzjBId/TubrDIsZ8uuXQ+VaGrpxbPYFdl3mnaeeAH+8LAO05P7bTjwvEyAl2xSobGvvv1bAqlg7dVlLsdMwiAEZfXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734057354; c=relaxed/simple;
	bh=dUZ7VuukbDZ3q2a9JJqRwigfPfJaZQlv1uZ8tYFXPrg=;
	h=To:Subject:From:Message-Id:Date; b=JKcd7TFh6Cf7jqX48HSs6EA2Fd1jRsf4ezX5UKqfTcuFc4vn+vlvY8E9So2caWWsyLeoJvmW5FM2txF+jx0W0vaoVuCAAbsCXqEYfM06ZnYUslu+khd6lg3SDeFdt/Ea4tPsJuuSIIpc7QHPkE6P42qfIrxZkea4NkW+3t4+QfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AApDx/Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AApDx/Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8853C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734057353;
	bh=dUZ7VuukbDZ3q2a9JJqRwigfPfJaZQlv1uZ8tYFXPrg=;
	h=To:Subject:From:Date:From;
	b=AApDx/McBcDsvYYYVsFfS+nHLwymFV9i77xpRF2+zTJtiNxAfQzwVCkgER2xOsbKE
	 TcOaNpdMfvHhq9QvvShMhskLVBWlhu1Gql1urTv3S3YLgLQr0W6N8jbWDDaHxNw8Lh
	 IXj3PiDjRGEbELkcnyYLxe3gyQeZYm06h6R4+rwlK5iYUOIT2jhMFqWK0LsEf98UR/
	 wtNh28G8jBxMPdxovR5OgUnhV3FAuoQb4mN21BrK+z8PboAn8PZ43+zyyQ5MxkB+fe
	 Bc2qY7heROqgwaHYngKjZ+lPlXQBYVSSDHxCO9VmhqXi++//xZAug/NMLumLFru+XS
	 4GFs6LPTOyU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB28E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405735361.4587.16677492889238094453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ff69e4aa4fd318a912200cf55e39a34f61fecb46fc729ff2fcfd89a07b05c1
Date: Fri, 13 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734057353
