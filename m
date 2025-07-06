Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C42E371A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751791194; cv=none; b=m/M7y4Ux5CiwwYfrzQODm2OJqK4Uu9qQJgAQakQ3ZtBPOpHICc+BzsvWAGJsH9hRaahOA3Fp7ukZHrv5/LbYgtUJuRq5Kj8OJrFI3zXWaI4UqTuSye0ZeLCRZYNNtOCzMx9f0R+Gz8HOCNal4DiGWTj3TnsRg/DW3Dg/I9QC3Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751791194; c=relaxed/simple;
	bh=MAqEvmyhK6jjrYSi1KWKb5HGvG6J5+JIv0R9SAAb3Xg=;
	h=To:Subject:From:Message-Id:Date; b=dwOVzvSPR1BOrjuRqX5ER50ryAgWrilQArXtVvr+D6pBQ2hGNH/qT60uxmmPK0xPMe/eV637ku5L7MzmtKXeVXhOVQFmhNbuPCooOcgbZffStQe+5Oomo8+MiHKS4hGGFqmwFgQ60CrxzHL3AfxE1RATsdIR+rzv6UI21fF/FDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4Vexy32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4Vexy32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2DCC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751791193;
	bh=MAqEvmyhK6jjrYSi1KWKb5HGvG6J5+JIv0R9SAAb3Xg=;
	h=To:Subject:From:Date:From;
	b=l4Vexy32GI3OAcZHQA4hg2CpnpDm4Me9sCLrNcvB4CV5/2yqzHj+uFPApo1rpzWb2
	 g0ggmKEa2BfJL7xpIiQuVKDm/whIh5pjKbQC5Se5istYYGtqyEk8IerjyUvMWPk3lh
	 FdM9S/1IA6C446RNa3U1ekzDheFYKENR5hxVRJ5ubH5r1sVyyWp840FENATLcqhwSr
	 Boud0Mh1EqMRp+W9j3EN8envCE5MQeaptgGI3fBC+f16T87rOOK2fCdP1jTkCPhxkC
	 xQMLJSsRpqqt4tt+FQ1Ut/RErPfR4Psx7I0rEutSi/laM9wxdKKCtygt2Iy02ndPi+
	 p2VeSc0zStMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D7C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179119357.21497.9605992249338402880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d09cf861b56f3026a7d566842af45f6ec9f5f824c11dc0824b1a506207d777
Date: Sun, 06 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751791193
