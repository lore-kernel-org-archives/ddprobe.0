Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9282620DE
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772421294; cv=none; b=VBYYjBCt/uWueWta1QRyWinVADSmRrWNJnVp9CwQgj2i4CH5zsnwj2VxQlg87onGwGnVLX/iBCXCKaBn7MM8XABtKEdnsRC1O/tFfx+jOgo3eKgkDvbot/rabNxclyyscuVUfudiT5zzptz+8BAXlO+DTVL5JYKhkx9JDS7j7pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772421294; c=relaxed/simple;
	bh=gtxEirQtKD1D+Q4jANbLMCtqzb+8z4RsyZVrXILRFNo=;
	h=To:Subject:From:Message-Id:Date; b=paCP21P2KJWY1sP+7b07eucE03EzkO/lNMnnkO7oyfVPEsA8YRNszOFk3vawWPSL3x3wSh75Xz/joSAdxRw7IzgJTEfieK2+lRIn0HaF+ZY+AsBpKH5v13F2qJeT2TITR9aquHzIc3imFbsMqoq5dFbZfAaG4M2qANWL6DaU88A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzJUa9Ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzJUa9Ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4847C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772421293;
	bh=gtxEirQtKD1D+Q4jANbLMCtqzb+8z4RsyZVrXILRFNo=;
	h=To:Subject:From:Date:From;
	b=GzJUa9Nsh5EF+j+GA3XIy2w7RoRwQ5mHyGx2yYoioswYf/3H6testt1XaGTuGSuSI
	 1Z2285fgVOxwo/EejdFbrSxuHfCubYQ34h/Nee2n6V0AAcJC6vpwiWFEqm8LNkF4eK
	 /ETNnhxa4Te5W3VwZuvQFBXqsSyAb+YZ1bx+GVArKTiAiIXM6OiuLmFqovJ/tTUKKQ
	 wEsV+FwhZYV+GFDNhfRWVBFVuCn13meefxZK8BE0S+SNwDIBGyYBKj5MsSgwXaPeaC
	 IaaBdJDolZfxsRxNBkafIOWnbR+YugKiS4bMxSabro2JOLvNROVce5qE9BIjlplmXc
	 /9uwpTrSVLWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35F6D58E49
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242129364.15022.11537035721483707550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4876677954915154a9669de719ebf625081b35e550955360a649f550dae0a5
Date: Mon, 02 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772421293
