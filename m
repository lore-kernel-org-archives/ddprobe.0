Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126822114
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727060754; cv=none; b=MlRQKk+v81Neg2VgnXQn+V6N8JIATfJpCWcrrpIYLdX8sml8EXmqZ00S4NQtoaTG2aMZ3yShHkuJGL7BB0hQgMbS8+dRi70y3vRIqLlAa228KD6GLfpbFdsH9GThp9MLq1gvZ6e1/H4eJGuo40QID/ySdVwJe2jCtKzUx2fuVE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727060754; c=relaxed/simple;
	bh=vi0w4W0WcYS40sKlFf+TED+DeN0MX6MzWdrUAUjJhxg=;
	h=To:Subject:From:Message-Id:Date; b=huR+xErXtcGr3lf9cwNSDJr4llYginVOrKxG1W/TIy9UgDKGKHUTs4/V87/HmCA6Xdh8weVOJ+m91ACnR78qj5TJG+A/XEUV9DYKIhP6FsLfiySDS/vdQbdwvcJyCdT8plw4I5DHThHF+iuapALPOUZ0yl8H97W3rOtHj6wcdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/dhgW6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/dhgW6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65BBC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727060753;
	bh=vi0w4W0WcYS40sKlFf+TED+DeN0MX6MzWdrUAUjJhxg=;
	h=To:Subject:From:Date:From;
	b=j/dhgW6SV6an+clKI4gnWbwep1kT7R189AsrhoMo3M80kZ8OR771g70DpX/0gHQeh
	 NJdALFiPySeYw1IlRUtwdrdUlxLBfLEAO5EdwjBFLTtqeIOmJA773aMboDxFufMdZi
	 f4h8Vd0krwDBV1D4jVoizvk8lAQRjGq50m5q0daM2YXqQGX7FfjR5OxD+06E0WzjfY
	 EfJbMfKOam5dUBvWdBwKjnpWesc9sKozzfGZjT+Xc4x0sIk5Edg01Oyx1u1zJb18TA
	 r/8UPoxpJnQiAMHrdkWwQDJModjoa+99cnVVZShk37FbRVF+VmnXYf74Ae3t96oJYq
	 HF3qYapKvxL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D2CF9C6C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706075359.21604.17562427870526202615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfab47d57dd3fc40db3076874e1375452b7521df12be67146a39a18104b7d8d1
Date: Mon, 23 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727060753
