Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575BA23
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737373554; cv=none; b=EZ7O1ILRnJg1w9RQEc0uvtJfWliNQj7qCq2qPOZKqIKC1QGM45z/iNiOaytq1G7QkYHxikRoCiml2LbVAH5JQoWoVePg49GFLWC3aUd+LIqJz8QrKf5v7oP2ImKEMsPymuCFB28qnemt7Xx/0gbYeivgh78VdhYBE7G0iu4S5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737373554; c=relaxed/simple;
	bh=TKXfSDItdxgKs43xgYXou/XB/DDjQkDqGapPxos1q/E=;
	h=To:Subject:From:Message-Id:Date; b=vElRRY6gnvkQbz/8uv8JUlZkk7qNfiocTiniHXzVEK0kP1YaeaATzyHBoXeJ6VqEtjp3oCk3ZZ34UmTdel5731uw7j+eRdKfQ7d+TSVNcz4rtVpLppb09SpA7xPPW0z/wpr/KQfO7f2i6KhLzpjPHUMWPodVENHGaSEstPcYL7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnRJczB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnRJczB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC25C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737373553;
	bh=TKXfSDItdxgKs43xgYXou/XB/DDjQkDqGapPxos1q/E=;
	h=To:Subject:From:Date:From;
	b=YnRJczB+hN+/aAsikQJ9NMRY1DW7gmrGErP0M5EXsnzTljtqoCzwUDMl1BIi8KS1c
	 Y1HNABri88ThZnQCQ3PEAvzvtK9qzRIFzCiMAnhXjoOTZFWeAeZJ3xjLDKaPzqpGBe
	 IPshQeYA5pSmHKc/hvNlLmKaACKUZmS7b0XoccZcRZnvH9HyjQjfxgpFAuTGvVh3Zi
	 rqBNrOznBIxg/axxeTm4mDb+9oDBm0TbnS9YOvtIgpfnL84S0aniJ44ij3AWGq/bUE
	 mds7+ehQ6qvcl6eU2l8LR+PWAx2M8sf9H2SzPZTqHPuEg3prDLIG0Mv/JMtS91Eh9q
	 +OSexbf2rgraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E5BC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737355360.23363.4650221265319724544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18eaab99c4634357b89817b639537bb408a491ed5412ddd648e268d481811cc
Date: Mon, 20 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737373553
