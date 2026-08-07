Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3592539CD0A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786068035; cv=none; b=nNMM5juBHEOJUggCWO4Y0i57A5uVqFkstJFdxMlqF+N2sy6nBU06gCtcWJdepI1QL9O6PUwBN7U+YjQi+zNaodoeqBhlCJhtgOGwHzm63RDKWCezVkan3aiBY0zfyvKhHpiW9lIB7alQI/s5Y+G4G0UYOEScyi8KPf1a5c1nSYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786068035; c=relaxed/simple;
	bh=ds6r9G8Hp0E3uyrCp3sh7mYInBxpL3VL8thno9pGTZY=;
	h=To:Subject:From:Message-Id:Date; b=LO9QN63YMwrdwngF8z6NbNofHNvdOyRzekShZT8ZZl1FxnI50+Z3LScFO2DYPqnFNQ6ZAQnS7zvtqY+RX1aaD0L97fuovoKqZu6VPbEjY152FZ96vrdW+DlidU7JxG0hqwQbtN7166kUhnK+EDTwe8Dx60TISHs2CGQ957jJ2QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXE8aIeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXE8aIeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F13C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786068033;
	bh=ds6r9G8Hp0E3uyrCp3sh7mYInBxpL3VL8thno9pGTZY=;
	h=To:Subject:From:Date:From;
	b=QXE8aIeEaqi1H56li5xwD2EPw+ENrnu3I/zW+ZwDdt5pmuLLVXQ+vXTCYl+dgslUN
	 KEB6ibVZ4p7meEy/yvkOXCRl6ujcEFXUVseHVd00bRzHE6eTy/ShlucZMVf1Sglx68
	 6+DE3qyVVpYqZi+h2UcX+eIHWg9i+1rxJ+wMxZOAJMUsPiWP73Cu/5+/NJUm/1+3Z8
	 /d7QxHSmMJ6ud5yvNChQL6O5791JXuayvSo5xDSH/xUmkNOPWCdXGG300nztGAOOlk
	 tr7J/vn3m1yXblPyxOL6j6nbkZxyUainSyG+yDfp+z8jY66okDwzmPq0oje3JdYypU
	 nm9OqvPyuNYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17E7C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606803369.19589.1864986401862851930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa51db53b25806b52fe083b0b6139c5a1596f4af6591eadbcf03320e87d5873
Date: Fri, 07 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786068033
