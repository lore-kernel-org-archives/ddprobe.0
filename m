Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6F8762E8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717407923; cv=none; b=iay+5p22mX4uNDlSw4ICS0hlMMbo7Ojc4TKyiwP78Cxlbss0wEAZuAzZhmr6LV7+i4IqqaDRxfzUjJq+ryevj2cHSDmbbzdm/88QS4M/TxedniuzR0bTBJwsCw2x8i+CjzNvWtjVzE4lksc0NA0CD4U0jqoAO1Pye7qvQpoMZHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717407923; c=relaxed/simple;
	bh=kQx16MHEm3O1+dINfVJ9FOn2vs2vWzOO2ZoYECN4RJ0=;
	h=To:Subject:From:Message-Id:Date; b=OhZniqIRAyrGdFHBMczBMazymHWLrq18M1IaEiqO1AaUyhvMrfhZ0hv7MPnaL1N8113ypjG++K4P5BZuEBbSXnqRd2EwAfgqSE1kH+cbsiU6KHoxEDgB1b6aQ4t/albLvhw+q6iJJ6vY4WLvn30l1N5HzH8AfaiBf4Fde73Dbx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxoI/grG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxoI/grG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41D6C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717407922;
	bh=kQx16MHEm3O1+dINfVJ9FOn2vs2vWzOO2ZoYECN4RJ0=;
	h=To:Subject:From:Date:From;
	b=OxoI/grGgQBJrr9ecHSouLhW+/fBnbm0YsWykrcdOng06KiwJwaAHooQmJmPQy/MH
	 8tNlqSf6r8wtUHLL5GYsKRpf6Ty+3VT8OW+paJmXtRgRD2H3meWPMOTZDII9pXbSVE
	 bu1HX3n1tzhtOQvMEWnN9jLQfSp5h/vrcHfNicmo5ivTayeEYK4CiYzg0js9oPAKFY
	 r1R0/4WSRFG8q40NPhdQkYJSNMeKewCG/XfNWr+4qeYkTdNWBTStbcSy04dDX+fFmv
	 uw4pbIrG9tYTNe8c2F5dEol8kRBQ69YBuwpEdML1UekqNf0Ja6qZDU7e3Qnob7BI16
	 5odu56Ktc1SQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFEBC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740792277.16296.15321860515268303594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c71f6d0c7d3e74f51c01a222d9b491039f04997c38d4c0b27fa67d1cfd23c3b
Date: Mon, 03 Jun 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717407922
