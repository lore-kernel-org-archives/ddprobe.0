Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48E93C2782
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776712654; cv=none; b=D18t8E4JnO9owjEIFUckxlOOPXpzY0loMl0xZOn42d5HwR0kOBKA4ApJtj+NWSKPH5kPeyJPYSL15gSdITQfUwwPZA5tbtpL/OTUMtbaanhXVcXjrFXmaTP6vN5R1ZtY0R+FI4dQOlJChIZJ2itUbtgwzXB3tbR6M5QRLUGa908=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776712654; c=relaxed/simple;
	bh=n1WrR6AHNT4cUjgnx8g6U1DpnF7n998Um6lgZ402Npk=;
	h=To:Subject:From:Message-Id:Date; b=QYOB1jm/kGKKkc/G71q6i1+ShSAjJClbJKCxZOyPsAvruHkHAKBqjzXeZIqzIWBleHcUBrWvnoT35Hn6CR1OptZLa95XjJpntjtgxb6HkIwN4z+ej7QXloR1EUdbGarO/hS41h8EsTgRdV/r2ecZ4NGqOF2kQFOV82PrNsVM2FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLtWHobO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLtWHobO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0F7C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776712653;
	bh=n1WrR6AHNT4cUjgnx8g6U1DpnF7n998Um6lgZ402Npk=;
	h=To:Subject:From:Date:From;
	b=OLtWHobOdwW3g5xFuAJbQpmS1KH6t2+6eLo024RxBjGcoH8ENY7uC23v0siXIpuKh
	 7dxTPwLsq7qAAZ9OA8d/VGzoCKFL+qKw8gm2wCXkPOgpy6Vm9Tb4J1rNwWOUpDMNME
	 TKER1OtJa83ZwdAG97pse0e4IvOgs7BcdYjmmVoQWbUKQrdPk8Veh5KIaOkLGyPRic
	 XUM7UjY4vlcmRq/J0Kn47bLL49OiOuDDiDdbAwsGJSXc5G4JtNLcsUNc2+IM2A7Lpu
	 dPLCivGnv6Q7yOChKQ86E+8MyGPhA1Yo9HagvZJVzedw+hcfwkfPrlNNoizJPPSMUN
	 /q6S7nh9IxwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E1F5A8AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671265368.20057.901784194122811336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b38d58b0f936fceb5eee24519fef2e2b7c98560af71bd08579fc0251cad19c
Date: Mon, 20 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776712653
