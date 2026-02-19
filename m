Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE443C2E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771499694; cv=none; b=OYXdh5mV66BmoHVTHDB57a8qcc9EXH5kXY2AqlBMbFFsWxVyr3em3PWSvdl/2lZFXQFoROV4iv/VQTefZdkoopHx+5YUHLNJ6y1X98yX0qlmHumiF/5V/qOwQLhkyCDsbW73W/43mWW/hGEscXa6FyRtGhEjYVPfw5cZwAiTYXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771499694; c=relaxed/simple;
	bh=vDiVb0lLph7NxznKK0W92DwKrCJI6dhiJnKxDBKW40Y=;
	h=To:Subject:From:Message-Id:Date; b=luWtaeac1wEZUn/n9pG107uATz/HZEivTyTqN+FZcgf4M+zr7r16n3NgYm4ADbB8lfG/fVmT5AspNHtNCV1+pCXdQUsgdgIKP2d6PZ5VnodVptcIb47iLuGbMHX5qDkXLESt3lHHwdnrYEDHlcidu1bAQnhhZO2HEtuq7vjHuI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB4/BCOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB4/BCOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA178C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771499693;
	bh=vDiVb0lLph7NxznKK0W92DwKrCJI6dhiJnKxDBKW40Y=;
	h=To:Subject:From:Date:From;
	b=DB4/BCODE6MfPH1BZUNMe6h027+QfAGnOZT+9+x2oMhk5ooeiCzmcnekrXBpCDocc
	 oV1DG/ggVkUhzPHqSSoMLDU9OWl64lHNzrtNRnE6WpQ7eajVn83vXFJLOrr8iFsblY
	 /KUkHgEVO4ISXzj8QfwUTfF+KkWUSQ1CU7FIgYg7w1uNLSOfdFRwQqrR3nsXWKxX6n
	 06TcDCIkHiZ++O5HimE3fQWK1om8yKDe1j/yONIFwk4gcbmhIBCO7WbFxTEHeML+Nv
	 jG0xg3m+HAkNoDQpf0CYeMAHOuJkWbSEJqcQ2ees9p9+DHVKDiasKJpc0U3P0TNmWA
	 /DG9LaQ2H9qPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF7E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149969359.30329.13305612807598144774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a287096b3aee41e4e2e05eb6359acdc63ceb2325c1450d957690cdecc661d165
Date: Thu, 19 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771499693
