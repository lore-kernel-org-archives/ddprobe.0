Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C65D2EAE0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729931154; cv=none; b=ehr40b34Fga9wplO6HJAf7mbrIurfNrnXtQLtcxPqxghTvQCkOn9Rd+KsAf1jJUwqitXPnH3N3fJxKbmXDbt06Lf/z4H5VSA2dQpAAjYSZWGd6blQ52IphDkKO1gHciti8PMNr59FVlKjxRDa6WM39k3Akk9YO2gxrM35FpZ9vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729931154; c=relaxed/simple;
	bh=cwzNAp0W/d+w07MMZr7cmQcDOJ58kt22gTOOFLFGNe0=;
	h=To:Subject:From:Message-Id:Date; b=uKSg9v8obsYuA/eQJVq1/qukEHovKL/nPgmx3ApJsz/y2mWi4rv3ZZEIJ/NDZ39cXGXglxTrkykaasms4UV8K2hab+ipC5hX8mgRyaOmozm8xypwjgfZ9qEprnt2wHn001Hk2NCfZJDnESPU+PAc0r27YIh85P5GDsDNeghai6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=updS9y4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="updS9y4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7C4C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729931153;
	bh=cwzNAp0W/d+w07MMZr7cmQcDOJ58kt22gTOOFLFGNe0=;
	h=To:Subject:From:Date:From;
	b=updS9y4eEaytwiJJ0UoSy7zsg8ELdjzkj27czA3bRJz4WkSswW287G2+wiy8wtAvC
	 JmoPr3tpegwlAOB/7UE2pCi7RLaPhU85CogWXUZ7+3JaZ8+WfNYBWQe7UxpLC0vGXu
	 N3GoAKHrxmuwvWDDsvK6whh8jo9vlrj03QtdVDe1LZSkuko00yGHsy0P4X/qFBzne0
	 CHImP/gS8zxXJHcHuz8zyDz+hdWe/kX9Rrd7/QymV31GxigCfeASNw3sAzR85O/7bQ
	 o5dw+vXUmo/EFnIhrw/NT5IiC1wegI/OIT07X+eRRa5ZiUrOmg66rFH04d6818ahMf
	 dJpEMyLW2Izag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986DDD10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993115361.4598.9016924134999981424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9676da7f5bff23928df32edb1c7fcfd88d61db23bead13c63298641243c3361
Date: Sat, 26 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729931153
