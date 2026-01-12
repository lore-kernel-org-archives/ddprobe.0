Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0715C313E1A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768200834; cv=none; b=qlX0sOpQjUM9OOjZ58NVsc/+rS2N4WYVVI3ur32YS7X7lNKhiunzZPd0hOmDlA1+h92X33gzvNAGqzGr8AhWQhG9SvXGkQkJ+903GUUOLunr+yv47QtMvZNAS/fcUnqTZ1sOjnjxhxhetB7JR6Ra3WyccarxGgwkCdTwtzPln8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768200834; c=relaxed/simple;
	bh=4Lk6Mzi2ANtLseOOBackcV2bP384ep9oLLKStKRxDKo=;
	h=To:Subject:From:Message-Id:Date; b=j1DY6i9Fzze/ofteEIeEVG17GQVYHyQpvQW7CXCV+bV+6JAPCoCeh6s/u+INELy2xp8K7IS8Q9jLEa5ivKExwe8rsCGp1zTFzYMMzJQZBjkICK4yNS0MD41drzsq8Gfa864vbcVrPaCVrgB16HrkxPBndf4FEOWctHyrggOaVR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyO0N/Wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyO0N/Wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCCC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768200833;
	bh=4Lk6Mzi2ANtLseOOBackcV2bP384ep9oLLKStKRxDKo=;
	h=To:Subject:From:Date:From;
	b=OyO0N/WpYNYFZ48OO4fZOv2LfrKCcbngUG17XrV5d89StHc/FuPuK/pq2ll+lLjYW
	 fFrJEhwLBfhH60rxfahFjGRv38i+Q0ZDExizVeqBoo7T0j5QnyHTFpxmopipCFRwIz
	 BxMgnxSn9MSyVhBACTUjG3kQKXgeA3NHNotJkcRFRkEoEyo/CZhp5xfvqO2DL9ddU6
	 ZoM15Pd7PZ4i2qB3wifSMkygB3V5akOrQz5hxX09s6pA6BsqgiaYAntBZbJfYR+vnB
	 471T95rXckaReuGtb0AjCJas6Ki4JO5U4Pex39v7WtPbN+/ZXnoh+9yCZgVX/o65Sv
	 Z9Tu3h7olclPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A9D2503B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820083360.3628.16373637509408823441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b304835343af34aa0a4027e6601aba9bee95be475b5606edcc67b6007133022
Date: Mon, 12 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768200833
