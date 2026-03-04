Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC573090F5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772600094; cv=none; b=Y5VJ8m+TQMVOy7PGsWNgfDe2TJSYCDiNBILY8v91GMKfsaT7Yv1sRrIksA8cin9WDb4ibUAtyS9bkKW4GYk1ZvfWK4kPERzpMLYM1mqqtahGBj4/9/Nl9OcvscTvX0P4L7i3/B9qbTB6h8RFfmnZVFBbaNduU5qDa/YVYuptdZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772600094; c=relaxed/simple;
	bh=A5jSXh3Iuu3dRO8pyZyBbET5rCl3AdmhpR2U7C66+fk=;
	h=To:Subject:From:Message-Id:Date; b=uYM8KkAQfSin17Ft3FLdEb1KlKIkRW7aUe+iprNG3vVFHeBXoRKhTQ3XjO/+y99/o4mn0n5FiWhdKa6x52w+5ojD05eo4e2GiNYgql0uol1CYgIOKxq3jLc8LcNajGo+F+t/VFEFHDndN3NWGASdKAJpot2ApoQxP/1zaA1Ma2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhUUU97O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhUUU97O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FABC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772600093;
	bh=A5jSXh3Iuu3dRO8pyZyBbET5rCl3AdmhpR2U7C66+fk=;
	h=To:Subject:From:Date:From;
	b=JhUUU97O9JF32z/rL0UrJxf1FjYo5TdVzPMuwrFxr9Ci3WU/LtKHokjfOC2fd6HEY
	 ri8P8z13zAynctJUjDIDtZNEBb6U1bPrIgBSFK6w6L2Dl1UwN2xsjaEZuyap0rcpBk
	 qwiDKVxBRdO2ejpztniNu5uIskO0NJtn/Lx+68Z0KzLDB1eOZaO1iPnlLeVC9VnZdK
	 6YMP0Ezyc2s5OcORulg7JjFyfuyEf94gCDxXqJ/FQxlKbBLllujK6i1eufQS5BjRPZ
	 O0/QoJJsNGjxei6N1dxvIsUfrb3uhMoA0wKUGrdAkOAITdicRLe8t0IC4KvxpzHmPg
	 EXdVQq3xnZ8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95996EDEC03
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260009360.12768.15827705314379539983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cef6bdb833c414f4997fcf995db8110d3afbe64ffc59d5b8bf90bbf99ecb4e
Date: Wed, 04 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772600093
