Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05422481D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707770897; cv=none; b=GDu4T5pvJjz/kYtwqrFT9/rT5TUMGgcFVtYJuvRpDFYqzZ4FcH+BnltINVFEqOe3b1OGbTk4gy9RewjlLO0Jxu6mtf1mwSSCgkg45MrQsZVFcaf/tAOjJAzf+5yoCP7kJ6h/W09uzvB1PPle57ZMpki/hHzE57BeUkdn9u2+8SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707770897; c=relaxed/simple;
	bh=cGzxl8lDeTyrrl4wpK3aEfkigDHtEMixzWcnTpbyqEc=;
	h=To:Subject:From:Message-Id:Date; b=DW3i7dGhiQV9nEhWeIY6IvxDqK1U3vQS00MdBgqi+EI7iUbA9C6vrNenDXpuhKHwmMkNVHa8gKXlBc5fAbQ5sN2cBz5sPuBZQx+mkh0cXykFAHSCvgHdlT7Zs9131C3O86S52P0gqWtWDY6evBU5pkkJ/QQ4ljoY8YwCnw4hZ/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9X/VUrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9X/VUrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B87CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707770896;
	bh=cGzxl8lDeTyrrl4wpK3aEfkigDHtEMixzWcnTpbyqEc=;
	h=To:Subject:From:Date:From;
	b=K9X/VUrg0umTQK3ugR2mTf2MAWYmFUBnIhUz4hDOyKq+EjWu+3GsxMbVTy/rfTjvn
	 VOm2xOefHjo32WE7zxD/UO0aUNK5QkRDNn5V6gNUvbzMyZtDO5CQf9gGlfYA5l6GTI
	 /afLWZgjrmMdIqX+2dYTKCuZehzjPOQyFmp8fkOD3lLKfN40h+b9eUPU/eCnA5AfPV
	 tlil/mDxuFcPkMlY9SBjOPIS7MyTcHMyYTsr/M308RgMNkPxeSbGr8J6ac6Kyz/h9V
	 +CokocWLJdjrrah1Rua7YhnfwVQ3RIzBUuZy38l1imrv520xlRlxnLXXDP7GZJ8BL/
	 bShtCUn0zAVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6352BC4829E
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170777089639.26225.12340923963265417620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05eea84cd3159bf37fcb9c20e6c7b894b29f0e68c4cc3edef8196b8cdaf7991
Date: Mon, 12 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707770896
