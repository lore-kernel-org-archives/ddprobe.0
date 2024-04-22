Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4636CF9EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713758423; cv=none; b=XPxoVq5sElqqgNXa9s2gsqxQn/PJH2CSIcfgkffAy185ElNiRvOZCjOEL+ru+3IQd/ydRQJCGqcadG42eti5kOsY29RRWbGJar2Kswlbr93lL5Ow/ejxIe+GcS3cal4FyveseaK3wXlEetRPCTd+hPxpOzwmlRXD3SqeMV11x0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713758423; c=relaxed/simple;
	bh=PV023HPBHDW3U3Wk21kwyf1Kk2epNJbLahtoPRV+w6s=;
	h=To:Subject:From:Message-Id:Date; b=AU7OReIRzu6oVXkjNhgabGZI62M+TMoXlRyZe9TDQOtZS+OeSu9iax8WpWqlrl2cv/LSNhPrr9/YHwxeAkhl7JBm+dg1ebjNF3kUecG14VVaVbS51RCxuR47HbwtJHgBdIBKVNHDtd6W+qQr71zayj43cZMgT/OxkUFjtdIco8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml24ljCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml24ljCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CB3C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713758422;
	bh=PV023HPBHDW3U3Wk21kwyf1Kk2epNJbLahtoPRV+w6s=;
	h=To:Subject:From:Date:From;
	b=Ml24ljCn0t6C1ZxTVEuCAaBtMMU63uKNjqPf4KQ2v45yIUfQ9j3abIUATOpw+tcG1
	 RvK+l5037t2licDyTK2xDZH+wWVBI5//ElLRI359Qf1rzKKOnM8zP/uyAL6022g8uF
	 DIE1aJhDgNgpLpGLMefzTsEVKLoHM8X6dBlU9tXQKTEgRS9pz3tRAQFPLpfsVAfc+z
	 YxxjeflPOgU3FwX7GJsyzL48kXL6JpZKPZRDHOzIYvEGBD8Wk5f5GveKNXpYlMW6wu
	 OXQ1Iodh+XyxGu1V1zG2vMf+9ph2guOjSCibKNaceQDu2jKSz73gBLhWiCZj27kl1X
	 ZYH2aWJ3SMimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF1EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375842277.15023.14406638463227784472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12375c61d610a7f5bfff3cca668b6e06ebfd6e8e9fc7338faeb90cf10c7a54e6
Date: Mon, 22 Apr 2024 04:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713758422
