Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D95383
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743816594; cv=none; b=d2Hheci8sEvtMD9N9aA9GFOZwo9t2v7NYsCqTULdgfZsL34UfZo3LksCmjn3uJxKHDdQfCrj5ax/VC6fobqVsvgNyjX5Y1KZodwmC0LFujbb/0mUqNEgrsJTVMeDlOLN2ynRII/4xFWlGWfkOLmmBMd3qWmkfD8HjxKZW/7s2RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743816594; c=relaxed/simple;
	bh=4b9pnSx8Xd2gbroP18YFlwPg0dOS2xbUMxRyZ+VDzko=;
	h=To:Subject:From:Message-Id:Date; b=MTmI/homTwW79NQxocWfuCOlhdhOxymK5vpbuGGN8cyIWGcZ30G8DvducX5bOzAct1ouIJ9+7GgGKeWj6QrjXpo5Ld5jSUvCfqVd64yobH5LePQWyw0CFFQZwXA5plAuVKRsrRoRzdVcaTxZNFqnyhf5PirsGbRLWEI6/x+0jLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMA8e69E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMA8e69E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9FAC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743816593;
	bh=4b9pnSx8Xd2gbroP18YFlwPg0dOS2xbUMxRyZ+VDzko=;
	h=To:Subject:From:Date:From;
	b=mMA8e69Ewy/MC932wMFDSEklEqTd6kjyXwLeQZVHrOje50GQeQW6/qyKhgIWbq5el
	 L0IqIrtSScrrPKGM8gX8NBY0S5aC+HeehUYYyIwCfd91fkaIuotHTWsUxkPnd0cD+N
	 QOS8mQNYV9LQdykcYoucGGQLyUtbewOYJzOxlnKHRePNm0k2kIiRZld2Vaa2zmXQpg
	 ag3/N5kDYXcnXYHC2QAMxH/NXjVL6c1fDo397qFCjhLTmyEhUqEzO3neV0Ts2XFXYV
	 yd7i5nK2IF+FAaZepxqv2fsncwyUBSIgPqaUOkaXCUug0O/WSk17cvOOsIXg7OvDpO
	 vIc/KpmE1Yq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A4DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381659359.21918.7064400348888185516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b7c9741036a29275b2d48498258766fd12021396f76136bd8001c1803ca281
Date: Sat, 05 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743816593
