Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AEAE156967
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719578063; cv=none; b=gk5UBNxYIMuDlDmjwkBLCA1oIIblUNOhqYCPLZWezOfcKsOGUa8H++T4+TRhrug0JH5k+WWFj0+plDGTFuA9TA0GdBAqUewzEgML4AzN6IwlGy50QH9spGqBZP1k8VQwFanfErZr836dfk8x7LfF8mlb5X+J5Fo9ToVB21ea5mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719578063; c=relaxed/simple;
	bh=vXZvJMsdcy7zOk6TYwkeUGLLa9dNH+cfJqxF06cHpZo=;
	h=To:Subject:From:Message-Id:Date; b=ofpdAAMKPqiCUHJMzJQnOfCjkSEW5YK6rBWhei/b3IZN6OOVNKRCMXZNOaclwiWhCBa9D0cEZ/lRkNuGSNSuQw9fEI1lSZ9QcH49OT7I1zYwVqcpK21F/UGonNt6VS24Uad35EuLA5pL+9veQSUMVWzD5ZNuyD9bmQQ4QwV2CoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKcAgPok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKcAgPok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E504C32786
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719578063;
	bh=vXZvJMsdcy7zOk6TYwkeUGLLa9dNH+cfJqxF06cHpZo=;
	h=To:Subject:From:Date:From;
	b=dKcAgPokNeFkP3GDEEloPz3A+/7XRJUlYSjsjVfoV9SaUJHEh6ce8kbjbYfgLkMuS
	 F8Xyt72Z2VyWm9/HJNCrsJIAaWZrFcsZmVivr5SzTDghniReis194LeZCnUHdsIO0S
	 eua2f7UE2jhVn97hS1qCP8TO5XST+aUfiOL28KuqHU+aMXe9T56dsU/YvJHL7ZDFUT
	 fu5qodaXnF/TKLbXVfMq1ui9U6yr4BZjeplvRboc8Q6hZTnCLv+lvgWpv67soje3L5
	 oQTG6TTQXI234Fby1xXjsaLEsEK3JzpWKphD78zccZxRx9VsZwLFADwNMokqr61kKy
	 XnulR+E/UB4HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDC86C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957806296.3413.4236677312037638641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b61bba462822354751597bf98bfd42c8c32010d3159ca31720bc1cd05484fc
Date: Fri, 28 Jun 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719578062
