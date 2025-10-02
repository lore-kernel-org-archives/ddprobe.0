Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F662D0275
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759391394; cv=none; b=sRgIWEURN0vGm91x0ucW/jrS44Y3FEPWz88JKEyN8cPiXsFfBXiiZnkznlRShVC/06cvHd0lxrhJ3fvKrYUbBPTVkQet0CwNLH6cDvH7m6Im1/6rJPmOAimdnCiaPLA962GeJzDiza3LWxr76RxT+k+CEnqxBRjzyI/LLhrtYec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759391394; c=relaxed/simple;
	bh=VWYjLw0n7gULJ/bmIFx5rLEBf3aHoiJtoEUXESPDF5Q=;
	h=To:Subject:From:Message-Id:Date; b=WVE2WUIYHpSZF/LREMqaQRQwzh2HPG15WIiHhrYrjb3Z5e0LYSSVdIrj4VodlCUeiklPzxXkHHBWTiv/LAtl8qGEq+GuAuvfU0H3IWgVBKNwVAfq54zgTmrLLc/h5dQDVXJJzYa+ucXjHXq26x2UTWPrz4fZrjTsnyMs/IYux3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhxa0cdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhxa0cdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDBC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759391393;
	bh=VWYjLw0n7gULJ/bmIFx5rLEBf3aHoiJtoEUXESPDF5Q=;
	h=To:Subject:From:Date:From;
	b=fhxa0cdjQ8HvTa+Z2r/VC6S/vLzf11i8B6xmY+QW4uYcxcMxlg6RFiRDGjF9mO60i
	 8modXzaIgGWee8y3sGCfYV4rstviL9Nfa0072HsyS53xrOoDlN3sjWiizxyZnNw9T1
	 AC9n1uPoJ79wrJV5FMSa+ALw3817Ifet74T5hl7u2QNFgOnVW5N4Gejqo85vin7Ymu
	 8YLQ5P4oImia4YaKT9wN59TSfQ/l9lYK3tGRBDw7S9kakLi8McSM5E+i8ktAJrwxbK
	 sEZivB37MdDWI1ZKgQEFgKaNfAcrrm1yCuI/B+lhXwbC1KA681ekfOOS/O8hKGpyS5
	 8edR4BR5YIyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034DCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939139358.12408.4778842382555277621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab0c05269af61f3fc1eb5c6484842f9a4af6d44eb853401099ae2e64e5e00a4
Date: Thu, 02 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759391393
