Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F6170A11
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761711594; cv=none; b=TbRUHVMtxYrtZEx4MIxIE1usgPcZVU6Rxq6O3oxLco6MAfS6mlfYVDjssuR5tfK/2MCq+W3cpzsLcrC5q/CjZD/3eb9joRJ+5CYgdYYevgUw0fCdDh+0YzVgyLNA103zClMU8G3BGDYmAYirV/nf9lopKQ1E64ftNWv/zDsob3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761711594; c=relaxed/simple;
	bh=f9vPTeN0HiDaHZM9aOrz7qzu7mt+3wGBkKpvNkTOe9A=;
	h=To:Subject:From:Message-Id:Date; b=a0rI7jLHWaVXu+qbToN/AYGjI0XjyKC3MELbOOnYbRght90v9GOPDTybqwLkDSmX7tcppnAZDxVOVgcOUzMuow1L8zx/cCPe83AwrjOohBCJpDejsqJ0SyFEae3LTwGWF18DgjUPYud5oHLe4kHs8JvMhtKOPq7O00fhnNDSHZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSlrmlKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSlrmlKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B619FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761711593;
	bh=f9vPTeN0HiDaHZM9aOrz7qzu7mt+3wGBkKpvNkTOe9A=;
	h=To:Subject:From:Date:From;
	b=oSlrmlKUbPF0SjNqkAXL0BPUmB3svYJ5kOUo0ylyblEK7SjwafS85vIP/saxAvf+2
	 Aw3P1QqJ/z1R3Vds6/eq8v3YIN8ukKWoWFWgh2TnnwDPligOvLutZb/XFeHwjy7aqE
	 eG+Yy06nVVt5fSmb66UoZ8HZF6kp9dY6bzXsvBOUKKolejd5/dcdWn7qgC+Z8rTJfV
	 EgWIMFUZM8ai0M53Dr0K/AHnYUzXNVzTkarZjqQWe3/6gxNcyOHRSpIzaCZKr2uyZe
	 e2fV6qulrvqkTwKZ3mRtwGAzmQTMwfJwUYGN0JyTl7LzTKFPAdmS91bH7D5DIzetg7
	 82PxTvU9F+0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E001CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171159360.11053.9616542621013056179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba440a51c7c6d73d91a96a282c424a12107772c54105d3d321fca5e1e54c8f1
Date: Wed, 29 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761711593
