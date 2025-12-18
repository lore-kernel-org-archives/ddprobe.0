Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077682E4258
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766050434; cv=none; b=RCPrqz0he8AlH+HEy5jIj5J+eL6QscdGHcQaAx0fxxRShfFfMx3SjguckUzS+rxcJH3of/rGMV3JwV6j07Kh+/S7movwGFyOoImTd9VcegH/JZfy1nkotsfzUHttYBDtmOk/DiRMboy1Zj8azWNWAjoruXUtjS6pfSkOTZZKy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766050434; c=relaxed/simple;
	bh=abml3zodAaeaGuc2mYrCLyyMMluObNZp26opefz+7/Y=;
	h=To:Subject:From:Message-Id:Date; b=FJf15iCiu/gUG4hzrMjiQbUcf/Ie48KPPPW0N9wlwBzwnMTj/nHcrccGh9QtFRcqEqHjLFIHsn8OI2AbMca3i1jDK7LPzVZvFdre44hor5wq7kqKbbxGTKC//SrdjhDp9uBGGoopidZdimyny9GUvSC4S9PM2uJDtl3o7bgqiRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZe9FLNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZe9FLNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3914C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766050433;
	bh=abml3zodAaeaGuc2mYrCLyyMMluObNZp26opefz+7/Y=;
	h=To:Subject:From:Date:From;
	b=FZe9FLNwfVEhlPYJvqJWjNEkbx+bCVZxKzfPwg49897aZSLKQqnztIfXG5CrOAC3O
	 b8QhhNI6jm+e9aa+fEhE/ghuMk/rbOqDxRzfnzH6ylhSHp90cWIAgPzQXrNRt83t1G
	 PsK6XJi17f4vhWLJYfPhIrOCNDFE06YS3yjYG5PtNRgd5xzuKl4VRS+74JUKgk/9r1
	 W+RznI6sYu7tckYQBSGyULC3VDBn8fIQyuHrkKzz0WNrs/BB0u+PdYWBd/0VcIrHe6
	 rF7sGprKm5wtrnET3dOReDNg+RK0hvdCeoyYlGyxjanKlIh0SMwRgtSvnoVYD1sD9w
	 Nh9JKelgMabOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA8D6ACD4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605043358.26760.749920056341671460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfd7f846f88c186809bd33d7b195a84ae1a85953e457d6e389a7eb5fc5575cb
Date: Thu, 18 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766050433
