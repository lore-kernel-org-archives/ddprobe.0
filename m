Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246E804
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707466697; cv=none; b=PQb+REfmzCuY+NlnHHehRrJBz6THaew5IGPu9DV6vAzbcDWifQVDGqK5MCuQ1Wa0ieKweJn3j4iA283E5QTcAzlUQ4o2O+KE875IXBxhCLMVWqC4pzRoay+Y71sCn+LK+ljHr00mz1xsrgewxWcCA4V7TBgV+VH5FgWfdCnurqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707466697; c=relaxed/simple;
	bh=B56dgo5Gm2GIhcBQtizMxoV2+6/1zRQ/X0yK2GaxyOY=;
	h=To:Subject:From:Message-Id:Date; b=VaPcFOysfIhuSBVBSjgWlCC7enHHqxS0uj8F7NarypO6UY56W8mTHzYbLZf3UhhGW1mZsQpt00mClSFSRGYViWT4LoTJPzh4ZOfhdIOW6aHkhFDBv+lfd3FbPRdAEO1ukQOziAy3iaK9YuRMPuOIducb3DFaX0Z0BXM3YsAVA/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGzM8oMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGzM8oMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A06C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707466696;
	bh=B56dgo5Gm2GIhcBQtizMxoV2+6/1zRQ/X0yK2GaxyOY=;
	h=To:Subject:From:Date:From;
	b=MGzM8oMUuFTQdPMWTJrubOGXiRG0ASLyw5/QsOdJ+UTLWrS9ar2v6t3Sjgp2WuaaI
	 GjB4INJlKp01wNbHL6MngGDP9vxXw4r7BkAEqtcISouFRFSklM9LOEcEV8NoU88IpW
	 tQQOi9Nf3p6mAO/UrtkQ2wd5BrVALGpFOPICZT6ak0H2kyna994I6owItm0sTG52vz
	 b4h/DJ40l1o2h+hxs8x4yjs6FSuS4EmW40Xx/8GtGRlTVKFcFlxVi+3ESp0obFo3bc
	 76Sdnuhh2y3y7Rf2T5ocjml5bbAPktgtWs87w7/iEve2pPHieg3TkyU8eqjGf45n2Q
	 phwqWO7FJ6Gsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83745C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746669649.22010.3176949197303179227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e379819bdd128dfcae9f5950a19f24d9e41e6fcabb6a74b42a46feeb1fbc50
Date: Fri, 09 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707466696
