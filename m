Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2596D140E34
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751440194; cv=none; b=Y7LIMi/jeQloNwQS7kPOHpRLRoRHU00rO1kVoVpucl5DhZB2vVshxobxCwTckcOUUcZjMkh2977eaq47UsHH9UAy/6yCsOGWNmDIC5BE+Nyn8+15oMeYkNMof9YSwyeFbYof0Sgpvy2HeTSasjhaa9JhBoVvkGytEDclomCAJGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751440194; c=relaxed/simple;
	bh=v13842RJDzb707D5WetF/OJ0sl2czbiKtS6e7+Oc5q8=;
	h=To:Subject:From:Message-Id:Date; b=f60AtcB+B8UbudioqO0ZJ+zET6UuUjJoEL5SXvaElxC5o3xY5H44IAT+Yi1IXcZm7vGLP1Qnvj1t7UKa0Kn4RD/ioEHWNPtvu6Nml42ND1EoVFD1A2/7PLyitjsJqci4OE3jpY8HeVJHlytk3dtS3Km1PfU4Nd5z8GZaVaFU/40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jur1ZRrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jur1ZRrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC969C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751440193;
	bh=v13842RJDzb707D5WetF/OJ0sl2czbiKtS6e7+Oc5q8=;
	h=To:Subject:From:Date:From;
	b=jur1ZRrve4iuxt/whuR7Hn4S7GPi+O51n4oWV/GvfbPDbAwbnQPR5STN+K7eb/VsJ
	 uTmJkt0w3lvfaLC++4HyUCX1cOtCqwEZFhd0yr5FysNZjEFu0QEZ4dz0at8p9CGA9f
	 H4I+mPew20+SdJSm0+Y0tOiefBuvunXuPrz2NJfSo7QdKXa1FfeMqeVMjH3WyLeXTa
	 XPVghniKc1yAxVu2ixp9c4sNGHbj+U/TxKMYotCkZeeNewrjtSpBF97SoRAAF12uuh
	 1QDpjMAkKbkclyRZTBvjlWK0uVWQ0ZCqvIk66F+8pmbr0FjFzlc3Uh3sdAmWZa3IdM
	 HAFoeYHMS3PNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C70FC83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144019363.21118.4793790049205104835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9cacd8fa01fbd3101a5321c9e2a5551c4a507b1cc43aed55bc66ed6de6439e
Date: Wed, 02 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751440193
