Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412573DC856
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403074; cv=none; b=o5aX06HKNOygwc7GK5yBYeeSYZ5erb6naDpZhba2S9lbNOkBCiM3xG5q7vTAjzcMDH5wmjvJo4W4wNbfVzhlRz+G9eVIpG1YjDa5k/afQpCHh/r3U+YlRvDWCnrzAKccLR3+TlBnpMnaTYAyOyFhiIIj3KDDeSB7GZrHPYEDuTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403074; c=relaxed/simple;
	bh=TnRJQfQz3jMyeNwQwvC3DAcSnEln6foOOOgyJTTVeuA=;
	h=To:Subject:From:Message-Id:Date; b=LVRyMLblg7vjhhdTG8zCU5WWrG2Vhaom/Af18jP4wCFK+5+VTmzCbSEsWQZOEZ2Ex16Woo6GL1tDKTtoq6AUrY1FU0aFLjl2IdgSq9h4yT7OwLhdhHZ1546YcqfobuebYql3xA2uCUM3fWfhi98Si+K0qZb4B//w9k3gdgHUlL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ettCT8c6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ettCT8c6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C341EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780403073;
	bh=TnRJQfQz3jMyeNwQwvC3DAcSnEln6foOOOgyJTTVeuA=;
	h=To:Subject:From:Date:From;
	b=ettCT8c6w6r4qz6WT0fZV7u4hl09T6qlKFl+G8cyRn71atoVxSDi2PeLK2mjJviiB
	 bTDqjTDanWpfwaWtoZEKTXGdl1F1qwad+fUZVrnSH7m2moCMhmdY5vL3l2M7ZsEHWH
	 04eM5UHqQK79+ScegBA9o/iCFng4arppaaLIVqZbWpOiwd3PU3KIjBjNyUssm4EMHl
	 +SRBKMt0hEwGXv91+txw0U9t+gZdXv93vYQCydmJmK0qHEQJAc4Vp2C1nITWcRj0AC
	 74mTpJfMD3xyeM/eFRYUOj5obmNGe1/bmn8imBjUQ9SMHExZlbazyZFFKEUEk+Vj/U
	 ZVNtSyXmsfb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DEFCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040307368.20309.11931276814319412080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d905e6228cef6197411285379b7e029666e51e74c26a88a146dbfaeba6ed3ec
Date: Tue, 02 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780403073
