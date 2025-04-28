Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8A8215073
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745881195; cv=none; b=ai0lu1fpDDhFL2AF3EPBOsxRnSHRmyw6sbOV1XLA2w3D+itKmVb1ThZt3Yb5hd4gdR8laFvrUF3P4BQkL+Qg7SblV0NYLGgzC6L7x69EZesykERLzcWV4dtej2b6PJIQlLijf94RkJEj7QUK0XnPnTsHRh8Qf9hq0m6IjR8btOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745881195; c=relaxed/simple;
	bh=65OH5GgpUON0kvf0WqSHV/YinHiLKhbtdBFRF+eAXeY=;
	h=To:Subject:From:Message-Id:Date; b=AY0iL8rqQw7lawIKjg74gl4HGjXYc0N1iL6xKqigK09Nh4oeFjt0O9OSEuwSVbp//Cfrhk5Pm5Vqf8nEtAGvtVCcqI9n987OZ/XkGRZigxoav48xlw5COkN8pxbbFUB4x6loHzD1jOT70dU4Lt46/jIHArYpKbq1fczRhwQ+R2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVwwVIB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVwwVIB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1362C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745881193;
	bh=65OH5GgpUON0kvf0WqSHV/YinHiLKhbtdBFRF+eAXeY=;
	h=To:Subject:From:Date:From;
	b=QVwwVIB/JpXkyWB9csoJ6l1n7SgcbUlPKfFGM3mrsD+uefglKbYIgcjTN0JPfyflH
	 lekEs42WZ4ZhoU+s9J1SWbCVPrt+rGWRK5hWhj8IANRF6y1aY1SxOULKyNhWtd6FoV
	 qmGilgEp5L+2LoxFIhbdeLe5Y9G2a/CqtA8XUeGgKnkCyGVuPaCDe+t5nxtWRHxw1t
	 zFAM8W1Y1VZe0J2D/1mAGw5sYKUJrNQ6AC1ZYVxfPaKL+YoBy0qnuulDdiqdxl1WpN
	 4ahZUhKxp0MOp7Y34MhcBFf+R7I9nq9tmwOtiGhl1PfDvcSDehvki5cXqtBt26hXfK
	 grOEyP7Sivj4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F241C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588119357.26535.2772240256379944204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954fd340e51593fcd5a7b26899577ba39deecbe12bbd8c94ffd0d6d336a79a74
Date: Mon, 28 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745881193
