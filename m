Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102EC40DFA5
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774051494; cv=none; b=iY1PHhY4edi3HKZOA0EKKATzrsVsNYY7m5YO9ONQEiwtfqkCCnDLFeZDB33ATjpTGfo93AtdlwN9oukOcJN+44k+ZRKe3F/LKjuTAcvupkrXl4sJNfY8lV1P/hMPFHKgcNUFoN9gJa7yx6SaEF1wwNqQ9rIQkK7vfcPPsDy25KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774051494; c=relaxed/simple;
	bh=XfP6oJSj1Zy1DVDqAMg34uPPhIe2NtB2aO+CQs++bfo=;
	h=To:Subject:From:Message-Id:Date; b=gMeN59tDERj8qx5oGpCFgbOKD45Sk0yPQ/B/vM280DncBgnBEJRuk9+Bk4yUnbh0vmYmkiz3oiNwAZNOAmLhHZtZEHusUCg6M7N5chUf2XyAKE+Fal+KJJyXzzn3lVLQkPz0aKAtgpW8uZ5U8zdCPgdcosMzO4oDPqYDX4ABy6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIASGdOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIASGdOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774051493;
	bh=XfP6oJSj1Zy1DVDqAMg34uPPhIe2NtB2aO+CQs++bfo=;
	h=To:Subject:From:Date:From;
	b=dIASGdOICjBFKOIGDMo3yJO467xinakfm2Peg57waWADnnmpg3Ya+RJoBnYrZLMV7
	 3S5qXh3UQdVUvtMG68L7EaZVyxbIWdHl/8NTfRpQCuJe2H9FEELWgoR8qpgyU3jFHN
	 wzsRrkPUuS2+mc3js6c0Pn5z54gJ/BXDoXiXFjTDgieqlmilug9lyk6sNORYKqL/lv
	 +PgJCXRpSYAYVQPGXSUVXwyUK5PyY/m2uahh1W5HoKMMIdy7WDQIP+g79hmK3kvcxG
	 dC3Oq8VDTV1p4OpMp+K/ZzbNn6KxrExTOV0vjknqS/O0thG3T+ffpoQ6o1ZE6Imikg
	 OfHb8M2oZE0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DD1099B4C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405149358.31428.16043225282363857934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27d7bcd16eb3e4a4016f76333b5365dd48b2d8ce71d06552cfd21e40048e5a0
Date: Sat, 21 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774051493
