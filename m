Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086191607A4
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768875834; cv=none; b=NDV0+HkaRUSbcomoDVTAOUbdsZNzMRg5Xf1FUMadmB0o28SmMJYr/Al9LYbzOhRLPW1zqy8hZhCnjlsk+tCoOlEcrNQNOr87DXUIkwivL4zwsjKP1EGo/sHZhRf9BkYZv3aMk+3DvTwsEU02sLTaa3G/iXwvN/2czOEqwsBJJZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768875834; c=relaxed/simple;
	bh=tlkH1Y5XCAEDWGO5EsG7JArxbhJnEIJinHQE1cWnZ6s=;
	h=To:Subject:From:Message-Id:Date; b=f5BBbWtBYGGTEXn6WVuBuAlU3hFx4hc8fJ97pdXNo/wmVLOewstXEfJ1esZumrFc0zsypcRt/+xuwY19YDFffi9k3TY2urfzNltHrWSwvvHzPQxd26Z84sMRwwrpQnCQ0J+uwd8ne0g04S5Xsa7+IjhF3KhvsGbVKp4AR3C0KQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTHVEio8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTHVEio8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768875833;
	bh=tlkH1Y5XCAEDWGO5EsG7JArxbhJnEIJinHQE1cWnZ6s=;
	h=To:Subject:From:Date:From;
	b=OTHVEio8KvlE/16qzXjiHHuQA6SB2TEhYW6fSkXkS90GSAjGt6ROcITRwGpZPEdYs
	 HEm3l586/JS+6rvPlAcf38DR0dM4eEEL4LG3w6nDQ4Z8IskGGagcKMlXHhtnQPrxLz
	 p9nMy321LOxesTrowllsPnUN5zhM/IxELf6q4mDtXF4Qf85W3ZBDqIhzmyjKgnNSH/
	 c8gFBPG09O9S4CexloO5TC0jddLSlz8Ck/i0xSQ6mylJSBOZT+474W7mXnEEmuXtQv
	 PzfyOlfWKciS9v61ptv5vs68HPi1GmwF+6V+ttYQCsY14Ql+94YncMrJFmyoCxeGw0
	 wrXXF2gGsrO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887583357.26818.4813229601005636253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8657f78f7d16e1e438f025df371a0ef5776594111c3851a7d6c5cb36c72a7bed
Date: Tue, 20 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768875833
