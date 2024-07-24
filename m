Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8A56F068
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721856354; cv=none; b=KT+wt4AhNQFPkeqnktfF5/qAvUdca1BA0wWOclJFxgF45v1+iYdCbk3qErrIl4Lh6SyROZktlqz7GD48hW6VAG85YsSEBvulZUwaXNe5/Lp1JFXUenymaLba+CMUyeQzmyfEpTm3S7jszPX/cnqREB30mDgH6C4+Ms/xswI+iWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721856354; c=relaxed/simple;
	bh=8EB7R8kxwyI+rXq3yFtEcYWjMtYMbluPwbxAYXfZO5U=;
	h=To:Subject:From:Message-Id:Date; b=EwpTHr8y2qn1wkbqso/RN7ssdGZ/Mw6aytoArYBxgjULwyAt6IODuVdcmGdE08oD8Hh98Y6QLoGtmp2wvKPgmoL1pXU0rMfET3MiFZW0Ih8h0TbbYDTRK+H25oQ7iXeZhYcaT3y60jniuBTdmyoAhZ3SRywM5nAWLo6nKkUWnJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bB5BQOxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bB5BQOxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10CEC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721856353;
	bh=8EB7R8kxwyI+rXq3yFtEcYWjMtYMbluPwbxAYXfZO5U=;
	h=To:Subject:From:Date:From;
	b=bB5BQOxA1h798BgVM9F5egd3Nx5xVx2I/WqUFqTSRT5gqKBhOAjVznUDjtSJDuwWM
	 BTgGPT8sXimiA0scG2SMsUOM5k4qHTgBVyJnAmM2r3NZSaQ8KhbsAiaRVL2XYi4DK2
	 P7VM1S7Q5BaMzVIGwf96y5y7L3AxbbTWDTzwDXpUgyI87dNCCgeOVf6uq2diMbCp96
	 2GDuPwvtXorCvdaZoi4Ch/DtIiSVbNlort7kXuRtPRwOwaC025rHCsvAR2ZlY8erwd
	 MlPf29J0zvv8jbOk8Vk/WP6eLEVPvzwyvSzjrckbXwk7gDn/8I1jcYJZhKQj7lvLx2
	 nHxcerbaY8sQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFE9C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185635360.20555.4348609820765072526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e901cb2c6a52961b9bd36c48f435d30e793c70cf77d31188a8875c898e3a3f
Date: Wed, 24 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721856353
