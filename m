Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCA035961
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748395794; cv=none; b=ukfgoMvlI243gY/m3sxm54qLh8NmPVb2r2W+MtSUWkF3DtHd5GQUKl66CuLWIsnVH/I12sg5hx+dAQfN3RP5cn3Od37Vz6RK++qV/W7OhfjzSF6n5OEWEW0UEMme189x0Pz0hWgA2i/gAxsVqYqv5SXr3OJO8FrzK+ejmnXYZ0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748395794; c=relaxed/simple;
	bh=hob22ohSXKfSKiIolHlpgStH59/PK4PxK+1l9/O322k=;
	h=To:Subject:From:Message-Id:Date; b=LQeFDCq8wORD8OhCGjJlEpB7gDhz7G3v6BE/nhczGCOZibs4JXPboYLPpg6ZUsoHJ8SezPBNaAF0kWOY8OBjGeEvuSKsV5ck3b1dhKG399tHBU6nbgic/fxlbQ06IfvyFNuXH7cvOjnr4goks+emgI/lAS86woQqEFdNvrNjEfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyaaTY5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyaaTY5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748395793;
	bh=hob22ohSXKfSKiIolHlpgStH59/PK4PxK+1l9/O322k=;
	h=To:Subject:From:Date:From;
	b=YyaaTY5OE9ecws9XREY4VOgvYQBhZlBPQAhstu/XKq/0vvu1mYoLCxwzaCMFEwhor
	 ReoUdltMwau4iOYeK8GwVX7Zxj09qtntd391lMt4cxOY++Jh8tX2Fs12HMkS7StP/M
	 fKhVQ+hSQfux1PTLGOAek+4KJzJa66DE5+ZT5rSlVc6oiO+jlRuKp2GYy0NIgwErVA
	 cwaDctcyA+NJhLBx8mJjgF8BE+MzD1HxyyDIZrCTRpIauyObL+9HeCL/+j9Dud4dCR
	 m/Z1nobNh6oBbUod9NN5anjmFSkEytXJz8rZA/6e9GjBqcJC+NCppIhXVdSO5Sm78a
	 ZNVJe5u5qinew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FAC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839579357.10424.5364473259541797350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb6329ec42f3daf6e2de4004a56b98e4cd103eac2de7a24535c5a5748b5771a
Date: Wed, 28 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748395793
