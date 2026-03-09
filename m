Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FF73CD8C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773066894; cv=none; b=tNP86I+5Kt3olDPNy2huTdraUw9yHHb3gB6f9bmet2HbPGl5rIjCi6apOZfms8djuUIPbGconIk2QzmT/lNQCyNHiORiyvTHDrq0K1t2l8BkHXxLuKK03HIHJ+W2d3L/qlPEZvZqIomOZ144cd2ZvLT0bNv43kNR53xhfEsdwH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773066894; c=relaxed/simple;
	bh=sb2gcVXe51uFhGtA94AyQuOhI01tD43v5tjPLyIgH2A=;
	h=To:Subject:From:Message-Id:Date; b=rOK00XikqrGnb7sI+rsdj20PY+mI1enZIAkCamUszb83LKFIH8NCHJtZM86kdAsdvBge06t0hGs6vM9vGTZ0BxblRa59nuxO/i/PQsYrwxhLK9mEpmjcD1gRuNcxk0p4EkbcbdRyOqMHIDyhoLDMj4dTQDAJd1jcbdvBmqIhWaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hx4Qnmi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hx4Qnmi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAEFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773066893;
	bh=sb2gcVXe51uFhGtA94AyQuOhI01tD43v5tjPLyIgH2A=;
	h=To:Subject:From:Date:From;
	b=hx4Qnmi9rdZWeZsCqsGkx5P4RKcAFa94o7k1SlFaOG+2sfJLIK2ZnyqeYmyNZweRh
	 7s/IWHM9TqgY/ccOs8BWsC1X0VCkytVYTk4IaE/ulobZA9ul1Uy8Ew6twhO4Fj6wf8
	 sI6GoYElRwoXbsCHbh9WzTfPeFA7Ly+CevHUG1nYhi5S78NNIdiprqqnR3yDhqXKM+
	 TsUWEZbfoP//kVsgzxpNF21CuM0YuYUKvQdRZL8eQQR0UViAkOgsFaT9978GzMrO6d
	 xHnkvWd1469tusjl9+8M7t/uY/sIDjrnk8vDQ5I2H7VlBicyCenivyhnh5E1hjB3AX
	 GSkzVaHWG6U2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB10F417E5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306689358.21697.10742372556164424161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66ea09c5b8a07435a841d0ea4ee8125a6d07a909b6a67fdd24ff7ae227c6ed1
Date: Mon, 09 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773066893
