Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F61552EB
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728143754; cv=none; b=TSUOCy6beUTWNHzlH+qA1gdu9v1G2gXJe0lkzhz47JSNN7gV5oCpzZP8YxT1aonhIWIt260zSkVLWQs7P8s/ajL3ZUyFgKINRUqVyaVukxvvDHn26ktsg9v6xo18eB1O+yUJxX7/U14V8vO/zEFclyn5u940J7Ii/AhBAseFG7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728143754; c=relaxed/simple;
	bh=eQSLBO0FLxEvAgNbjraLv6ucdexgWEvJPuejN/f4NcY=;
	h=To:Subject:From:Message-Id:Date; b=KQvGVBoi8vQmxwzWc+LegiB2Scb+yX/iyPlQWUw811CsNv7VLjZwZ6fSPq6D80+8TBRnULZ62BAqtuFqGRE/qcBMXrXeMJa8uZstlrnfLkVwA17Zt2GNxBP0P1z+KhtJwaHEXs/Dr7xTfEkuSwrQ23TcbNtQYBgDJBagser5KRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWaM/z25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWaM/z25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728143753;
	bh=eQSLBO0FLxEvAgNbjraLv6ucdexgWEvJPuejN/f4NcY=;
	h=To:Subject:From:Date:From;
	b=bWaM/z25pfgvTKBqRYrE3BQlvr0gi7J6bhXNW7PcM67mMu/6SdqilPXBqRn3d+8fG
	 R279y+sqxBq6nJRC+8rpP8DOoCeoiGILFW+pMvLbG1fQavZErgjwGxhVZO5TGxiZmd
	 h07trcJvT87Zqki9pZidd7ffUMzabeCEWLjsXudHT5WGmNx3VeiKW2UFO0Pu3ylPPt
	 kVl3ZcuhD7T0PH95fTSxZ1+DWFHzGbRFxINZKM6pfDSLHKDQSAeHQ1RglCNp1wyNzV
	 EBbYNp0Cok5mkQNpoXU/21m8NxLmxiS62/Y34C5CZj1oAqgWCbwNgIYFo61owfz+Vl
	 MdjPKPKbKFhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C419CFA742
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814375360.29349.534106854507343369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fcbbde761a1ba248d188a9c316db66a343ff6db9da7b37f0f1831d8484882e9
Date: Sat, 05 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728143753
