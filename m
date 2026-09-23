Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2CC37F309
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790130634; cv=none; b=diO+ZceCCPsgrd8s2djwnOwkpUF0VoksRWbg/3Vz+U1V1CXlUiSb/xRtnxQi7uCKzwRGFK3JAu16x25IEU/X3WCadwcRoADgJeCPnQyTKcke0JCp5MNwthJ8XZgTzpKNVaLwJV4OHZcnn5MuPHNxmQw1rDNuhGmTAxVNl+ep4H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790130634; c=relaxed/simple;
	bh=LK0sTUOaK7dwhTSWGQIulcNrSTbly4xYijboIMPZ5Oo=;
	h=To:Subject:From:Message-Id:Date; b=Xu+GV1fgH9ejV7Z32MbEhLVoKkiXCtKOUa/pzjAi9mOlJsIDxxipYbCPmyX+5Z9KqVl7KvETlqnVLowsRUtU14nSjRoCXGWUosnSxIjtVeRFiv8byVISdli9vz9PGcaH5K29xwj+TrEuYw1opbOQvY++Zh/zEWTjlDFI+ljg8wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE6PIUpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE6PIUpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23EBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790130633;
	bh=LK0sTUOaK7dwhTSWGQIulcNrSTbly4xYijboIMPZ5Oo=;
	h=To:Subject:From:Date:From;
	b=tE6PIUpQwgcMZn7GPOEyt7HCSp3YcV7W6KHa/dcv5Hx0/E9igK/seYL5OIx3BK73V
	 B5jftt9Ci4SrdlZmIi2e8fuBmw1ASdhZ/Nbf/MTNbroQ2Aew//gd2ubAD+CHwwrLHK
	 l+xqysAk3aWr0t2MO4Kqz/weVDCmZq5uDc8VOYn+Eia4n9DvVQxIBwiPkR5lg05GG1
	 2OIk+PHtkVxJfx2ZDYZEJjIYof0KEXyd/VGMutD2EndWAOrQVbhTJBTJxAtRP8nfRB
	 QC1VvTIkZaQczrazyPl2oSPfs9X4KMq9iw16oT6o0MjQpO3006z0nlWFs5CF1atGnG
	 lCd7Krc+8tSWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B3C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013063370.15169.5102436473169585607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ff8eb8bb9bf44f428fefbd290a6df5801314ccf3635c2caf677c644153cdfc
Date: Wed, 23 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790130633
