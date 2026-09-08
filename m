Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C20752122B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788872436; cv=none; b=ELedfMsl99SdHKC5XB3zRlcd7Mb7/E/JuNNzvVJ7//fF/Aq+BHXhHYuDjt1B9ckgOmCdmr07GYeLTDFcyINZ151q4ZLd1zNb+ATD84dQ+qsJOWuD302tzVAl3tOKQWiQzbR3OeYkSyxIMDkSN8FdRLgXQ0hSgl0pn/wbSqZvlNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788872436; c=relaxed/simple;
	bh=LM1kjQwoBwhSieg4xq8/QyZeBFpQU/xU4AvzrgT0vnc=;
	h=To:Subject:From:Message-Id:Date; b=EfU6qf1f9tERTLy62SxgRFRy1RuKxd6vG90fe3tXV085m6oHu4RU9qtfYEiY32QKHVEplUasw2CHYKE5pebrIm51uxMzJBnnk0HLG+CB28a6K7JxlSoNR/t9nHtNiUjzWKCpQv5PnqtR7dbv7H2HNE6IUF3eHI3YGf2N8c2D9k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up7IsljT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up7IsljT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F1AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788872433;
	bh=LM1kjQwoBwhSieg4xq8/QyZeBFpQU/xU4AvzrgT0vnc=;
	h=To:Subject:From:Date:From;
	b=up7IsljTfegdngYbXElUnryFhswJ3nWScX9XY2VPI10GCJo6Oqjn9sDPbHHvirUvO
	 6RP/5q1Y+qgWMAWfUQTWlUbGJr4urbp5PD4PFWnHhjoCzX6yI2IOxa92HwHF586iEg
	 1CODkQaQqv1yxL3i6y6iyzvdKJ069McsXFhB2Asdn6rIER4V89RRaoMaHhXo26/Ay8
	 u1kmGnbI6cuvCCZ3I2YthVXLYfGnRU+VPIiD9ozNaZzBwhHWhln/r9iRrtEi4wny3x
	 vcWhxQopRmW+5g7roaFvvoLKcQ69U3dhMlnI0tTe0I+7kUT2gXsBKRxpeRkUg+/PZj
	 X/1DxdK0IMRhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A0AC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887243374.5255.3165173702102724053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2778150c39e9ba69ca6e8e1f24776cb2eb766becb160029fef4bd7e7cd5bdd59
Date: Tue, 08 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788872433
