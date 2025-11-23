Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD6E2D8767
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763917914; cv=none; b=BlXvwZyZEbJkAAqIChRMhqBi09yFoFkmwnWn3nPWEFSnDWhyltbJNgnsuDVYPRc87YcJYl2ezfPWl+gzLO3goyA/X86lDNh6t3T2byBHaw9IbbKkhWa7Ph9jklUFxmSwkTKs8KpHgG6Vo84U4EvacmvSzg/cXzbjXIjWTQjrp3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763917914; c=relaxed/simple;
	bh=yr3/yxn0wqCYeeFihwdclXBNuKXbVUkNjycn3jrYg7w=;
	h=To:Subject:From:Message-Id:Date; b=lZwq/h/I9i8d65/Jl0MUI8BpwQeqYTgVFdVLhC1fMqij3HJtQfMcHpSZWckRDXS1EhHm1WbNXieKuNz7WAc3T0e6SoII51849sfrGQ1zPE8WbCtETrkSrsrHq80G9OuVuQdaAlbfMulREz3STvEKispUI8RX7DWWyWwB80YyJcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p90+bQp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p90+bQp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2140C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763917913;
	bh=yr3/yxn0wqCYeeFihwdclXBNuKXbVUkNjycn3jrYg7w=;
	h=To:Subject:From:Date:From;
	b=p90+bQp50Zka6xEKnaS1E57+3SjixeCANDXJdfq2srlx0QLgfSRY7nBWil/gBlH81
	 KaTuBLSjXsU442BlPXlPlXZ6mcf9CqvtmgHqQboA4+QgqK8VZNRu8oXqI0J4guxsbr
	 /Cj0A1tqUVFXEiC/SqYHngHQWY++GbS4ym7Vh9tTXnu4BXlw7+s8Gd7nWdBqobNrCJ
	 X9SXfYddlXl7UqjcqzEBvxxfSAhMOjE3nibEpoTahcm/jux9df29gfFyinBMcdWFlw
	 FvY5SovNC9nVppnuAsoCnuvxEur9pYBprWPJEbMU/GjtoU3LwXzKXwNhxmzXP0LxWw
	 elkZRtM7xvcEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93438CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391791358.6881.17923106871864090387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddb99b682a5e75d462dde71f013781999e0ad039fc1faf11e3ab0f06065780a
Date: Sun, 23 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763917913
