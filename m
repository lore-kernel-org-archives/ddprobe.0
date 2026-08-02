Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B6E3921E0
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785705634; cv=none; b=MmO0iedAtVgsfKlMX4y0YJCmsA+Aqj5SM3CO6I1FBey9eTjRLO2ACqbrbH9/D/TAei9xMJQhrEJGlZIdzGrSgYnMJhOuCPKmgcdiuwBfQhGO6V0i7YSdUv1phFaxr5hPxvHPIAoYGmQXpF5vIVKNy1B0HsgY49vlyAokxj8G42Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785705634; c=relaxed/simple;
	bh=SgB6ivEr2CiGJXHqy6KOkaMwlrWDkQ+c3zmp8yuWVSM=;
	h=To:Subject:From:Message-Id:Date; b=grFc/8SfNHqtfq9JpAjCX27Hpc6OUDfOZAbWOFwNCUSIpQ3KKmeJrerqd8lLQ46mn4bdUxbNfZIbnUbx4YQaMJ9RXjN3h+i+UgJ68HIUD35ImPeHLGmjgNxnD7/YAAeRP1LnoCBTy58UlDG/GjhWnzlYyvj+JIN18mggprrpHOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGAe+Pt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGAe+Pt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C45C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785705633;
	bh=SgB6ivEr2CiGJXHqy6KOkaMwlrWDkQ+c3zmp8yuWVSM=;
	h=To:Subject:From:Date:From;
	b=sGAe+Pt+jc/FQ33FlX0aECMfoUK4AuAcFUkyMiDCZ8sWuJDB8iwj0jcjtPsrZmWQ8
	 ZBUrG2vjQdLkIHhotqRMAwubqjhvJ3xtpJ4oWS8D52XYi7GTmNeoIabNP/bqmgP9l2
	 mKdPREv8iush6giXcoxdApjF9h+FmL4SQqpn19N6Go6SdFbF6YODeJxehFa3VX3RiJ
	 Wm9GuSWx2z28BQpo+ah4x3mQkoLZ/FmGiatV+ZSx3XtRFYHXf231dOrdZUS7c1wZgj
	 VIHaXZz8R/nExfAzJkPYwniFTliYh3DA9HVZypXfi2LhZEKqV1vjnTKEqHRqgfWxuy
	 hBTGY1NLzpLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB758C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570563368.12350.7315872037425613950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6484695fd909beeab34fac93d1257479a440e42b069278f2c3760afed151e21
Date: Sun, 02 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785705633
