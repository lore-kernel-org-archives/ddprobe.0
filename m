Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1549E2222D8
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753981195; cv=none; b=Q7w4+H07caEArGLY0FQEVka7uWoa1Ex96Y/XWOIoq0bTawmBZvjNNRP0BewCWab9Pigp8TzfSt8KHUHg14CWcjPqcfd14LsJU3abWPXxrUkKB0nhfG4/dtzyxRll7pmtPStv5+a4BqeMC3YYHx94tC7/dNbnbRk8K3pqNQj7H84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753981195; c=relaxed/simple;
	bh=PS8xQAJA6UnDUj99/dClYCq2IyuQP/P8YwMPnjvDtz0=;
	h=To:Subject:From:Message-Id:Date; b=AqEUkrbR2p1R1la7z0GXBXgkrf9n7bFkBLya8tFtw3DalPwhKY0rUQHWvm7gomrKYaMz9EYkjyIAxyXmrcxF+NQ1jlNn9GScKR1vi+oUqG29t0/CbxV61iWmGI5zk8UCtib+QpFK0O2hzx2XYTg/1aM3zzS0PUJoHi59uk0pq+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXaxSak/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXaxSak/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F0C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753981193;
	bh=PS8xQAJA6UnDUj99/dClYCq2IyuQP/P8YwMPnjvDtz0=;
	h=To:Subject:From:Date:From;
	b=AXaxSak/qGsA0yG9pqDnZa3La6ZzP+pUqUlmxHGuDGZG/EgJ4KS1X2G5B5MjAMFNA
	 Pudq7itkIISOuEVkfQk/Qpp59bezyJ922kQ7t9a9liqQmSeJyfwOxa2MPvJ06pIv7A
	 /08I03h9DZ4PVWfBqboNXFz5+3ZD0EjhlkQlh5LBLiJJ23PXdZpYyYbHOWx7MzUbkC
	 t65Vn34DH6qMLOSBEh8uCPY7kiFyi72/ws8qf0Kbr1hd9nxUeUSCt3rcRA/dJhq62t
	 ZzuKh/3AP7W5aSc4rPrApbxj3SSFT5IH87A6+F1VHB7aDqLP53HCMNTmJZBSPaSgNa
	 RTtWIIQ11Smig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90209C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398119358.31796.6822557903511940067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e19c679bda1f7e8bc0fc80559b0098ed9dbc674d4e4c1fcfff3ac92c04aff7
Date: Thu, 31 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753981193
