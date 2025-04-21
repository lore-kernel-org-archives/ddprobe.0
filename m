Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39334189528
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745199594; cv=none; b=ubMYJafPp/dhmJxoLNsn0g72iDZnnfP9AEx7j7nfx4WKnVwZAoj++BNhOxHnprQ1ZsbJCZz0NsdMsvononOHeSmxwWnNtt+g7FlMJUjwiLFixbQhDkFRd3ILgWlpVWHVsieJImUICSuHU8cUnb0Nubs1+itOPENNoXbTqvm0jfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745199594; c=relaxed/simple;
	bh=bSrDs0Mzdq0xArob8IFo6HtaqBY2TEVXbAK0g873mHg=;
	h=To:Subject:From:Message-Id:Date; b=iB3OjFqTZKsEA4/dQKi6Mn7iQERRvATChtIFFA6RlEvHQVV2OsSl6xfjMR0B1FIDVj5xnH2Zup+KmWPIwTC4UAE23xKUh62opQQz73nJpzrBEkNg42l6v5Be4IjkqqOi+Gkw4Rlz5SDxzgsFyW+ojxQD16ZlFZCH9Io5OLLph3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3g3J3i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3g3J3i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA7BC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745199593;
	bh=bSrDs0Mzdq0xArob8IFo6HtaqBY2TEVXbAK0g873mHg=;
	h=To:Subject:From:Date:From;
	b=B3g3J3i2GIXo0vO9mFJ6lUQ8pUSey73mYoYmDMgTr6MJ4l+Xea4jepBNU9H6WJDQh
	 TzoBPJ2mRpPHmVolDPEtjegpigEbO/7/h8n/Pu8OmiKlssfR5y/yJlO+rzS7rkx/Y3
	 vUAERGYk821WVkDdfv0XiLtQ1Aw+logCWxC+gqcJeYSwMgkIPTNts+s2AnXqTdL3a6
	 Uti9qdkthPsHrQ6nK8RIoy18tKuhbMfVoDc5hxXqUq/Z8yfrPE2VSCj5XbP/pb93c3
	 TFV97XgN8iB9OtTS02tC0rZddXha66JCaA4vdCF7qf4bXe/5T4EDXNTyh8KXzRDbHX
	 Hq4ah6+kA+A8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC46C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519959363.8894.3085209132855685177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03847c624076115eeccbe34631544ce361f02141c86000b0c64bd73c96feaf85
Date: Mon, 21 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745199593
