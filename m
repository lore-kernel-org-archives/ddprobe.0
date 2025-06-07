Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2739D1FBC91
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749299994; cv=none; b=e3UzaAHvA16QUfeyYOOwOy6FWjldyz4laZ5xWTR5whstljtiwY9nQnLuZhkbsN+OlrZKG98468NiaLLH9cCSp4aVaTSreKWV0PzNEvafZbI3ES/KHRxVn/bpmdlq85Fs8wl0fRjEgxIa8Udhbi+tpbV6Ool9E6mi5fsLQBvwKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749299994; c=relaxed/simple;
	bh=OtDEhcy6yb/A2WaJGLCZYUKcZib5u+26RMGGWJ6ia8w=;
	h=To:Subject:From:Message-Id:Date; b=d/gtaZ5u8AydXqNdJAIIe05g6MBqlckeAmT8mJVtXnRQehk49dkZ0vrpE8FCKptEHBLYxAYJYwAVlLBd34SNt4FEac1nVu1ytRoPtdNhNk1jy1Dk9z0J0IjKE8ceI2MtVnFZEqmGWr8LvSqJrBfN6Impp0k4n35FMdeI5JjUkJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXZz972U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXZz972U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F211C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749299993;
	bh=OtDEhcy6yb/A2WaJGLCZYUKcZib5u+26RMGGWJ6ia8w=;
	h=To:Subject:From:Date:From;
	b=bXZz972UJOBBoBqhz3xJ4g3aQfv/1ppHNJIBHkam6pTczvZWuwkiPPMVoc27U9mGQ
	 IZFkKxDcD9ExEiPIrMO6w0vGuOKLo9vTEGneffDSdQCmgsbo3JHTnd5q+d42g/iu14
	 4uWVYSYGB6Cy1kQaSSUcIPnY/aZSFS47I/mm06WF7IL/daixK0mGyquFIhG6BZ0Gp+
	 ktgOluEw3U2QE166WvFBpTk19xY6kwWDjW4mi0OpW6PqAyY2hk75sBck1xN4TcGyDt
	 qB2c7GfHkWRvXU1BAWkX/t7ozapbzhXZPnSsxr/xtihih8b0/Iu7kCEFPiu9YHHIFZ
	 tDLe2p0iWXDIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4A6C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929999357.8138.14119108190602511251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e593baa5fb4a219549ce82d3324ea9311e30c9482cf825a9f9ef1658d36fecf
Date: Sat, 07 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749299993
