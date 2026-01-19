Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55250097A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768784034; cv=none; b=AVD05QprDitbJefx5+HvfX2pgVmuVqYgG8e2v65aMJaZIAB1DrdXPR3ChMoIAjReRItQ1wdQEYgyY8YXlCEmD52+gVr/LtOpTMY7AhAGisUzoztyaVHoLE6+kzVNHmdWS6Kpxa+yVWT06/tsWIHhPBYv5Mr4vvk1Z1mtqRL0q+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768784034; c=relaxed/simple;
	bh=3c5fuQwiATace8mqUQOu5RJIYS6hIpMLDKy7DKLr9tQ=;
	h=To:Subject:From:Message-Id:Date; b=UhHnYhF3WDzIQfJck9m7zxRUneO56KgAgO0+DSLdKQSgmQFG0uGbKlziY+fozOebvS7EtkSSuCi51zzYIkMuJLA78YDrb+md+KD+QhYTEfILi38y2Fc+sx/0582wFNy7BRomuZzToeLAntwFYhoy2pyNCn/0WH/E9/x+WJQzIOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brC+MTXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brC+MTXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768784033;
	bh=3c5fuQwiATace8mqUQOu5RJIYS6hIpMLDKy7DKLr9tQ=;
	h=To:Subject:From:Date:From;
	b=brC+MTXlA7h4MeUqBlvuaio4dbGVv0HjiJx6lkjshVN6vyhNHDdFl24H6RMkxG51C
	 wdPTEmV8adKMyiAkTCotlSukXVJGOyeS/Akov8Yk4vjmdzE0mSPae0Ut7wmZhxuX4H
	 F1XslkOtE6fd8lDDrODfB33ktP9PAFfrjZRMP/maVciteBrYuIW0Yfldjet34ko5p/
	 swqDiN3qfan4cg8vV9Ul3LNIiAui/0uL6pe2V2nc6Ji09/SiljJb8/qyNArWfftoXn
	 aqhE1U0V4yPo9Wqt8nk8Dk/78ZsaHIJz0etQ8byF/QRf47hGBZjMuehKo/8hR2ow1w
	 /pddpP39b6hoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046BC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878403358.9933.7960788622639407879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1c8391a899490ed5c1b6fdf2a5703b5381acb38c0b70e84d4b008d881c3b97
Date: Mon, 19 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768784033
