Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE5C18035
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710511096; cv=none; b=j7B1HHqxK/yn4nsAQcQ8Ndaf8XhAq8ImgkX6QpcATYBsjmvUOxds6sIA+hi23RT3+7p0PGKkrGqrvwyKg/BjewghOgayae6YgQkJxtlaLpGJtYJeKQVsmw3aATFjR7I8wX0C+E6Dh4tqpvdsly8+kDSUoZ3wLGSxnRyRsJ88ffo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710511096; c=relaxed/simple;
	bh=yCiQEqt+P8DvBKonphIW6eDuDnt7DxZc4oiiIDPOD0w=;
	h=To:Subject:From:Message-Id:Date; b=pTKQKdEzKxLVjkdl3DAquoZZhbWVcphqWwM6aqqWUxQoLQbrBU45/cZ+KIVe2qAYkoVbyRgPoXmxXQJLj0mVafv4eW6uelYUfoBNQlM9koWtSKuBgNoNjAp7jALFFW+N0KzoUHlttHhIj6BSLeuPSKmOcNBHcaZCV8qlYjPP+NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMqk2rzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMqk2rzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E39C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710511096;
	bh=yCiQEqt+P8DvBKonphIW6eDuDnt7DxZc4oiiIDPOD0w=;
	h=To:Subject:From:Date:From;
	b=ZMqk2rzAxqfQud+E5tXfIBbmh/ZWVRcOM0SShKFm3QSojqrEEFlMsTZt0BcL8Tlrz
	 e1yZrCo1bxcNCUNLBgHW3ncHR+EsBTKE9iZ3XSK42yvqs+VpV6piajhNxC5Pms5beC
	 SAfh2501KHjQ5OY80VV1KmYmun8vFmAPDncLcdmCYkhJV0bC1yjcNRCaGIwBuJ8tU6
	 eouuerNqoyybQf4foc6mfCSWlUOQlr9p0SNnVNIlMygmr4UR2358QznzYTc5j+NQ8T
	 03rFs3IN9wWN3ffweDneXqeu+ZpL5JFsoQ9847Udi6ApnPbN8Nv9tIK2UuvSLEQlJY
	 w0UOYB7a6nR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBABC54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171051109636.15745.12031941659070891126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c616b2e8787e89312843c937f9fb31a7b9dbcd2ea214fd82ac21f19d43e97b57
Date: Fri, 15 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710511096
