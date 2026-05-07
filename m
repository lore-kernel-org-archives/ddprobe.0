Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5FD1D5174
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778113654; cv=none; b=c2cInIyHC3TrS7ETlbPMK5zMZjmoVO6g2DSPrCHxKhuMPVL9LOeUeb7gP9K0wKHr4RTlUoQtv7slRyjNt1EHLTJeprJfdfEmQq6Oo+kkUouZsF6/20OhQ4E7WHEQLSsjPHFfTYX5p/2UN9ntIw89kiYwRtd05Azcs4cm1Ta/mPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778113654; c=relaxed/simple;
	bh=mOvyas8PQmmxClzQftj0jmrZnNtzz8N+B6ThlrTdprE=;
	h=To:Subject:From:Message-Id:Date; b=TZlvO+SwWH4SDRsTWI1KHpKa5ZOz8RxFl+3UPQeii+LhAVVHWi5Tm7G+q0zH/tRr8cY5DbAyqgO8L/eFIl1tH4NfpwFa8Eo3dssA7UVGWffTpM0gH4vgtAgYX70h2uZyogf/Wj7Iw50vopvgBkd8ExW3JkOZTQaVj2YQIs+4VC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyttJ/L5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyttJ/L5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27C2C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778113653;
	bh=mOvyas8PQmmxClzQftj0jmrZnNtzz8N+B6ThlrTdprE=;
	h=To:Subject:From:Date:From;
	b=UyttJ/L5m7eIimfxTMT0U8zf48CbqIFSNQAt2F2+msYaEQUeryD9Q41ldN3XCKmj+
	 ksgQXOBNGYL5YNjf6JHiie3hHPmNRvmap0EdB1T4WqOCw6XlwEvV0GjtSKQzb4AQe9
	 ydkRSy71gHRb4UZtrhZc06XV6lzltgvlwVOdEZ4uWsNiOD5z+XoseNgwOg6gXBIgBB
	 9RlsjM2cuPJnzyiJpGilyv3H9f5GHvIuMyjH0UZ9tWzxLBYdALDejeIW62DAIevA2t
	 hD0lqhCX3uuDSM+wRYtlml2kPrIbYgOBYS5vMPmrUL12gFUMF+cbUSx+Domm2NF4MZ
	 BCl/m6Er5mUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D1CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811365368.25844.6982565618599041401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6905f4fb4a6c8b6ad28b5d617fded810bd832f4a4ac6f266c58d43e4483428
Date: Thu, 07 May 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778113653
