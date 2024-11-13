Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D944171C9
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731513954; cv=none; b=kawV4GKjCBWRXC5K9M2nljiLEQk7CGz0dJxOvm1iNEMwrGmtz3Ieyga+L12aKg7KnUJ3Z5xTKmp+cAmD75whMvi0zt5sSv+tYDxpO2PUmHgzacoSSBwOecvJXXDgukLuQav74IMB76ch5EVluBhcJ2wk7lb5GenxuZkI1UdfD0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731513954; c=relaxed/simple;
	bh=dpV5kT/VXDtlIe4A78dyHHGdgQH04ZqePLVdAS4O+OM=;
	h=To:Subject:From:Message-Id:Date; b=oI98GYBB/A32//hw4gK/qBveOKkYNKRNiU1/BBOeOojCas+hXkXHxk4sd7Jf9p3F+iIWI+4G5HXHue4aYZZ+ahjPrdOmWuYBJafhlLPvn1EYG1/6IZXoixr4C5GzNAQ8Z3Y4qLCpJcb0UooWrKryq9wCsnC9JKolPipzzyeq4Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvazaYXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvazaYXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B077CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731513953;
	bh=dpV5kT/VXDtlIe4A78dyHHGdgQH04ZqePLVdAS4O+OM=;
	h=To:Subject:From:Date:From;
	b=LvazaYXLWNZPLlLX2TmGbZMM6fsubqIB1gS+3AAHHUAxwvF+eqOIZ+FkD9G3WZIov
	 6Y01kVFmB76wcHSj9xJn8QV2G4Q5r/wQW7tfJBDG/gM1TEmr/ykqDJR3BEWTDm72ty
	 WJzHw17qpqQTlSqmRohjuisw6BpoT4mpOqwXT6FRrwyZxYlRdkIQyO+y0K8R6nszfT
	 eCVfIeZqF8t+WLlTalk2kldMpIvoDo2Hq8pdN8FdDQnLYV9j4W+g1x6+V+pyln+jEH
	 91fkD5Tv04NFdgLF+iiMkir40NfkQhvz+vwYhqEwmtT5eOA5QN8Z6CYvcZkkNZcoFn
	 HhMS8huXTtHjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE93D462D0
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173151395360.14403.12582931866608572013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9576a171970e82975104023de7cac2feaa46259690a41c37bf72670b34e145f
Date: Wed, 13 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731513953
