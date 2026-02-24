Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BEE3A1A33
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771945494; cv=none; b=JU+EkKJfFHTrcNj+SItDB4Z914cKrTtxAQp+Ov4QR9MrV4BjNF8wb1THuQXtpUK/bfV/WeLeXj65BnP7O4li933hYCx9lpys/4C7xV+cGqq1Ze1Kp2qVnG9sXRp7kaV+qkWB8MtiEcxQnE7Yv5m7CwsIfG5epyBOtj+j5Mb+ljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771945494; c=relaxed/simple;
	bh=+2eoOfMBEELp/IfV8RNqn+VQ5UgdKcfhh3vlychmTlQ=;
	h=To:Subject:From:Message-Id:Date; b=TDtXqR6CHFU06n4EjMxXhukGusLe6QIZMtbHf/O5/ouJl/NSklsJNzM69KMEpm40If8/ivgXWRIQz6OIOfQQ0fZLmRaS1sMKtAywSP4dGX0fayPsFJqIvHsPXT45o9IlFT0DgxAqZiPISuKY4nq5v948BK2rjRuORh6WGpYsyaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oinlfynD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oinlfynD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFBC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771945493;
	bh=+2eoOfMBEELp/IfV8RNqn+VQ5UgdKcfhh3vlychmTlQ=;
	h=To:Subject:From:Date:From;
	b=oinlfynDXrjX04cHF56+VXO6JTreVi9fVq6OXdjP2gOza8+MHsf390Bn83RcPkisZ
	 7CD6p7jB1XujcmQZ2pn/2bFBqXqnWxu1zSUDS7OXpOca1oEJngZ91x+Uc7ghqkC4ae
	 6jMz12LnKT2MMBYesXhKFIfW4OvcaR81+oUk9aLWhOWLzgCinOTlJLmOABc/opPRIl
	 XvkBwen1B0ZFa6/0nsVM8TjpGnqBgPnAPcfEw1mdr2cfLvE3MRmlCelGoktgdFqZyp
	 g1yCUzbQ+PsISwTzloaPeZM3/tjrR+2PouaVnxYRmYYWHAPmiSzhgOfGMytsDRIQm5
	 IGLTaRakmkJbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC1F3C989
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194549358.29418.16850425086713425259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f403a16794689394781170922e8dce8a5315d15513232160c9c47d3e6fbc75f
Date: Tue, 24 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771945493
