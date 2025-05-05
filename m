Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF65B18FDD2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746460793; cv=none; b=W6V0tNpqkKYUZO/P+rXKilwgrAf6deX8W1D6q0SSXzOIUPL4EI4u7FZ+ZCQ7tHQ62E3O37sP6x0Vn7NNQY4WagEB8DlLvYvY3Aay8EiMDAgjnjSf44ygjFT6e9itGsxOADThN7xErXt44rFGzTX8CiNCG5qwhXc6z5NKnJm7Sho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746460793; c=relaxed/simple;
	bh=YTYuxj62xauCBavLMWFi3aZHDRlwuiVuNoIjs7IHm/Q=;
	h=To:Subject:From:Message-Id:Date; b=prMDkThlkhgrosXKX3Bwin+lUlLA2ZMZhE+tFhZAH8UqQippDLKDIAlayIuAh2rjgjIVHqrd9UQ/C3RHPcBT7OxKTZ7GovC+L7SiwneInW88G9a3gq0fxJEEppMpQ0kicNj9mUdjp96EYQPuC2OtrMi658NYVSGA9/t0W8oTqlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnofEYsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnofEYsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC0EC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746460793;
	bh=YTYuxj62xauCBavLMWFi3aZHDRlwuiVuNoIjs7IHm/Q=;
	h=To:Subject:From:Date:From;
	b=UnofEYsSS9wMy/ob/lYzPM0I7v4iTgaBdQxrcKtb79VMqI9wJci+GFi4oU4sLGAQo
	 KGEhzDiJF0U8wBHzRHOAoc9Shm+aF9k41ejXRQrPB43qRPztpEsCpkWTITp1lWJ4Yw
	 ovVxc6d/BI4gYJgLgynTpT98h11mA+3xAUrrQ3hyNLsyK2KJ71TBxR2hunsZpzlz9e
	 CdaFGQ0YdfI2eDkh1rHvfLuEz3HZcuGeWn6nhMHrhhY211vTtQ2IJGbt/7xfPAndPS
	 b8g9G1WbHax+e6vNzO5trC4zXahWj3HOcAHkbXF3eSQ85Xg64RrvkU6ptLaQ1ZL9W1
	 85nbUfzjJSdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E028C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646079357.31704.17633652027782096137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f12af5ca6940385134cf4400e03c0b44a3c58e4962ed2f3000854699aa3a39
Date: Mon, 05 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746460793
