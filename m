Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FDF37E2E4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781367994; cv=none; b=efMVtIalKW92xX+XKo64ELESNPcNUhBsbd8MkIqTQQRIiK8/9sb0uIA+dm4VYrYYIK5TqX+gdi+bwpA9AIvTnQpbBE/icW8ICXAmksly+3Jae6Dk62km8C+65eRcvOFF31X7p/Oe1I3RDRrlfWryXqiGMz8zi9b1Xxn/yvdAz0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781367994; c=relaxed/simple;
	bh=DA/E1QZys3qmpWpZaEdoG0JzKcBpSgcIjm4/YtePWGI=;
	h=To:Subject:From:Message-Id:Date; b=OnrNLC0ekInireH62ThMFtq763zaJJsw0vmPBD0rec3azvmTYOVmJuvMks42rfRW91CQYQDjJPQzznRMEHhF5/KscsfoQcWqTh9cGG00BcMo0/qHpnczoF7/cTKZfZJPF5RZeSuOk9Svz/uwjddIqmnS0TkE2kcCJ/G6fHUIXRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhRzwyF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhRzwyF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81F4C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781367993;
	bh=DA/E1QZys3qmpWpZaEdoG0JzKcBpSgcIjm4/YtePWGI=;
	h=To:Subject:From:Date:From;
	b=AhRzwyF9nlqxcVeVaNt33Si0tKX2oMX055J7EMUNorzbLDwcNjh90CJzSddztJAYm
	 6y/9nQVRQgV4rUe5MK9jdgPBy4IZ+dLpTg84y0ZrV8CcuoCuvPOnqoP2AmGgA75WcV
	 XZaZ5Pe3JjXJkLvooyMKLBiY2+QarBzr6asiEZgl1VAuK7HbjeC93R/B+AAEAbnsfd
	 fqe8whUADFDbciBLp/cJY1+4y26yOBA+/NU+9CwcpIECzrhc1jfzXj8cPpCWxJCemM
	 yqIX/oQtJYf+6OmvDkY15nTbKy57DeHO0POnY26qFXNgnbBxeag55Hpi3yxbGe8kGJ
	 qI9xJQYfET7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF794CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136799368.18062.14296564246725986277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e610f9fc504fd375fe72948ce2342a3ba9ab4010405e7484f2ac8d85700ca09
Date: Sat, 13 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781367993
