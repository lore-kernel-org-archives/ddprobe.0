Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19638155326
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766378034; cv=none; b=NyC0/cOfrkn/SFn6dppI8+NA0FzVnqBckHEDWRERQ6crgYR1/UkLJUMqun73VOkJQWiUONO/sgsFpa7XAffSUWyYUEaLWPikNdCx1yyTGSXfIsevzYAKRyD/fiGhwiIKr+HTEnC+pFRhhEoOOZFi/sB5+mZ+zr+k8kRj9kKvHRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766378034; c=relaxed/simple;
	bh=Ja/AEBmtMF6rJz14uklnmFyC4VSW7zC8Bzn9yTr5Mvc=;
	h=To:Subject:From:Message-Id:Date; b=ZCZCcom9Q27pJ95aoBmz0JNAiZewKuI1OkHEMjREkV0XkLyHgAJCSR09SDPhE64AeJGrNbDBzlsu+KCuAY4ywo+L8p+brc/isEc6ccwlzJLzF6+IljMRZzYVDPLhBTEyNNe+hX9Q0mb3IZs1uNKxyP8ZYLAigeRxAm2bxRDAdrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8DgaPEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8DgaPEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F4EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766378033;
	bh=Ja/AEBmtMF6rJz14uklnmFyC4VSW7zC8Bzn9yTr5Mvc=;
	h=To:Subject:From:Date:From;
	b=P8DgaPEF1ikEpjHBDYnAWOHp+oTlRjzywP6olIc8eWjxe6Yo8g74EPmYbrbGfvt+H
	 CJG6Isdj1Za+ENAjuLQwofdD9ocs876Rx/z6EeTZsaCljZNLSfATxG1YQwetf31U4D
	 RIwfyEyFp3GBm0WmfzS02xzhcjPUGJ3+XzzVtHHj4IaQyUwgEfkHQHL8iVdn7fcZ+g
	 Y9zt+U9de66ohY4wQeyHzAUdibklZo43SDR1XpurM7fwBlJMBzBrG4fu60dA3b1q2C
	 KU1olbBZDhHUjPzKq0n0zoLBCZWEljHzmp1chBwaGtqxVp68zIPjhAMERszZUDGb3v
	 Gqt9sDk0x/BAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EADD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637803358.20772.2383104163075413405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eee248c672935959b569ea9e447b40951b14d5c5e38036679aace62095c5254
Date: Mon, 22 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766378033
