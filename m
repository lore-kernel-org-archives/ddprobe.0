Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEC617C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717373123; cv=none; b=MUC+L5jqTX65pLn4NNL8lthVGe1CYRHTFNK09pgEN/xC6fwbxRhjAf1oI05qkp4xLGCYGvJHKEzOVtZEn2ofw1atb8IvNIzJP+e5Nxx+hUDnjr6ejN7AYkOe9V4qvCBpCZ/3D6kq7cjEHUlysLCrUpDGuK0W4Dg0x/MVNU5denU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717373123; c=relaxed/simple;
	bh=PUihX3d1/q98GM1jl/f2fcGbWIuABL4qSr6uRbjShkY=;
	h=To:Subject:From:Message-Id:Date; b=fsOy8z5JBllOfXNb66QhayvZGLqbDn3B6UqP5XRy9surgt/gZLdRn4H1MVrQVEW8L8/IFj9tcUwJh76lMC8znYaDBM6tq68C4X+aUw8PLUmm04tHD7YP35GUS9BejPpzpm3ZUN8Z/ByuFW/sPiWT/uvz86A5wTmJ7rJ1E54dr48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3AoP5hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3AoP5hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E74C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717373122;
	bh=PUihX3d1/q98GM1jl/f2fcGbWIuABL4qSr6uRbjShkY=;
	h=To:Subject:From:Date:From;
	b=R3AoP5hyAhfetvCVX1GfgeLu1axgyyI5VEb4cWmCx/WLVzxIs/wBL4azMlWnQNYGd
	 sKvW2K5Mh8Sb/eUS+FPe+Wbauth/6RefvuAJeaOOHcuRTunKpUxu7Vp6U01m7CDQe+
	 +17PgcifVkYk4Njr3fO6u9Eg740DVqD80XOsiBo6y/xt6tVFyxWT0ZVYBnwLvsL90X
	 xljE8RkZybKnbh67KDQYU+LuVQTXkIC7IBqxiV+shbTHdebY1y0lgGM3R3+SAVMBbX
	 rmrLVv0qhlykLwi/WkvTMcLusLkPJUGdN17kDNRgfCai5sd1Vm4kLDdgoeOKXPmjhM
	 4lvFvtEB8XBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C3CC25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737312278.9125.3569811915125320913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3f897da3a0d6d54059ddcb6bf872caaf100e4c075d3ee7ed2ef717f640cce4
Date: Mon, 03 Jun 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717373122
