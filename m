Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F26A41
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728704754; cv=none; b=mtXsxwfHwVzv/40GRVweylqUmbbBs6PbzcdpwBnDHtILQmaDS9AkMRDG23/FbfIQp6F57tUd9SfJtfB51ja+fgs8/uAWAKVF7MIwOBI1CTrMi7kjomWwlP9W4a75qgVQsTz4LgEzjaLBSYNrYKzv+Az/+E2UZLyfeB/UffsDTMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728704754; c=relaxed/simple;
	bh=K58wEBRB94hL2TnUSNk79+LaPRmm7TzHmY/6RdKr5qs=;
	h=To:Subject:From:Message-Id:Date; b=YNc/TQUU3TNP2V2flb+lkFymAERBzILTV1pwCh4OdxKRNS+OuXS4LDOo3PNISeRezTVzO18B8ytY2Qm/2fQyZ4tXuOtF5G1ai1g5f0UDVF82P02jj/XzCRN06wD6FDuAnQNxiwTX+YO82Dlp9JEI8vAe+MhY9d07zu/Emc8Cdnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddBInz/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddBInz/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFECC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728704753;
	bh=K58wEBRB94hL2TnUSNk79+LaPRmm7TzHmY/6RdKr5qs=;
	h=To:Subject:From:Date:From;
	b=ddBInz/y8LED9oLRLputnMELBHmdR55q0kCSX2orSpVZB+aW88vqI3YZ8+LtGaNXa
	 SAi7dkH5CtrFu1eMm9rr/Op/zBEyn04SdmJqqImAo3cZFDegxnWdZXhBQ6pIxA9Df2
	 UBTNGWhG6lkKymKwSnPir3VoZauNyT1IbVRfS2HB9S+3nhtExhe0SNg1FhOYH7VL/w
	 jssRhcrw93ltnU5ZXiKJs50YI5fja7LBMdl6rw5wX51K8DT52kFMTF3ZrNcFxis82T
	 OyzPdkdtu9QnHeI3HhewXF0J1Cn6GKDU89Xd/ND1PogNr+15HqkBSftU0VSnBVq//H
	 130xMtZ+GMIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F1D1A42F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870475359.7515.2379339986683178244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8bac45a5b40fb14dc5535889e2a47021950edcc03d562f2455af11d405a835
Date: Sat, 12 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728704753
