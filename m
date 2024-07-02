Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEC73C38
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719885923; cv=none; b=qnTA3+UaToSCNFbK/vggBuotBXSs2Nn6dBBNU/rXpiYJk4CHiD8YJotQJZTZ19z/+KgPvqe4xQBtnUOPnP+333x38o59t2P4lyJnAj4++4qtTcTTgxNK1wXmwOUOT2iRd1tQ+SINPR2PWzn4QK0HM63qsJGcqX5N5E/eAP0H0hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719885923; c=relaxed/simple;
	bh=ob1MXqMqP179H+HEZFfRRzSfHGH99aPq0JCJ2BSw21s=;
	h=To:Subject:From:Message-Id:Date; b=IbaVTg87azctsoVIbfdcCFNtawSYYBnc0u8d6L9OOFLd1cCWEzeoatkCcAyyhpwewHgCvESNRZBY3S5oy/sfg8/faQvWz2LqA51fmAF93XjgI5EUw4XlqgP8NbbLnGSwJVD129R1z++Mod4KV8/Mw+tPr1tlqScCpVU9CgBoEhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq53wltU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq53wltU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFE6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719885922;
	bh=ob1MXqMqP179H+HEZFfRRzSfHGH99aPq0JCJ2BSw21s=;
	h=To:Subject:From:Date:From;
	b=Dq53wltUFv8aEUW3I3qxfFKIz2OVrarFClCLAWz5NjacIxqz2na/z9PKwBtimxhzb
	 MJoYbr20cq5S270FDBr53OaUFtAzwTE9UmwywOZEWW6DjSOZFhb+HawvDUyOtIUyxY
	 EjwG657kp45NtjXmFuXVD1NB+El5bix/S5HgEMOGr6bF8Fy/q8VbssraLQ5vD0iXR6
	 VWyaRnPeJfDwAz9RegTzIgwXXTiMQ3rawIx3tvJZWk900fb26TbOEF7mQVM9Mr8QAN
	 HElg413aFtYWzdu7pCvOLeb2xbTsE4Nn3DIGRabp955ngNETONAMSziO2O0jEd7eAX
	 +QWizb3IYh14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F65C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988592277.18801.5007126754830936455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bdc109bdbfe72880271814d83cee943ed15f4f23a45ac206b5517bbb2d10f4
Date: Tue, 02 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719885922
