Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2419DF7D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751152794; cv=none; b=h2AY1zKQLNkP6JzdFxG9BXYzFhOYfxKA8nQU1yLqt6qLC0J/syOzPhl86qIqXkNUnPC+OdaBmWbQD5BcaKoWhu9OEC7dtnF6TRUZ+wPMdnqtY2XFwPJv59Ty/RvV4bYSW68QYc2JjPXcT2kEc08/EoXWHFB5PyVSSryNlxWAWiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751152794; c=relaxed/simple;
	bh=REJTeKxPIE6SP4pQZ0rjvHMWbYoLZh3tf8FkVwddp2o=;
	h=To:Subject:From:Message-Id:Date; b=axg+x8sUIJfhXOIbUb6qbHTe8NQO/q8lTrrc/CSd8wMpMQ+7hihtCWqb18sZK1xMWEe+VC38fyU3GQ1ojakyesJs5kLHL6cDSgxRpnphARkoSNnAUr2UyS8LdqB/kRBVqAjpFFQBm5NqIOcKBbBKlvgnqNHZu2deZFlrcaBckPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfVjR071; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfVjR071"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F67C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751152793;
	bh=REJTeKxPIE6SP4pQZ0rjvHMWbYoLZh3tf8FkVwddp2o=;
	h=To:Subject:From:Date:From;
	b=LfVjR071sgo5BsB7a4YILzuPJ99kKjDm/bjAjMqCjn6pOR5eV/qTuQG53pmzfu0qe
	 uZ+VBpxadVlXt5IP8kMRDboz9vROItTlo8FfQAotsnRh9t4IL512UHawVGmcPFKy8G
	 H4l3PN21qfzP2S37B9ATBrqle4Xq0FwcZht21YWWbXpAJcw9LUUyLmRbD9Hk/FFAN+
	 Y0UllDLGcYjr0Zy4mIDHberTvoljRhOt2HUAgi0YL7MKGWxtqIhIVyRi+RBxlp8CPP
	 6HGE2mq6H1KjZn49s0iDhE5nusR0zjBVhZw4+/pUFYnoBit7JBcjkXDGn4gXWBYEGk
	 nkZDUW30+NrdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC8C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115279358.24077.7517927600916911612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606b710e518a9324b62d874cbc04deee619d4e6bcb2db633d25e187ecf04285b
Date: Sat, 28 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751152793
