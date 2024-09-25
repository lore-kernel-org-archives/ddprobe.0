Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863F15625A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727250354; cv=none; b=ZvNsHeYSkNqQOsqsG2Eg2xZ8+w7a5Cr3WhLqcWky5yd43K/re/rVTEUGq3UyzlK++p4b3gCP8uoAo3SGMHQYmAeATWb05lVQjtbYxTMY3q74ntnNf3J/l5UisrkX9AW+qEhuuNQTLF6T8EgPfxT5jAxqX1F0JDG7Lf59s8ufBQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727250354; c=relaxed/simple;
	bh=5OcJa+DKjvvroCJyapRjY3Xz3BhDujSPHLXeFVZlp5A=;
	h=To:Subject:From:Message-Id:Date; b=uK9TQ3kTZsieatzXfPDXlFu+nJ9xpRtZHHcp8v3V4pfMpDLky17TbF8CtO+AwRCSWqoJTGJgMSO2d14ypZW8PHBHHQ1wjgTvz6pqbBywP5+jimX0GtH9bsgO4XuxYeq90iEOjODAm5D6YiqATI+e/iCC2g85h0jUr9D0dABRkwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikfsrzy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikfsrzy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727250353;
	bh=5OcJa+DKjvvroCJyapRjY3Xz3BhDujSPHLXeFVZlp5A=;
	h=To:Subject:From:Date:From;
	b=ikfsrzy81rN3E4ZaRt80S78gqwvYud7/c/OZvXkVAx/2YHlM51FzXLVu7bVWBQFDi
	 DbziNmkD8WnzK91iaT0ks7gpStNd+Ct5D9Q4551HNDa9JkTLHKyTSC3k2YVkBD56Hh
	 jCiUjYBw9KwIQNnALp8vYqbOHZ1mjfiu88XrAnqekNPO9bGT6JW6VFgDkZghf01Dv9
	 5x0TOLR5ePxkqIuCOmwl77URzrz00dkz+JJOLkrjhKWB51qdJiv4wRSkYYl21MwSvg
	 UQsok6Wo2cErrtvjvNGar4CI/XjrpowLmpVYrAauDubS+QyEUx7F+d8F77qSPTLC/B
	 HpRK9XJ4n83zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FEC369A7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725035359.22422.14553820507027730127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f942ec9ea009ec61e7a2fa24f461721af03d37c9b54cf18723d83ddc8e38df0
Date: Wed, 25 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727250353
