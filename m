Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6A1EB5E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776185854; cv=none; b=OEDmofEvpa3lycMEKvFuMsh5ZMcc1ss1jDz8AQWgRvdYjo/GanX+CIkniDK57l1n3rB0W/8SGe9sf9lConMlLXsmHHh2ZlQr0AkJOsQQd0Le0euNp6IxaUNJ0xM+6yRFPwdHVTv3T9xQBfJ0ySjwStSsCo59nL3QzlYz/mKFIQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776185854; c=relaxed/simple;
	bh=ACEPcw64GAMLoegokK5nGFPebEikzlYQaUA2TEP3PIg=;
	h=To:Subject:From:Message-Id:Date; b=rxMs6K6nMXwcJdhOEhxIB9vTqlz8ZiRxOGQj1tNdowM8Fq6jyfrrhmwV71utNOEiSijK5t5ii6vXYuRD6Lz/DD8Uj1FPYpQ44Zq3GLpkZakyyli1ZhyTGYpeBCKK8tiukjOKr8Q+gyouGAjrngAxXQqoTOYlrobjFUxMyIjQASA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8nhGsMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8nhGsMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1ECC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776185853;
	bh=ACEPcw64GAMLoegokK5nGFPebEikzlYQaUA2TEP3PIg=;
	h=To:Subject:From:Date:From;
	b=A8nhGsMKaNw0W3gFW1tN4C9N/SlZ4rofM7ZfCe6jQ4U/zzqbuOLV9X8YedtlF2PMv
	 eJjMrY0t2/zlwpkWdb6SNA+4C4/L/fwevRDDYECsZ+4HFjePOcDyNNKEsWWbiFPo3j
	 XLlBOnwpZHO+sVB/gkQ/knO4QOONnvLoJNSB1K5P+g6X1CN0NuwHzv9R+OvEZZsHKZ
	 9najVyxE473++2gncFXZ44Tt79zFtyZp1BHYjNmpTacG7wZD9CWn26G/cdofPmehTb
	 4uAUp6PGAJ0eUmJHlYUINhg+QhT3xxfH666beMcQtQInclyIPy9O9oWVSSEBCDWzkD
	 tuQCEm86hO6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F6F9D0E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618585369.19883.3107431237375747881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113b3ece5965fcedbf22b66a278428832a56d6cd43ff393f4cfbe1c18052a279
Date: Tue, 14 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776185853
