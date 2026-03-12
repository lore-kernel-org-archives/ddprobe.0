Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3566F3932E9
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773293094; cv=none; b=Tq/lmcbYIptxei50kms+lyAfJbdUR8lOMAGLY16ZV6aLKQCLAOo91lZCjNLNkcUjI2OIF5g1mfb/O3Dm68zIiCuFsN2DujXlb+VcEMcgSIdJjufQOxh3SMY60THKy2TvWPp9XwEdXGsjAX5NSTKg7HGODZPBdOT30H7FAuRwou0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773293094; c=relaxed/simple;
	bh=6twhEs5oX/re/uvk0xrpi/Zn7I6Q+yJuYPD7aR3BZNU=;
	h=To:Subject:From:Message-Id:Date; b=KknOD5O5kzjHpWUHaa7tYu5iNchxqAQTKiNePAY7A8v6VdoByNYDLQZ/XUOaXOPfvn2useYfrj/cbsvKRqX094FE16LIK6wnKsQo3SLGTfmyWftOkOVb8QU+EHJdz/TmX5Ey7C3tjvXXZnSzRpz0nrxGQI+orGnB9GVqkALZPlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH44CB+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH44CB+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B63C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773293093;
	bh=6twhEs5oX/re/uvk0xrpi/Zn7I6Q+yJuYPD7aR3BZNU=;
	h=To:Subject:From:Date:From;
	b=eH44CB+paVso8Kci9WWrX1TYpoDojby5IY5sLNsBDwmnVx1Ki7jR+mXRvkSAJNzel
	 p4uyYOnHSecJBu99y1BfSWRKWA+SZkqw838ogUo2LkGOqdNNmsMohcAeowRNPqUfJt
	 WGhWD/chrFfYyH9SGT1o8Jw3+1VK5I0n25UD5TYsoDmGsc0FDs9I0/PM0W9k97zKQv
	 EXSpEKRIKv+HHYlHFp/zhvacvS9PPvwcHQVGdf1e5pBLWxv+KXM6aVYaTGs7ngMxxQ
	 vAq3w+wnf1OeQ5QMauMHm2lf9ISXkwex2jr0CgoBJ9QiwsLc1n++8cYNfJc8RuiFux
	 iPuN3uDqQx38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95105FED2CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329309357.23336.11272998752108068122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b0eb2973390f6162a0f1f553136d41d40d76d90f0aa36d02e8b3c4c0344797
Date: Thu, 12 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773293093
