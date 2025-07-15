Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F26D26C399
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752561594; cv=none; b=g+C4OJfRL6UkRydcQo3SK5iO6K6Yr/ULGbSVMEon+yuYJL4WjX6QyIugBuSu6MVTfhaxsaVgfvZzK66UXCn7HmZhEBSZvoaulwuPneHQSJC1U2U+DEyNlbzVFf1teMBTilrBAfmW6hcAmk0tqOX281Kz139+7f1xxXSqP8tJo8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752561594; c=relaxed/simple;
	bh=dk3OO1Li5QNV2CzYMiXA7KQY2TCZ1dhpUlOY831agyE=;
	h=To:Subject:From:Message-Id:Date; b=ak488YU+xCeDctfBjlf/ABTCf6j2axF3P7WvGWrcWwHSBOeIN8zfT8NAVQqiRWQupb94XgvQcmeHeCivzuK9izeKzAAs+kzygZRQ5rZRsIGEhIMlLXJRrT5hu540OUCcc0QmcNF0TUtk+BINi2qpIL/QlXDIFeHvSoTJBRDGde8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxuwmmxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxuwmmxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752561593;
	bh=dk3OO1Li5QNV2CzYMiXA7KQY2TCZ1dhpUlOY831agyE=;
	h=To:Subject:From:Date:From;
	b=qxuwmmxVacE6qme6zKgNuD4fyzCKp/AGiA1+1JlynJHnKsMRLjgp2YTNnd5Dyc6n3
	 Ux+azpNEQVkj8IKQsW8esKH33jrsQ7X4t3R2beYLRy7900Uuhop9rlhxlfKPmC+xYX
	 Dm/yReKvMQG0pNAkgr8uVom4K8+BUXYqpOTZkYdnFkAJrza5XJYKmNlenreBEHZhHt
	 wvD+xZYtfTLwfl6XDpxNNbd2rIgXlEX1gtjErxTVrU+sB+KsESNqDYcRF0hTr9VMqX
	 8ZgmjrDG6ucd0wx/j2uA7Xat1gbLbDTTc4kfjZN5rJtpqWmUVDCJN61f0MkKTmir/A
	 jHfztY2jddwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E594C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256159357.18055.9887761009378217318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544a52b622b2d397af1a3f4de59a648dc4a943970041b5d47ae325a05426899c
Date: Tue, 15 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752561593
