Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A09A36CDF8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791457234; cv=none; b=SZpueAJ7ZmCO5z3GiAhh97Px0iT06sw92FlCBzlbizU6ayip50XaE6Gmr4A38fiGka2h3YaQnRGCYsbE6gl1nQ9EuwfX/HjPwe/1GOIvTm2w2UFNX/eb9b3vRRhkd+qVyO5DMhyAHrXTJ5EpVrmdfAB+KG4CcalqAK/uqutSwj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791457234; c=relaxed/simple;
	bh=EydnrXv7sHP5BL+bKumv5tzaFRkGtmHiyo4qJ103pjo=;
	h=To:Subject:From:Message-Id:Date; b=DxnqgtjNopJ6lSYfLu20Iz+XfNyPzDIxzBj5efNEXAWJPK6t9OM9oaHtTYK3fGbtZyTqB+aKV31eU/nN3hCFAH9tKAXpnIB03ItI4LgLNMb0YzBMr1HivVob/kxIftyIyorvv9ETzU+vL1btPqFx3e2A2aVwHxHgaUfpyl7BXa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeSPf2cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeSPf2cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA23C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791457234;
	bh=EydnrXv7sHP5BL+bKumv5tzaFRkGtmHiyo4qJ103pjo=;
	h=To:Subject:From:Date:From;
	b=IeSPf2cbsX9Yzat6mC33ljwgADyv4toWd05gXyacCB3Olf7ja4BxgA3uGbBn0yShH
	 zz9XzKJB5PZZQMMXsb2hXukAJi34ZCDKtWOwTe+Xr/gyswSnanc4YGdfoVI74W59ow
	 BDBk4RbGcY9HQdyY40Sn2htysI0hPs+/QGS3kOwym7BR4mYF0QTtE+cFV0MdfW70Nh
	 SDL08q5Bm1R43v8giXP6pyZsMM+hEpubh8CSyvqn4npRvNO7ljqx93AAak7aq/Hkke
	 EfyPjCuWwOL41xAyQSa2G76NTAkTrKxr6JbYMqDF0UqJjKmUrG2IZE9+ZZ9JL/wqHP
	 1YAheDFGJLhGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5FECA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145723374.26816.11720882176584245860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8027a14e892615a4dddc2d014a11b52255c9972a7e4acbc234c689bb78c3ddc
Date: Thu, 08 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791457233
