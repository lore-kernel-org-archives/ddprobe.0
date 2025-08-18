Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D8C231858
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755496794; cv=none; b=Wkwv5N9bGslX7j5KN1HKt10wUBINYw0cmC6UuN3sg9FMArF7fr3zaTllrRFNwBu5+roFaW5To7/eUFml0ipVzOxRFrCJOnWjaAE5B375ScTosu/u/eC56CUkTiLLYysK/ewBVJcHbj1jbAJyMhNDz9jVS/CfGUoHFSQ72Dgvqes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755496794; c=relaxed/simple;
	bh=44QGWYAPdn4vDCLFadGgjvdGuxSKW/5n4q6kBgstER4=;
	h=To:Subject:From:Message-Id:Date; b=CiIqXPY5SLZo8Y4oT8RMWqZonFy6PryKyr55YWHX0aw9d8l/M9s6zYHP5mpENYdOpDL9CnppbhyUvy/gk7F+EP8aouToMZ37Q/HO7Ec5y9tmHeawdUn8OqFmCxAwjoaHrkxyImrFS4/XDMpnmDSptyf3790oLCkVq4gAj8g/XNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ731fCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ731fCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A48C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755496793;
	bh=44QGWYAPdn4vDCLFadGgjvdGuxSKW/5n4q6kBgstER4=;
	h=To:Subject:From:Date:From;
	b=LJ731fCg4P8Ur6UVLZyUgV+udCGXQWQ2r7V9C5bJYJr5M2KkdGp72UYO4Je7lf230
	 kw1k4CKrVfQeSN/qnJXZMAMXSGHRiYJe1sEjpe3gjsfs8eTNnvydB97md3RVY1bVwM
	 ZlgVf9DJRADLzHZGhs4N1/I4M/oz+3yMP0/zZgy9QDLGhZGGZwsaXpENiEELS8lxBn
	 ABo3sHtG7w4iWFMUOvYzjcaORLWCm6CalEXk+tlqTNkci6F5qT+zKxs+NnIRNzRI1r
	 vxoN761FFyHXUQnqXmy3LT1GwxptYv1+TCbPznxoA+Oh6DyTkcO5wPkL4L9D4TaBLj
	 EZruWciMgZXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD1CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549679357.4472.2124827017452883362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f9b79de0d90ad85d2a3aca552d72fa0ebc1182d5f148aee6d890c7ee775852
Date: Mon, 18 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755496793
