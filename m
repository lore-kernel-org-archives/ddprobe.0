Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279B713A414
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721899554; cv=none; b=Z/xebXUsd9i+pHxe8DQ4n5gW9nqgT7QmzfqbF865I1uQlHksrBd1MBnjlNomVVHap6Z+4HoOjW3+tfeo1wLpnG6dtkryorTy0obM4uUsqztrjAn5wAg+hIHvH3MszD4eT3YCAsLQRt14N6SPNvhiMEBEzKMhfc4oby4Mgc2V+1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721899554; c=relaxed/simple;
	bh=e3o+Kjfc4Y8pFW+TPojIoIMRYdCJKDxlqkk3dsG6Ebc=;
	h=To:Subject:From:Message-Id:Date; b=L3tPZyu4WD4A+jvUcDMoGIRop5MpVH71AuFeT3ORQSkfPruxO4ZwdH7xM0hUfCfYHtxAswoF/vRv4g1ndOV1kO3I1run1Fyh6CyUIhJhLJOkan/LB/akNDH39wWb9TTXNqHPAL8ZLGoUlDseDqoEBnCJJ0TCDY2wEPdVk8obQg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxmh3LzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxmh3LzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36D1C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721899553;
	bh=e3o+Kjfc4Y8pFW+TPojIoIMRYdCJKDxlqkk3dsG6Ebc=;
	h=To:Subject:From:Date:From;
	b=uxmh3LzNiexIpaJyli2CJV1LyrHCvSG29BdAY2ojgYjgp3ZQHcgYywN1ceffUIg3v
	 pKgs/mEeERVEgOOANgR6o6tKbymazd/tbVnQ7Tm8vL6s5iX7hTySXwfjkiP1WHSXwc
	 HP05CEHClJFYFN8aVtUjCl9VOq6bggsSZcUKg23evnxwScX8BLxQyXN4N7cHLWHQkC
	 VUMsR+B2a0jFwHKadqbchvVqh8qz8RW/etenZQAhZAn41V0n3j6+TNTsKkiO+efCJP
	 hal5lXS4GYwBryKUJW9/Qdtg9sOhON6nVA7WT7kf2OCTtn3fK56Un/hecCNuoSrajE
	 KIZ6JBBNhceow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22A6C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189955364.21131.9621231176062387445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0570877b9ab847349c5b9f3afe75431a3f31dfbc379993fae68ddd04fc25fda6
Date: Thu, 25 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721899553
