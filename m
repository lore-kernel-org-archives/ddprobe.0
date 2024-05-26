Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815678BEC
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716711263; cv=none; b=i6nrGIbsQ1+gARBHtKorcJG2ftub7WBkI/X2hZqdgDXApY7mz5sHfcCyx6roi6blTkdWupGVUyNPIKyohDPYpuOyHNiOD7hsSWo584KwtN/3G4vf54Uf2MZ0UznqBVqsv01NDFvsbgpx7DAQGjwxakm2hu8alOEkJJl44o2yX10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716711263; c=relaxed/simple;
	bh=1j0P3h/UDRfD8pNQrd3c8C0K0hSHbxFGwmsCZOtqXbs=;
	h=To:Subject:From:Message-Id:Date; b=NMbCZXoXm6LoQG+ERTpCyBQkA0WmwbmQqNXzSkxbcI+hYdqpE6wD7QCBzQQVzTHTL/URpgDIxpNNlUEkR9HkmO1AK/XjYza5n53u3CPK5Pys2+IXJTPPB6PE6zI258knkhij5vQtdasMF98qsk6QlJJ4aO5O3s6MVX9PjBVdoU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBuIyVgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBuIyVgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45D9C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716711262;
	bh=1j0P3h/UDRfD8pNQrd3c8C0K0hSHbxFGwmsCZOtqXbs=;
	h=To:Subject:From:Date:From;
	b=GBuIyVgPhouZTZe2eCeuWv5S/Mv+DvQmm3SSVd+wapF6o8b5my2cKSwZ57Pj9dZXQ
	 fXMsIF4plmfXPEI6AD6h0FWXtP4S3617wY41nss2aBgkSBxe8wZqN6S07IY0r1RNf0
	 x6j6Q+whtU3Ohf+K0D8DqeazhMBUoM84kxZJRedVAN1drnyvDW2sR60bzL5Aupvo4a
	 /Z5jD65sHbDzCX1EI7xY7xJasZ9BwGwb1CzXZeEpp0wfMEFjGQYpQbnWq/78Yf288w
	 GhZyN0rebdBppWfCn6aAxdLacILZhkzYGU5ZQWZEmrIQpbd+8l2N9SajSViJzJjtA4
	 +NEedapSXf8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EEAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671126280.7132.9123664646537007073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6fdbf072a0762c5f96627d5dd8fc8184663ee36ca5163518904cac4969c68f
Date: Sun, 26 May 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716711262
