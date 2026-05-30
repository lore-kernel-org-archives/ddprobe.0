Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2E6231A21
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780100614; cv=none; b=QFjhNIZC+VsAoBvKY5LeltUbPZ4t8fWyuI/KLiZDfVg3T170a4yh2SiZlcdNseTjh3nbcEsTkhD3q9X585JbJZTidgnZlqPJSBNusL+iZcr/BXL1dM51DYmXdk3fjCUojYvptY95sNSrVWaJqJLTybb6gpcPmWkZBwhI3ErakUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780100614; c=relaxed/simple;
	bh=W4WmAZQjhwGQtbkx9Zs9XRu6GNsGFHietVVEikOlM0g=;
	h=To:Subject:From:Message-Id:Date; b=o2TEk7TzCImMakCqw4pehzojWWOFUdC0qCplenh3pzL9d5IbyjHol7cFD2JHvlbN2EnZ75NyxOCDRVNebstw0xlRvjsjTzx/Di59pcnRYp3UppNhth0RuzQ2gdc0dQMRK/LU2NhQI424agY5LhVTOp2LOLACg5ctuqLYWAEhd7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3FH2ogg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3FH2ogg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5174C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780100613;
	bh=W4WmAZQjhwGQtbkx9Zs9XRu6GNsGFHietVVEikOlM0g=;
	h=To:Subject:From:Date:From;
	b=o3FH2oggKLjGuyByYkgdJx4ywcqu2GtlKaYyYQyU/vxw9nbajufVrkZha6yTpge6v
	 x4PY5seEllnStgT3jyPodj/WF7CKFQzKimtWv/Ou9PamSkHeaOtXi0r2+mypMBVyfi
	 YfVcIeojjMkcUOSOrcodaGOUk66VLS1bXWztyn1YutrlrI9UixkGQj1mb00EINvefs
	 B7CMkASTFOvTgs2knrU9P7X2Gh/nr7awNZj2rWSGD7r2HlB76FxUoZWSkKlFVLh+h/
	 nkf7vrk31CzuT8FwMs6wqIujbHMnpJrw9mNzHCAzSVvfEqXi70WR9z7ayJQvGKHv9t
	 d9MIHa3W/Sb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA9CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010061370.31157.2074692681672940336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8f5f1ecd1d8535efecdbc68144026a5550dc81823d2032dedf09f2984519ec
Date: Sat, 30 May 2026 00:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780100613
