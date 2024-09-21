Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3647B3C38
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726886154; cv=none; b=sqVTl184cWv8UIXjR/6+pFGn0TgkeGKHo4zdB9zoTXJeLgx4tAHzfMsbO97WS0ir+rRt7JflBVpcC21gHFJK40r8utnVSlLMLRE3YCV6ERIJngs7QJH6JIMFXr6UzMDh68uaHnePyGK0ACgGtpLj63s5mrCjsiD2KK78OPxQWEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726886154; c=relaxed/simple;
	bh=Qj05DVLhTsU1vQysJq06h+ZuOJR6hJ5ZBLDM7w6TVlM=;
	h=To:Subject:From:Message-Id:Date; b=DtR5bnKel78ExonuMrglXrg1ILo6LIB7MK4UAHlN4GXll16UTXi+vay4nYLaG4tnmV6p+0TI6W3droEa8AojYcWVSvNQCzF1VEozRtFe8Woc7TEacSUR7mFC32/Ciahe+ftdvb6N5JtSp3w55vOJTGGzfUutWfVRi2eRnlSoY74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhcwICk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhcwICk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC2CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726886153;
	bh=Qj05DVLhTsU1vQysJq06h+ZuOJR6hJ5ZBLDM7w6TVlM=;
	h=To:Subject:From:Date:From;
	b=GhcwICk1SS5DMtnS/m3eLtorPQ85BGBitNs7XUlVcuf+cnr0nKMgmk+KQ8z70r34V
	 +y5JXEC40USSfGlEoIBq4e/4dIh+V2/Q+1DTLme1QO1sUCntHcTdbjGx56a/YG7+DU
	 gOokg6prbmbUEnXQllTXZnoielWuaW2vmjft58R0H5sfIjkfnIGMK0HY3oQCRz9/PH
	 Izkfd9UeC+kgyaFOfrfhwLV98Yk2TEF/fHiQqawN9dQbU7/xq8z25G+ezXXUMnRaHp
	 q2vfyxrzXr8z3nvVE6GtgDIzt+Qfc7iR/m9fTTq1IN3hHh+Wrh1QOXgfyo6B6Q94/X
	 0FjRMp5ziON1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D7BCF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688615358.22291.5640304528449886895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e49746dd5caf2498964684dc7ad2846d6559576a1032bb18439c3d6fd2c54f
Date: Sat, 21 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726886153
