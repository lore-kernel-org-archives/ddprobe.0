Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0769230F927
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778074654; cv=none; b=Vh32uBB8Ci6QbA9FHUzIVBRSfCXgnfMzxpC4s1sDJwWnFqkOzMiRAUUQKI8CbvoBIi7MQWKsnlk7y/PZ0EEWl989leWS+0cjIsvWDXTC58y4+9YOSRqYG3b2DNUV1VuWwCFvL4JQ6WixUojn7fahapp7F/Z5GubsjXCChJWJ9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778074654; c=relaxed/simple;
	bh=DBqCSTEUzkVmY9DxJCJ0WIFqRT4+WhN4QtjFEtGttI4=;
	h=To:Subject:From:Message-Id:Date; b=gluK/fxjOEBIYnxVnGNkxNipS7/a+ub8799OduGI43Piebac1l1oGxVMRGuu77iPnYGdeLkN4/o5pQ6WxEBqdiTOa8MP6g7BmEsv/GglFP407X87n4kq26l8DgZxHhQvtkoe3IVmRa9n/zzo1UlHurnqP5dK+gxpXwhdt+QX9h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxhgQ/Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxhgQ/Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93A2C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778074653;
	bh=DBqCSTEUzkVmY9DxJCJ0WIFqRT4+WhN4QtjFEtGttI4=;
	h=To:Subject:From:Date:From;
	b=RxhgQ/Yak7T6U3sUkLMvKfubv/LMUqvFObaZuyyc9heW3DWEWXumBstWsFJQ1Hyvi
	 zI4ZnEn0RlOCR/nKHXqgSlrQVe3Vjik62g+LGwrS/iaZkmRfcwOkbKVisJOIkG4FEZ
	 CWSJ+gUlw1AKzRSVeucVBhuQwcwOqOr+qb6ybGtgmJQ2Iz2uC2Qx80PBG0n+2BQDa7
	 u2ZphLSnPNn+wqn5aTY1buNYspibdKxlWS8Dut3Q5rtla7MJg5Rd3B22Yvfi8SI8/P
	 /y5WxpVbjXuI05yDy+GmU60rAAjluOLQ2xkJr6LyG0egw+8DV/vdGmMg2XSOMLlccl
	 cR9VdvXiYRrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47CCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807465368.3576.12685282307515171384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee75f448afef1be550660c3d735d58fbd7d702a016ed5d47bd7015bce1ba9c1
Date: Wed, 06 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778074653
