Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772F12E6CB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782424054; cv=none; b=h/YV+CWnfQ8NHEPRmSp+SvVtCpoiwsMDYH5+qGiBYjDjQoyBjr7iCO9jBqnH4BP+bmEhI6tCI6ZMNg88IC9oGGxMM8ZL16/F+wm12jqGgo9nZDDNrbVw9JdUYebbU3W3IwaF7vmMsLI8PaaPkUqjJM7NqFNyqP8G+EikLHYRY1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782424054; c=relaxed/simple;
	bh=EFCTaBdy4SjsYnVVvPC5sVRd+aDaA8Ku3G3JPZht7ss=;
	h=To:Subject:From:Message-Id:Date; b=bHgElb+GRqWgztb7AA3r+s8OnpP2kyi4OQGjp5XpM6/Q3ySy3ExOixry5sQaxg8z6W1QrOzbCjKz6wsj+e91A8tsjJuvtHfBAISLV7HfSjJh7TZPcNU/RwSiGKK9HI8bW48k8TEHIIMQSU5kmYQFWEDxH9QJNIo/Ir0z0VnL6P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY5BdZN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY5BdZN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15C10C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782424054;
	bh=EFCTaBdy4SjsYnVVvPC5sVRd+aDaA8Ku3G3JPZht7ss=;
	h=To:Subject:From:Date:From;
	b=sY5BdZN2ZwOUUsO5ni1ObyEoYawBi7DXoBWIrn7AVPZK35LaZtCa/aC4gY5lo9OF1
	 XgXZKrW6NalHxzjF7frttnQI3TH1RX4p7RQrycp11brgcw95WfXJB04k9YgsWy/Vc7
	 PGxV5CParoI3Zk7SmDOAOlI27HQsCC8fehP2xSSg8WDkUSVhMMHVN/YUWXeGzUJ0+F
	 sCwwGB7HUM9S9P5nPFtXFLEwUZ6CbYGszQxWZPDYMkUlwvTSyfNH7Gp84XPHlmFioF
	 qR0kjBiHg7BLhofqroRvOmB6i1+7EfBfZnQhp+9m96FCT/xyqKzMCMVtwWTCofJlSS
	 88vhZ5rD/umBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4ED6CDE00E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242405375.15344.11480149045405545329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f3c41d5e8e72fd87c92b0752e9cf86704b9baf66a4e121dd795f0e1d57b885
Date: Thu, 25 Jun 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782424053
