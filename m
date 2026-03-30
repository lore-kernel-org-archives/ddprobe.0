Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160E340DFD1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774844094; cv=none; b=J7xwvcnZOiORxv4oZvfSAKhXwWVUXf4v64MobBuxSKFMMVoYedCYN7SSLgMfd0v13sTcZLvqt+KHsqf5x3sQDXj8WCsL6tdOsGWAQ/KG7wfjhKCovI5PDSx4U2d1tZOALGyahP84HpvU5LWDE0/GICAjtNoUZnyLo2gcoxki1IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774844094; c=relaxed/simple;
	bh=YwI77VybvyR3aOnd+uqI5oNdfo9jKAmKaPtMrWVL91o=;
	h=To:Subject:From:Message-Id:Date; b=kcDFAXlqpHtRh3igNRYLkiZAtZvEoWtqZ4ac4rY6Jm1KpoPC1MQl22wrPrde0N5r7W797dydbkpqEUrpE4a0mlXtY4zoVPDN5nkwKlv7Re+x66eYN8guQQgdtVllCwHPXgrrjhRxMegxHGn7Ve3qFi7fbkEXuvt9OfHgCLuSx+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRReUx/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRReUx/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F62C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774844093;
	bh=YwI77VybvyR3aOnd+uqI5oNdfo9jKAmKaPtMrWVL91o=;
	h=To:Subject:From:Date:From;
	b=tRReUx/h81mRGDyp9m/3Jy7slGvfp0/7QW9GjzLrFOGNy9I019NjQJfm5bf79xkrr
	 nAkX3M4vSIm53odcuKNjQexnw1LMaf2cZSsSWuurWGaVvprx4c/ShlModYbT3ZG6nI
	 vHViMcPMwhZrhj/eICzLDKYA8mE9wSbjtzz+AOmZYu8jMteMcJBA2In1ZezCfIGWSR
	 GsNL4TN16qOM+kIbJDpIgKH1OtFVbww2OuB3Sa6Ct+gZ/uBldyc0RmjjJvrbkxAb4N
	 8j8WImloQipcwHnTuEG6LPnJbNgbfWrTqr4eJUrXj5JtbDnZlGfbbZYFA6wxQ1yUcs
	 WjRjz3aww1orQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931DBFF493A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484409359.17940.8918982426244063619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebdeed51641824e18a47c327f5b210ee388da9286cbf91469570eb1b219c912
Date: Mon, 30 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774844093
