Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFB18F6C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736097954; cv=none; b=RiMstbdDMs/RV/zst8tIxz7kf/Khwjn+cE0I/nQ5frfcI42O6F2W/NlmTnnKkgpn15Hh0ISl62tthbF+ZjgsmB2m2ZnH+yCDW+jBFUeX89MLC35Qhuh8EJ2yjhD1S3B8nc71GSowQrQeBBNyWmrEn3yURBbwdA8xb97yj9E7OQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736097954; c=relaxed/simple;
	bh=89s5tmY2Ms749wVwWYKCHc8bTrp9LtuIgqO7Sn9wFN4=;
	h=To:Subject:From:Message-Id:Date; b=XXXkB+fqP6dgCwgz7g5uR2DE2Xwkg/wWktk62oFljFBIabYbZK2EQLfjLgzwXC/M1+BcRHNgN8gWgxi0JEh4mkS9sB0IwsrdWoXBkTxi3kqaPIBd41MUq5IxB+KAXamcYTdNpr7hvD0GlLvAVjIrliIgAExPTbsyJPxupodKCzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUGd0tIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUGd0tIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF5C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736097953;
	bh=89s5tmY2Ms749wVwWYKCHc8bTrp9LtuIgqO7Sn9wFN4=;
	h=To:Subject:From:Date:From;
	b=KUGd0tItxlJl1sP6fzNERybGn+bVo9CltnC4PQ6qt6vhB9IsIK4leYDAo7l4SqXhr
	 TNRM3ZuZ68x+Jmaov1UfU/uIi9yyYDNrr86D/oijqNgxIoYKiaxp8sJz97qkovusNH
	 BU+uZZmgDaAY8aA3cRLwGBYlw6sIzkbejhxwK4PR8XjbnI5Fq5wLqzXwi0lVnPh/86
	 ZTi/Q7fa7D5kR0f8rUcEmGb+zaNznZxHplhn/6dGh8T0GhXOTbqQIAgj5XAeFQxkLR
	 ilYjC0vmfpcbfzXnkfD2CFW0YlW40oG/OxCNAj17ruDlWG/J/D3gA8eb06vWhuvULX
	 P3N+R65qTc+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C8E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609795358.12064.5122196966571604478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9bf5588e941d8870f04f49fa1ac21c9f9df10d7dfaf448409fb4eeae992e8e
Date: Sun, 05 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736097953
