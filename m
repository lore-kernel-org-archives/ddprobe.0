Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744A33DF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749041394; cv=none; b=o6J/9WYcBT9IxzqTBvq84DMfTC6vOkZgyFthaNQ4Up5XhLQoKedYkYmBDvEIni0SrIKibfpO7RqOelbv4sD0qrQ+W0dM9G+5yQdSmgI4ucrnVscqnrZch63QRQQouY4Fv21fIgNKxgAP3Kr7qas/hFAxfLSnl6450gUpFrQzJko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749041394; c=relaxed/simple;
	bh=IKj7aBudZUAklzMPM6Qj4rJ5RJIjXggKintQ0omyARI=;
	h=To:Subject:From:Message-Id:Date; b=cfpW2q+zonY9um1md1BuLMfa1SlAGM1raPKSFq2eqORk85HUhhQCZVpBpNzLFc/kfFCdmVKN7Y84FVgvk0sMRafYYE4PuIOtmiWkq6keiazuiR85AgVPXf66cK1QoheSn5eLOpbGKa0TMX+aGPDnaK0Qoh2H7btQyJfRcC/wFQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+BX+ifs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+BX+ifs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC351C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749041393;
	bh=IKj7aBudZUAklzMPM6Qj4rJ5RJIjXggKintQ0omyARI=;
	h=To:Subject:From:Date:From;
	b=S+BX+ifsc4qkteMa4fvzxEByyHdnxKMMv5F3XzENJB3keo9GjcWTPtgTS2I/+hdIx
	 xph7C+Os2nHBHoRE2cuacV19dTBDju3VqUtMm08RhzJ/82Xv8bOwhuVIKbXfw0AdYq
	 G/gwWeKjhCSxXRzi/PM+NlzplAJ90MIrdQZGfjxl5wTb7Y+3bQ7dPqzWbSP17LtzK8
	 NNOSX7vGkdkQIFvYBzY4RJfjGz6AbTD+OSSUGLmrtOLapvNEhHTvaYOz03iKZSvRfH
	 o8Wxkrj94lG+1z+Daoy313rjmQ65BsJsz1kD9RV+3UsU/OHkcrsr3sWg8t3s3KYBhY
	 KqbDfoxuL8JxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8BC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904139360.30455.11855073077862814744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f5aecfb86c959c6e3eebbc6fdf8d7643d5d39f1167f3c1211ae04a442ca2ed
Date: Wed, 04 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749041393
