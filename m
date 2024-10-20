Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146EE2F43
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729454754; cv=none; b=n057js3rXzZBiwa5GCVWuXNthY90rcxD2WenKGglNi9Iry+BiKJKaYwKmLagXM/fMflBdrDOi6Br71LDFOHf/47v02UdErPnV7QkjMgPHoglhb8HfpiqxQc8nahttZHnKI9lw5kQsIglQI/T6isjrd+N5HzOLRYwiW+T6mBehGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729454754; c=relaxed/simple;
	bh=/Nq/V08rOqeZfhYC3GWRsruO7KAzBxxt1wEvX2f+fKc=;
	h=To:Subject:From:Message-Id:Date; b=GuWiVahPRIzW+0IKQ/FEs6k9bdezdIV8yC+tEF75HIHx6o5h4zjuBZOKbouifzKpkWUGH3A1qKLJ2S+4Zyrg8DOvlG+Pd3RfgSBl+sQpSTMo4YM0c3Ji8MIzqisDH2xsycReD3QTV3uq2VMDSUmbr/9BJnEkYuJGV8x7DFrD3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGrZcgxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGrZcgxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BA7C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729454753;
	bh=/Nq/V08rOqeZfhYC3GWRsruO7KAzBxxt1wEvX2f+fKc=;
	h=To:Subject:From:Date:From;
	b=JGrZcgxlrzUSEIkeZn8JJY2ILpc6kq4DmRR//ruYImcGuHDznTmnXI5vfG58cYtD6
	 OKg1pXkecn4In4n2EgXgb3xbbEsADU5hJGfOCqxFbbRaPF2sa5k5m3jnK2uQ6Fhc/q
	 QW06e5EJSeyCyAb1QQJsF5fVEAG11eg93MFKYls3mSiAUoRrtepR/zesI4i9o1z+yU
	 Vbf0SeX7p7sOs03nTsPmC5odq0FvzwAjMxg7zwrQ1MHep4OkHwJgKg26xu91Y3BOhC
	 4h0qKbpo+9AKYsEWBcfaQR/2nsHLnUoRaH2EcEhBHK5iH+mUonnuVziZT0X65VyqaK
	 RnXCug6a15lbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F0D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945475359.14253.4027613775323872367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f49e84702d7a8b3476041a562073d6e168729d5c2076d9d2aa3d642a65ea3c1
Date: Sun, 20 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729454753
