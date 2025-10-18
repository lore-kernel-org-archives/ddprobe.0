Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C42798FA
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760816994; cv=none; b=VqeXhAEEKQW1fU/K26oc3IkAFpH+iJ1XeeEtqkajnkrknJgTiUsEn9XkCOqcMdWRsWpeUkfxnPsshf4n7AmVvrlcRxZewdVosBUKjZjdhUkIvAsF+KMOcyrzrsJhlYiiYnyDVLNN918+bpxoQRNm+47ef9H4R0xobIEZwQZaLAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760816994; c=relaxed/simple;
	bh=+GvECCpktoBGNEwwmBVoJb0lHPQzEQA7sgPNDc8VqFs=;
	h=To:Subject:From:Message-Id:Date; b=EwbzOHuTk/PAIfs+pkInNnQey1NV2O1LTdgeoCO3fLZFwzjtpY4d/FdAJdDdf3bR2NNO/Eti8xQvoFrKLYjv8Pnd9Y+S/mqeQrnb8c5NJZZIyNcL+DNbqcNEatQFh6FsI2CduRab201WXzKjlHvJzpteZHKVluKtOg/5EWlDNPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHJ2QdQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHJ2QdQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A949AC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760816993;
	bh=+GvECCpktoBGNEwwmBVoJb0lHPQzEQA7sgPNDc8VqFs=;
	h=To:Subject:From:Date:From;
	b=UHJ2QdQ1AsNR5Sqeqqnj1ZxqUbiaHr3ayGBvVhExLB+awzcCopuC8ALU64DQm+bTo
	 4Gy8vE6f3jbX+XajsuoV2KuPFCNRC+oraoXcIisrkUHTTkinkNgB65E150Rh85+2wo
	 iYSBOhSZOAaJFVX9YvjnxdWfIsinTHc5yHjbkzDJuyY7Ve1iuaiHjqFb1RIIAG3E+p
	 edp8ynX9kvbAso0YIBXvOQmO6qhihAqHVe4602T8xuy+rv94aZHaev0SVom+36tHCD
	 0m45xk0MjPZRNe6DssrvnJCnY6bU8psS8JuiTIBi0mdwlZGIY0tfoUWTJd72M1f7CD
	 pYnBj0thfyzlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9950CCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081699359.15086.15435989204316889591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea32dd18294253c63b22ae1eb3417f105f5e87ee1f22845dae223b4a6be7792f
Date: Sat, 18 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760816993
