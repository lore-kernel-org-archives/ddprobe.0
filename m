Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2045B315D4B
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757104794; cv=none; b=jgP1nH+0+gP8VaRa5pOCMv+HoYe2/TCvO+EpIeHA4XBFd4Vg+nU52/GHZrj+hs9J9V+iMVrpHZBo6ZUCXnzIR7rU2nc/VLQs05MFH8BxlDJcXqzFyn9c0koOrdWXTmdEmQm2n8RrkLlGkPlOw+XlN72zhFdxrPkq+v+SBDNtUE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757104794; c=relaxed/simple;
	bh=y1jEkiCA60coXjl3XS0boVmK1JnByA3rUEOTDpZrr2s=;
	h=To:Subject:From:Message-Id:Date; b=Oj/qfDW+ytbB9+pks24aNh2N5PR6tm0nfunQCjQIU5oEr1WAWVzKeGH5PHvYf88trP6sZc9JD4YOc/qq5WxVAgPG+CUJswdd/NE3U4GdKykB4egUASJru0dT12hn72oR+w76iX4r374eaeTQ/dQfqzCruK9UM61FXu/SJHtJHVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQoUD2Qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQoUD2Qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4624C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757104793;
	bh=y1jEkiCA60coXjl3XS0boVmK1JnByA3rUEOTDpZrr2s=;
	h=To:Subject:From:Date:From;
	b=jQoUD2QtXfCfXLFE/Av+EEXn+fa1CWApRiq6TDLDePcGN9SU7IAaZeOCLaMMC5Amm
	 x6HjEqb2G1ev1AQ9hywG5JNGIQd4QLypSBLD0MvOszhV7Y8XZdxOl9OzSVLbgtIeYJ
	 LqDXug4lpJNMIIk7W9gsMvqcPfeQd4uM8H4hV8RCLs0M4Z7s3HPXhJ4OyzRelnjMLi
	 oFWGDKzmAWHvIzn3NePHj8dBY64i29BYJlM9vsxI/h5PjMBp6B+o/T/0yNK6zd4vit
	 jQJVf9JVbBxOvREke6s3FarL86TnnPd1CFR0iX85G+bgbZckzxcFmQZQnOrzMHz9ZH
	 HFbQW09WYYIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276ECA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710479358.16639.7779110561933446192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60797ac3959061f1650ad747c4130d9ef5b7241a6458c1d6a185eeb61ff8f442
Date: Fri, 05 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757104793
