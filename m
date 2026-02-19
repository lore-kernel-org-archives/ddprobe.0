Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A6B2D1916
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771487694; cv=none; b=G4Xtjvj9cyvXrEWlnNqOmYqzsEXTTYXK8imvxiVWqFEOhjxl+jGtpYC/eNXMhSsG6lAv44OJiIIqWLRu64k/4ebO02ZtXsYqaNirqLNIPtbyLAfeP8Bsjrw3AzAkfLynAooqANZeqVryKgQ3FM5zSaHT/ZQPWXWhqcUigjugtF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771487694; c=relaxed/simple;
	bh=Luw4cynMr9huZKq4EEQnSAyyqf0O41sQhnNwTVwdLyY=;
	h=To:Subject:From:Message-Id:Date; b=oaXeuLhVipIhCBqA3I6ybDH5mwaeRTjuMq8qSn72z1STcUMQ4fnojrDJZ5A0qsRqokNjvAFEJ9vkHc9dIgC/a0HllVlHUY874y/7PkOZR8Q14Bafh1rYhNMkCmc9tAQ+Lqy8aiM0VZOTuH1GCR1GMEe5L9A4x5QwYrqhsTrss8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BU5QZNgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BU5QZNgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB611C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771487693;
	bh=Luw4cynMr9huZKq4EEQnSAyyqf0O41sQhnNwTVwdLyY=;
	h=To:Subject:From:Date:From;
	b=BU5QZNglQhHORT/an7oe184t+5F+6eoK3GUDopxUjkxAd/6GQIz26HMZ/jdVMXe2R
	 TVoLdMzu04RQnKFYNVqfqI68//ALdiqGFM3FeWOOqvCUfejXD7k4ncW2y0QNkEDB3x
	 TE2PbBvRTY9dwFzYw8uuGxBTOLau+T6uD7ECAo1j0ilRIMGLrQTd9V16A4e4iBT6ZG
	 Vcvn8sr9MkKDQRlbUX+NkdbcKQEfNTuqzSGrbkrAVxT+SJwnighNLv955pxfG4T/Dp
	 3mAaQ9Sl+NWjtxELUfOunHh/9h4O5o97dPmhD+7KzuMR3RIs8nAV1kw8uUyB8YHwif
	 XfgpFGOKobI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FEE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148769359.16086.7866793810056677129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48df99a4938d206611d29a96f65412088bea5bc20ad0cf6bbab0470478a3d6c1
Date: Thu, 19 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771487693
