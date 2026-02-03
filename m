Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E9C324B23
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770117834; cv=none; b=p+WXqVi4wzo68Z7mo6ScEXH1JxinuPgwCvDeOFE9k/pEZKC/wGLL160BtZZA3hIVYG5Z2yRYd9bcUSC2ORhUfGj/QfyppgpeyCeyzUIcaqPvv3yp3Ij3TM+b1cEhPIF44ghHg7vo21ypmQLS75rPP2qEpbEx7Op08ekuoIOIvCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770117834; c=relaxed/simple;
	bh=0KUIuslkZUEFjxOPj0H+qPytMvjLhhDthOPOGiZUt0Q=;
	h=To:Subject:From:Message-Id:Date; b=UyAkI5FdiyqwsZcmjfYNcG1EwfWiKE62udDizdtXlTqwnP3ijJCI2rAgxUJFPE0ntz03YvJbHUERxaisVx+fM8Ai+oyQmTxQZA8vWoA3qKB32Ae/rUEDykCYMz0QC2/y1JIoOF/kcCshcA6EsQrp13Epti55v9KAhc22vB/OcnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkLJCr3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkLJCr3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FAC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770117833;
	bh=0KUIuslkZUEFjxOPj0H+qPytMvjLhhDthOPOGiZUt0Q=;
	h=To:Subject:From:Date:From;
	b=lkLJCr3n6t0adJGToplIdDkFVHCpETkhI28V1SKpIY158oJ4gB6sY+xCltT8wwd9o
	 dqbl6AcMdDW0ap7TSKXxxg0ZiQv1EIoA00CXDkPfstDy/Lo30r5MOvqgZZ5K22JdZw
	 cq47ke8z+7LB0a84eYxZ0mqtDRUOBV7RidAytrEZKpF0uV6CczBnFYVDAYS+2XRIIQ
	 EKWOjEbDikyZd6FkA1TXTgMj+g1Tx3HI7jzCEE6m4bHp06yDFx75yGaOFfTQouGCoD
	 N/H5Ol5aTO5PJpZgsUjsI9hKt64/kffVyy7yqnaUCpkUNeIHLMEwEjAC0SLMsdK8N/
	 vQIfRzjbFwWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEAE6E811
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011783359.22303.636327347779181047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ba56abe3dba4f5b922d73f74e6b6a32da1705df4551eff094c95a3978a5647
Date: Tue, 03 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770117833
