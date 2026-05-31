Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB8D29ACDD
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780249474; cv=none; b=gufkfacU6Vgpeq7uqHtaNWPPTAYos3p+puml5kih5MZcGxzUVya2BI4oVYmZhDCwpRjGcDK5ScHddHpSf9lqdAYvx3d9/e6PeeGeQ51BZ2+v5f1mfidDBAHQuhUYm/KI1wXHDOr29g2ONdJQqKXCY/VH+qM+icJSh/UEakf34oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780249474; c=relaxed/simple;
	bh=mvc3VT25sxquG//pAUBxABAhk0ZLJYiy3Ap/f8kxmgk=;
	h=To:Subject:From:Message-Id:Date; b=p+1Ov6Bf5mqgQe6lIr3/fEJO+KOHEhqoOHZv1jw+OKfQc860iifbXMNhTNMhbq5pwPSM+nm8whC2QeOrr7V1r6ukFb1gSp6gQI0b8yC8cCV6exwacUvvXB0PmJtaucDi8UsZf7ps+q8B0EDdz/54n2DmL1TM7TkT+umumIVkF2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVn63aOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVn63aOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9D4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780249473;
	bh=mvc3VT25sxquG//pAUBxABAhk0ZLJYiy3Ap/f8kxmgk=;
	h=To:Subject:From:Date:From;
	b=VVn63aOGDmWLtLXhbiHGNkNDuI8iBd2R6xYTRUfviEsT26/jOeqy6q5XEk5mQnxXE
	 iuhPyrKPNWSUhH8shYCjh7Pu9R14bUi6jl5sYJRprHhbbBA1RrGuDaxQEG2SxJK4LW
	 EHnSjig+u0hlq1iZwWiuvnqvdcBdSdaCQPrQocYqMCiyZo4wfWW2DHfOgpJVtSmYKP
	 +D8UfgP84w6AnP6gB2RiZVInc65idm5pIWY9knrAIXihg8YygutRfKmrg1JDe/ZQ03
	 37ZWOVNft+cG8o3ZA7EnKSowduqzqu+2fSp8KqEoCV0blrxsS5NHYkPU36nUS+4E4e
	 U3R6WOest7uqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD21BCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024947368.26957.16934171029995393627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a985d16f95d6de481561c9baab96830f2385a8c0575445080ef31d1c5e32dc3
Date: Sun, 31 May 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780249473
