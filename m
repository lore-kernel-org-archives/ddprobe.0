Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691C21E087
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765853574; cv=none; b=d/NdhYFVYykLmd6OAa/f3xlwJbLFFzo0zeh40VOlO1tIKPRCsrsizFLm5yGa33bJm5vXBk2QXEePD8y7tOiFUjJwHKtGHZ0GD5w/XWXX7jyVSzZ8si1iRFJSkahy6YosYP249erCigGnn7Ryy/6llbu+LL2lAZ7XFab278efuRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765853574; c=relaxed/simple;
	bh=oD2RIALe+S0LJKaXtUKqMP8SEhLGH32R3wBFgadfV+M=;
	h=To:Subject:From:Message-Id:Date; b=apoKmpOvi7lQYhEGsTT5ZicjUwGc67n6Q297qYoPMRS0I1iDCul+t0dLndGUM7u2VL3kPZEU9E5oasmzTAP31ez5+EncK+X0Xo/HR2by20mijWqDODBuXh+QMSJNpHMmhEDhjVeCh9wL93xYLNoIAWsXR9XS5Nm6D9GZ7iyfJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyeIx4sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyeIx4sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB925C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765853573;
	bh=oD2RIALe+S0LJKaXtUKqMP8SEhLGH32R3wBFgadfV+M=;
	h=To:Subject:From:Date:From;
	b=dyeIx4sMgkvHrKoXB7Q8xIpCzrXkQzuumJHLTd8s/VSeMkvCivkRp/EysI2iOKNwb
	 KjClXcc7c1Dr4mPxj5IFxoqD7WkgxP9eTRWZUFsNnp7qRYPap0xi2+sDrrHg6YEv/w
	 7rf4E/UwohWz9rfse5DWCu53FrbtCwghO1ZWT9NrelDBn7auV+NAgC21fbAX2VZ63c
	 rRq2LsX5LSYiv/lbIRMaT7ASDZbI5E+Q3LW/4AlfTyCgILXyuzOxnAeDH6OR0Jck5T
	 ZlIQXqVGh5K3mLO8PW8b8n/JTdQTE16DM0teRJEklw04f0Di2SZYnI7/cwvekPePCV
	 VJ5kYuKnuzIlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98288D5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585357360.27968.17079572846754202610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3588352c8d15741c53ec71a3de30cd502a9615ecf3d735e4cfcb98de83d2bda2
Date: Tue, 16 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765853573
