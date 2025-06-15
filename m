Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290F745945
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749979794; cv=none; b=Hkjnh/FC3Dx3nVbs2x7SVBnb0d0qhChUL7B36kiXKA86KYzmXsDc3jqlVqSWyyRfqBWSZPmIESy/9zMg0OwdX+rGZnGqPSn472vursG71nJTaVBlBpQS8C97UZZ8tUr0AvKOcGkjJrkf50Xu81jIgf0pIvJpkS5khdQWYxCnm+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749979794; c=relaxed/simple;
	bh=qrzMixwat8jer+lDlVC0A1iQmK+J8vKrZ4kWHrsQaGk=;
	h=To:Subject:From:Message-Id:Date; b=WCxiz0btQ7WjBIZ1Hq6VHrsGx8PYzNsFFA4pZqsHcwEv36rfoBcxIR5lLYKT2hzV2GXMl0MrS9eGaC9UiUOCc1ulrXacVH8rrCSKXZGX551QVI0iU1XBiQ6OxZjcT+CEt4u8vmh22r+ZVDbA/BaetPFlbo7MCZEB+dtIXn8TrZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWRjbaG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWRjbaG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B05C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749979793;
	bh=qrzMixwat8jer+lDlVC0A1iQmK+J8vKrZ4kWHrsQaGk=;
	h=To:Subject:From:Date:From;
	b=fWRjbaG89rKrsMvf4Ee3WGkLB0zQPOOgeX2Ra0WUTVlHOeHktTBmwaOsqcOBt8tbf
	 kDHI8zWJ2JbWIdPLektD5PB7fJtpTpf8OaWRmhcdK1wPjUw14NjJlTQk4/6BFjaLxT
	 B3jYazOulSNYOL2iQrg+VYdJBiAbVZNy321mrqjc2McUf12tPO/ShjKsSecNO9YkXa
	 Ycsxv1fSGtkCZx8JZp6xeVjuDEVZUl+Og7tco0knSkD240i4X+Dj0PdV+H4kiz3RS+
	 5QdL2kLYoY4FhdYlcCnNfz/7socuKCmf5H5B7PXgiqYNcSIg43OfbnVDSHvb6T0y33
	 //lRbXz4yfXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98DC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997979358.3965.9966746164857297853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4811ecbd23208a3520a75cbeebb037ea0f19fae80b624ea2cc7c395fc6fe2aba
Date: Sun, 15 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749979793
