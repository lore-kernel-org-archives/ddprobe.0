Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C04E353A6B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786007434; cv=none; b=DBd9guoPSYw9oCEel0/+mXyAGjKQmJ67zDHIIwMxGjArTcFsejeX6OqCMHZi9e1jRX6irbWYG+v4g6UGx2ZdNQ2mhuYfuWQ/nV+rkpYSQmbLf9DOe1GlP5WjgCAjRi7XbWxcdHq9ZM366HgAvosHBlfjo3106HAF/nhm10dst6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786007434; c=relaxed/simple;
	bh=/2dP4MRfwj2B3vMwsROzQvj3BW1BH0Kvf+PofUWB9cE=;
	h=To:Subject:From:Message-Id:Date; b=qF3ciMR6sY2gmHADuo5HcI76KhdekS6rRAtEYfDKHQw64czdrx7XRkoRasfRD5OSmA7d38ldBzKXGyAxeZzUkXHRcT92HU8pi3g5ZjMIkNsEKp3qesVLns6SV1jiDWlg2GWR4xFWPFpcWg7gB3phJyh3FFugJYfUOXVSwNwsdlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bje3v4lP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bje3v4lP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F82C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786007433;
	bh=/2dP4MRfwj2B3vMwsROzQvj3BW1BH0Kvf+PofUWB9cE=;
	h=To:Subject:From:Date:From;
	b=bje3v4lP0bXd79pu0idaBNMFGoXg+bZy1lkZIWPh7WX0ZAmZbdLwD1ftv8UT0H/7n
	 MAUooNkYw+0tsC4EXeBmXmeNt9Qn5XpA7IhJAahRnLnB0wmAZV7AJ8CkYaUB0qi6nY
	 1ANfiXr/i3KVQBll5z7sQbLvc0Noc+vF1dYqSos1hx8ouBqcbcxwsqihbVtL7e8Ko8
	 a114blTXaNByE8FX/89Y7Ya21AQroxm95ZrESU2QuCVJDeS9Vl9p3b671Q9sPlLyhr
	 K8NaWcu1iAM4xWiuD4Of3RPlV34ynMelCDj75CWmJuOFw36GGSktCEUdNIr7waEQ/W
	 v+cINl340woaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF2EC561E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600743369.12491.14040514920801803691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdc6f3407ddbd6b539335d862502a732d5847d6164da6a5cb6d41726797731a
Date: Thu, 06 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786007433
