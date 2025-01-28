Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4729119F11B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738074354; cv=none; b=eQ1WyeLGWOj5KeWDYSW3zNCudeI7xVb77+eX6CKjo+6B9qEBxP8Dhc43hEuIv0RPFO6vykskUjVSYHmiw21V4W6pDVp3GWb3TQS0EIyx9wI0xMrKY7GLZFmLKiZf4XTrxIwLXj6lB9HHh0lgIbaoocKeUOs8EYOrRlOWYeiDAz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738074354; c=relaxed/simple;
	bh=d1KLdYVvnB5v+MsNT2wHSOuOxFf5UmFvQsVsz0N8KK0=;
	h=To:Subject:From:Message-Id:Date; b=o+DObKb1VXr5UCbP8QmJLODHB9DAy/qrVKvYk6Zslj/HV6BJhtmHhjfEZZhne2IHgvZGBO6fcN5b3PSoFMuMFl2PgmNMcG+BWEz5w3DSpuWa1acXZ9iQsUcyV4t+WSa9U7XATLZJ7lLjS5HuKwVvr2C6lxBsBDQhIcbcqKXGoSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lviBbTTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lviBbTTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E25C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738074353;
	bh=d1KLdYVvnB5v+MsNT2wHSOuOxFf5UmFvQsVsz0N8KK0=;
	h=To:Subject:From:Date:From;
	b=lviBbTTzDYosVm4uExfKmDaDejdqta598Hp890/gn31qtp560yD446WLay0pt3mPp
	 nc9Oh+TFl578pbZBpbfIpnDOsbNOTORnOvOAJYWtAgy8TjXXHi9TNSDApKdRt8XnOM
	 ksEY99UaIKLZPlbjg8TVZtR+8m6SoJUVLGzyat+qdfG0kFYl+38iovoCrZIA41eEQQ
	 k26t6aZNLiGEy2FW8QWZc5o7QkprMpATBqGV5OTmHPjsR1rHEjC3Yq+AOdw1M4BWX4
	 nGyMYTX9sUNuuHyRjv7c6RzH/xbjVBxAcTfE5/E1MiAdILpZR5FQd4bpMPazOc9nBn
	 +83l8cksoEWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98845C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807435361.3293.1147880641613862812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5bce0ca13d6c8110fc033300c293c698d90b2cc1714e39e321a9d79a652fc8
Date: Tue, 28 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738074353
