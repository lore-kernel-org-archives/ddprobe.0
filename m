Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5519C3BCD1C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105794; cv=none; b=tigXk5vc0WeSvGQ+/+CTKg8krglcDeI+9eisPQPDAyVE5rZ5jUJLlLlYsBnPvXRcVBCnTftoHhjbMGzioIoE9cxZ4I+aeUYC4KQSykykBcC7W0bKrolJqV8hGrX3naxES89m8KkK72oqEBWrhwZaVPhLxCgyYmLDAyamAvYK6W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105794; c=relaxed/simple;
	bh=Qe8Tng6s3n/hH7AQI9AsFXRy+IGJBNrhotXVzl4SzDc=;
	h=To:Subject:From:Message-Id:Date; b=ZjUwAvG4GGT1PqHVghGTr6wz7QPAYEANagXvd70xETSfw3qhsTAS08StnpIOIG4VYDyWGBH1GEzAar530lk+G+KB++PtPM2fiATnMkLTGdeP5k/R+qAXSzKwvFwaRAKGaxqx1kPgl/LCBh0YIfLe/6PWgwzM4+/Evl11v+dkXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcIfUzWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcIfUzWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D5FC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781105793;
	bh=Qe8Tng6s3n/hH7AQI9AsFXRy+IGJBNrhotXVzl4SzDc=;
	h=To:Subject:From:Date:From;
	b=tcIfUzWzJ+16ZQauSNjp0Dqk63HwbsnuYl+/j8s5wf/EnEItfpCVlqVoLQEkad+iL
	 DySylOOC+YoOJCYYjkaEOtPl80vLu1/2XkKkfmvn6Mfa1hww5CtCydHAT41qs92t0G
	 hW2JLAv5WlexZgAWtVMVnjIMxEiikz6gn3+fICvl9XI7p8UF2kUFyWxypGqyT0x1ZZ
	 0KG6AkX5JIgtEjIWR44l4nQpeEPhyyPrTAHVJEqVDSwFWCiLugC2m1XIu/VLpcllrs
	 lsuRbjtNHqXp2nvhWJxExLVu+V4KcvFrgJrvwSj8grxLFAezA4Uj0u0DeK33S31Q3y
	 QIHB0JhgAFS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A5CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110579369.23315.11532638611560465523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2b79b4e4f790554403742fbe4c1e705bbd88f9fdf60e64152ad5266460d9c7
Date: Wed, 10 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781105793
