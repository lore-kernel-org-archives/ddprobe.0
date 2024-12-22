Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F30184
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734825954; cv=none; b=OD3E9A3FySX21T9QmPna2KxEEfuJ7NDYqzpdwFEjVET9Pk+q6lgwPXAh02lvZRyGcuvWe8kdTusnZXwTC3xv0WDgHheFzTt6eykkoIIw1/SzRxdWPQ2aZvrHSa6s8hAedfEq7Ro5tLq/0dMXT6ib0HEmVWS4aRUlxR0x3yCZENQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734825954; c=relaxed/simple;
	bh=tpymVXLJp/OlIu0ZE8UsNA0t/3P4z+K7W0hDcrm1mgM=;
	h=To:Subject:From:Message-Id:Date; b=ppsV6/NG57W/BiYAeth6Mgd5RRje6KynjzZTT0scKGWkTyORZazGdM+WoTG3CXjdrCicKg6s0r33cCtmPloNgl5EC7KQs4wF+7kmTV6SYG4pW1mumuyrRxVVUam1LjlfcF9lcM3I8H2uv4RxZ6OdwFVycuB0HaIbPhaqY0gSKBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI/UTGOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI/UTGOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAEEC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734825953;
	bh=tpymVXLJp/OlIu0ZE8UsNA0t/3P4z+K7W0hDcrm1mgM=;
	h=To:Subject:From:Date:From;
	b=RI/UTGOyFy63nmLCJDup80HQUs8JfoSCLIKHmBg7eZiOx1dH+3/M07yEZU+L6BP8B
	 a3XX/5W8fw0uMkT0cHSXkjhLayRyZY8EEAErTttDT86K+93boERr8UBFVQI8WJ25wJ
	 fFkdGWo55yp7EJUH891N6fiX4yVti1gUVv+1ECZyOb8LSx4mkwmoPc5s526TtpegJs
	 X9VnIKT/O3sMHqCGYe/xWhfjO0PV6nOZgJQ+tR8FhRimaZphEHOuB8M4WVeIplab5C
	 wiDqRaL9mFSiVNqHHM3ttADTNgXe6RwstAvJKp6AcqnX1KIOAn8dBLt8ddjC7U+vzI
	 6q9gqw8yETnwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB1E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482595360.17241.17779667068664851472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d937e23dc72761760278c3aba59c9208bdd4d513c59ca3ab3226ce04d587fb
Date: Sun, 22 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734825953
