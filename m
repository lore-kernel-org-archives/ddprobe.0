Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1844C1C84AB
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766480634; cv=none; b=CjSl/LV6hqijyvu8HkCsPcBwXCBGBG0UJsWACEpyI+uETZDOrIgJ0m8Z9M7q1k6mC67CZUIUp8/ArVBmtdN+WsL5ZLM61TbaGQtA8UbTSeeTQQnk0jiJYQ2o69MUPUcmpkwzhO9ikTUrtRkaJn/h5gw9Icb/5UP4KWcp2QlCd1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766480634; c=relaxed/simple;
	bh=7gHY9n396ZSXzgCGWe7cbNMQ68B67WQjIeNmZ9FSfns=;
	h=To:Subject:From:Message-Id:Date; b=lMalZ8C9z467AjZCWLzumwlmuPCJxzh+xDt8LmbPZfIkG8HmW0fVaxBXUtFVGJHpM5QvOtUXj+G6+WkZHraC3DnOF7yzFWYCtobPQFgIMBHWAFKF73gVlGmZy5gAniuKvLXMnKrE2d8Pyo7AsAy/wnELmd3yRDcmfnIMnck0dj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maPo+jLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maPo+jLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE83AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766480633;
	bh=7gHY9n396ZSXzgCGWe7cbNMQ68B67WQjIeNmZ9FSfns=;
	h=To:Subject:From:Date:From;
	b=maPo+jLKpMTIl6DbaZvuAIQMKaTZotjgP6pt+qJzko67gY3RBMmDpRoE5famvfCZo
	 5HTbIr3B+SHJLoEEukUbJ0GX65+XxJKsokCJaY0BFm5SOJvEdV9dHhkerF9Xi7TZgh
	 qH4AsLWJ8/WA9+Rf1/Une4k1ygAUd+v89v7SyBkH+yCtvCQEO654I1A1Z4n4VhyV8G
	 BQZnR4EIztcySwj1uBOAYT4soSnzu+jP1uOuj/0XpR9XaoP1x/eUNPaG6FkBo4tJ7l
	 2Uhzv1vdyL+JfGYm8jhoUqqASL4/e+YpteUwTiM4yaXFa4s6zoUM+zVf4xvZ1XTwHA
	 yc1a0NeDZezZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C217E6F076
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648063362.15980.16172257989222977330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cd3182675e425c745abb74b44828a96a89a7a4ca379419c90fbcac1c33f376
Date: Tue, 23 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766480633
