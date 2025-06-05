Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316B7199FBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749136194; cv=none; b=qoVaodBCyPzGrVuZYah97PdOsCRavPYjVjhCXwvlLbHwdeBpcfPN1HUeVhU/aQc32m2JDRy+NZ3FN7CAXV2zP9a0gARtgLvVAJGmV4L8hdSR9TwJVrF8TK1PdIvY3AVuAYuKO5U2OrXJj3XSE09GNcd7Q/AT7+mglVP+X6jGNlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749136194; c=relaxed/simple;
	bh=JAn+gK6wB5IRIPRZLPqW3WjS4u2UCZDlkMszzrS1wTE=;
	h=To:Subject:From:Message-Id:Date; b=AJIiUR1xqD9/d4GmQoKYPGD2Chc3RwV9WlfcqVJF4Hi7mgqju3vCsh5u2ZKAkTCfwINK2vMff4xRj247j/hsuYCn+xucdXlTqvRs9P6shHatsRfF8moSslGwBeZtbz2uxY3ddTOFIXcP+Uj66H6BicCxKp+1GcHHkbHXw1uCT6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vK6X1Hc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vK6X1Hc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA5C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749136193;
	bh=JAn+gK6wB5IRIPRZLPqW3WjS4u2UCZDlkMszzrS1wTE=;
	h=To:Subject:From:Date:From;
	b=vK6X1Hc+cnpxdnnrk/giEKG7xN6jogEjpHLacUgKinS4mhYNJqjJjJpd6GcdwuVz2
	 Vp0RhE460c55x4wi9y2cugWtgdEXUHTzWBL5kCkPzWp/+uvE4IAW257EweAJT9PSNF
	 4cmpN6DScM31EgFAjHqaB82VY1veQuopIK4XoZmQzU7GrovVX/YfDALZ5Vn8LacpUe
	 Uq2ZaaPoR6b7/sjMals9tVhiMKob1EDdsDlwOKqbCSyL8B0Nm7UqvYzY5s3mWJal9w
	 xObRKJfKrp5hdJpnh7u2R93voegXLAF25sYcUEz9almY2TrV/k5xxt2VRzKkUnhEN0
	 sWn8lwsniTVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93429C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913619359.15205.5861208073766304966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d734f4def2b5edf5e8ebe9a3ca91c563b8146708a3452319496d89b4f99ba8c4
Date: Thu, 05 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749136193
