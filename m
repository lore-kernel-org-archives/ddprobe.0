Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0ED23A9
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729565154; cv=none; b=El7S3qBq6MXr6EoL6Vh0TYWcOnd3CQjHWXhmK9siCvDXg5/7lRVPaPSLk+B1lWwZX7R8c5Ahb51DK3j2I0K8dQsih/ZxmY9DwAiMeKRUviayMorYlIBPkcFuO87h760qwiZlSKoudIRq/NH1fIyyWTgKj2dp6XWJCc63m67KEWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729565154; c=relaxed/simple;
	bh=AQYjogolQVRYsJb9zuBtoFE3R+ojHtJalhR3xjLlsfA=;
	h=To:Subject:From:Message-Id:Date; b=t4xNC8TheGBD03bMAeoQuHPGQsvogcyd22gcDzIJnxtI3FXg3khghdwbymIVTBeo5iDQWEXfwTlMzvTdseLIh2f6J/1qUmly0WPmCGLH7ukHxmyju3n0iD7uhmFl8s5jRn8xCE5CP/Xx0+ud4mOMk2MlohBbj8xXW0VUIhLZ6Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQZ+GpH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQZ+GpH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ADAC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729565153;
	bh=AQYjogolQVRYsJb9zuBtoFE3R+ojHtJalhR3xjLlsfA=;
	h=To:Subject:From:Date:From;
	b=AQZ+GpH4n9gIPwS09YAWclB1LX27GD8WtLd8DnbUvr2/20Ti0bIX7ergFAXnVEKo6
	 9dgjWkw7elAyjNgVloDlPAcJdo15x2uOU+tSE7DvPxNgxdw0uG1zcCfUsCd+mVPqaz
	 Vi95Jj6wiFml286ttODOjquCcUHwjbMkjn+7j/I3XB+3zwGg+UfuEu2N+/PNlRdWhe
	 s2+CXBkGMB2lnn6NT5mviHdzmKQW7ykaYrdNNqFxm3PbMjbjblLffMKVhesoDlg82E
	 EAfBTyxBGRhvW3+AiDHlxuA9YZudtP41NgplIrzx6pyXlbro7IA/k+mIR9TFnmULTS
	 BwljSfeeYk8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B051D1712C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956515362.26462.8084982741360640605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd59950546a3274686a96ed342da3a468024b6c115348b4df935bbcc3a7543b
Date: Tue, 22 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729565153
