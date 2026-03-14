Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DB5239E9A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773505493; cv=none; b=na3sibhwsn3dNBNvhexMd9MM90y/AjjIfq13MjM1bIbr0dlzrFeYqjrfHNmfEhL6sqee8Z73Rq4fN1aSQ52A0v74/G3JOlViRoAB0qNMobox8+eaAyZpDcBeq27c8bm+Cuk+33ynfI8SDh+GodJ61I5hDiSlLLdECoT4+KG1MTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773505493; c=relaxed/simple;
	bh=S3K+NGyY8DGdYWl9ibI2FvT4ThcvTtafXT/m9hZ2VeA=;
	h=To:Subject:From:Message-Id:Date; b=QfQTPut/M+Jpykx1MwGFAX9b4FLFO6RCydmqCFe6ec/GMm9uCMawZhAeR1KCP+9nnB3tDozes4jnnCUSxS5HLZOjkwSu5tc5QrDxc+k5KkCkL/LTHqGH5pVnHllUQsb54QOqcc2xrziJWFNZrwTy3C0MEc03xGwO9fLsGzKGaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCh9p3xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCh9p3xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16CFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773505493;
	bh=S3K+NGyY8DGdYWl9ibI2FvT4ThcvTtafXT/m9hZ2VeA=;
	h=To:Subject:From:Date:From;
	b=DCh9p3xuilXHQvENxcvFfOryUoSUfqUwIZPQZx+LjFmHfP6O6L1vOFjUzw/MMq8fz
	 C7ABYAewOasV9p38D/B+T4bKmrE5RWj7Gz0cs6k+ks2Axow5Jt9Dpt5rXRfvBGa8d5
	 jPzEZ4gnUW8dkxdXAPeuuArlSXDpUcWoDGhka0Y44cAF29Q/ajguEBxC8GNz/SvB6t
	 TdLdkiY3F/ETuOnPmKJnZv8OfIG2kYO7XD9OrBBYX68dJeATumRnaMJFbSiPOK5gWF
	 RJer624OihUWW09sQZlVfQtgNJkkd4T/3B1wBJ3vHCzBqylhsQUCwi2XyJY/kbihkW
	 hNPrEVBFhZ2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84010706E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350549358.30978.9077883886606296408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35888441a5fe9d47507c00d795dc9d4f38ac72574a3acb8ffa6104c5f34df653
Date: Sat, 14 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773505493
