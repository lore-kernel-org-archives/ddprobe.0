Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9F27702
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738985754; cv=none; b=iGSIWFQ9/U4O6BMYoSDlS8JURPweYa+UwmwbWCY6rUyUaWIhFXckAPDHnNXG6dRXBp/Xi9l7Lg14fo6bVfFzYK9XKYuDbIHS1derGhpHSl1756Y8sFopUEaZh8b8gmR2EYCehWYsBdZnrJL5Jf0Qqz3KhRIkq/HyYP7F5ET8LcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738985754; c=relaxed/simple;
	bh=NIdbAVBesuGbRsmUN28v0eLvfUIDtkVmY2giC/2yfoY=;
	h=To:Subject:From:Message-Id:Date; b=mT8pAB9DE/vpKv1OxvjSB8GxF++3ZBoei6kuLOf6OBKfX+WdAVtu875Mx415ObQDS+I4osQ80c5xJEjWCZzs8s0zB9p/S+NVEMzdBY9f33v6E2zjmYiUhptCq5/S/93Xm6zccyUcVwR4G3glTpSLXXb28SOEC3mBEXYhjVS2OcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObEKbpHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObEKbpHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA700C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738985753;
	bh=NIdbAVBesuGbRsmUN28v0eLvfUIDtkVmY2giC/2yfoY=;
	h=To:Subject:From:Date:From;
	b=ObEKbpHzPT8WUMxDBFGOroltb95bTN5K0PhWT6vdjPAwW3cryGocesFQxZQy0Baax
	 OqXhhkY7sq2NxWbMhnxqqeF/a9o05U7FlzXvLfgRUY5JYzugqjetPpfM+6O9RFJuNh
	 GRnMKHvZ4zxhUlNma24xgjFwwA9vE53wYsiQ6iGB91BVE9mz7k1wSaYncwCAOkaVGf
	 C9ZdHQJZcEXQmzlPcmbyU76up6uyTz+LS1ZaDCqEnI/PV9hLfjfRJFwQuMGGOp0ifW
	 8rUngfc5XasJeUvMyCPHbbphu0zYOZJ9N+S/inqvkPy4StzQlr6WHuN+QB1Sg23QvI
	 Ko0GMdYyWVcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA2C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898575360.3554.5974433880147088037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84172255ed978b0de18ea8cf039ab775b5df9ff18beeb21046bd0c793adb107
Date: Sat, 08 Feb 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738985753
