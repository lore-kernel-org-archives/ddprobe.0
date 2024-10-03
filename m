Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F8613B280
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970953; cv=none; b=IJeRH5JQVQ2Ti2wGOD1pcDmdQECmnGUrVRFSzpB9EcX3vjydrC0AHFbIdYaaLsgCM6545v1qcA19k8CLipA1kEXTmNQRCohkacdE+SX71JWpvIXNNUOA7+McvT73lmKJ95Jkucun3q+Mfwi91++nrVHi8h1dNbMhqZXMJtIlNPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970953; c=relaxed/simple;
	bh=MIUdzX/f49QU25aIbrVFd4VINqAXDnwHLN+h2pKsl88=;
	h=To:Subject:From:Message-Id:Date; b=KAnoD0bD5GcsJiZJM8H5HzdUIWtobQm+kCv9tjQP7Hl2TU2H21VmF7lfYAQkQ55S79zlP0+VgEx42TN8G13KPBePt5jq42/yMmYxAY1NC//7FmUE+I0nI0ch8B3V0hfoQV/gawj19VP3BJ+2/6B5Sdoofa1OqR4y7UASNtp5QEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SF+oKd+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SF+oKd+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD93CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727970953;
	bh=MIUdzX/f49QU25aIbrVFd4VINqAXDnwHLN+h2pKsl88=;
	h=To:Subject:From:Date:From;
	b=SF+oKd+/c5SPkIaOwYP4nPA5O/COyCqVTsMgWlQPXYWzYx5Qyh1jXIPclm8lwnCeQ
	 U+tpvWymh1nYDodmunlqNFqFXgB5ocGvZtAT1o+RiX9QxgiGO5fBw+xFkWAuxnUcPW
	 O2iy/pARkGJQXQO8E946JSwqtBZLZ4zQAQnkkwtFnHfkejWnd3/2pX6Gei4pnctZ+j
	 DmMNtcStLlzOvvaEzYYzpD2mYI5QW6JxKXhhpF38c0BYxC3DbMyR3DKc7Ti1sC5SkV
	 DjyU/nghnbfjr0NY1lGKdOrXW3L75WseaLD2gXQAggROW6lM7rX+xBCX6nqWcS7Adf
	 /l+j9aGM2gy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991B6CF34B8
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797095361.23914.16195542965800473173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81acfc062f834e3fdf4ee3f18f1f1f3be2eaacb17f3f8e5bf35a0dd2348c1e14
Date: Thu, 03 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727970953
