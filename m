Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1F72836BD
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760278793; cv=none; b=T0Ub86TfzfWRrAyqQGZvHjAvpziBWJt55tbLkRvTtDYNUc4dvpxYFc4Br2m49veRV1EE7BUIIT1Iedm6QhsuPEXQBwfD7WaUj2vSNlYRSGOY8V5H3CrEe173hZblaDnjS50HebyltMA/+JOl2OXiMjSiw4HN1sgqyHfBBaBpG1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760278793; c=relaxed/simple;
	bh=kcLzm6Bz5kBLyW65O8tq4x16jt5+LHc0jFByuTZXqSI=;
	h=To:Subject:From:Message-Id:Date; b=GQLsJOo9wb/crvxIulqxtNfun9iahVlt7Iy2vPCeOug9AEAma/CsZg3uLDXGf/mjmw2KrcSkw43ADprKBn2xUcaGIXT9Td4ijj+Ko0O2gGCrTeS+OszTiysVWVCY0ezxdvlfTaEvrQ5UJNGspkx6/ZPkawBsYEZdVj6M9yHVK7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g52GFfFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g52GFfFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760278793;
	bh=kcLzm6Bz5kBLyW65O8tq4x16jt5+LHc0jFByuTZXqSI=;
	h=To:Subject:From:Date:From;
	b=g52GFfFghTx0NqrK1kqH/rYFjSyAAG+UbcD6S4d3mxqRmRyiZ/HrBLDcqziqmZFJD
	 4qLQF/GTcTvl+hvqQ6hGf9gWxhZGDaTs2Lrn0hMvGKe1IZtvpI9FQ9n41vEpp6u7II
	 D95VyMXERBKrlYt6mdojz8frNvEWpVE0qSgpLYYRB7O/U6I42NUfMZ4TK1XyuZwXf/
	 ljFqbu6eVyU2BE1GIAOxo1GqdDMKg8l3R+1jxDc0MKTMsETKJvc0tqV0PQSAK9W0y+
	 WUec997AKds4Q3cbKbCuKeLOr5bpWhcmc7nK/G1b02x7kj1TZR6W/0XN7Gx6SyZX6C
	 qeobIeIQWA2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD2CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027879358.14016.8564521434629050693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f66476cbea22fca584e753b5e8bb1479d07f53b9a66afdf6f874cc288932a4
Date: Sun, 12 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760278793
