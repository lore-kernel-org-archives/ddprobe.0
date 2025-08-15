Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173982D0C9C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755248394; cv=none; b=iVa4+bB7BIDsNl3nJosVki6PmhDDObXyf6QXypXhYe+y9VHOlme8/wolr1fMEP8wuDlEt9hdzAjceyY/ECDF3lNcarZaizsQCv0oAh2idfHxejJDJjRrlH2VL3lXzjSGzZMAHl21VvLEgFVmSdicLeHEh2XM8iqjD0gJctcBMoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755248394; c=relaxed/simple;
	bh=cTl73C7F9vAzNGX38Kl3oxYIdi3hU+4yXmWAMdC+ZGo=;
	h=To:Subject:From:Message-Id:Date; b=qv8mLBqvE+HS9HVw5IvypRj7h1bYFs6b+rmZjlRxY6PmekAIQMiyEV8CeKdITxjx1454FWFa3mtis+bz0RE9t94HPlRvFbmZcKzMtT8G6ArG6V5BWmq1TOSJFf978FUFKP5OXvGkpRS8Gu9njuL82CndljJXtqNW6Wlu0zQUOig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEBILk7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEBILk7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0472C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755248393;
	bh=cTl73C7F9vAzNGX38Kl3oxYIdi3hU+4yXmWAMdC+ZGo=;
	h=To:Subject:From:Date:From;
	b=QEBILk7Id2Zas0vPZSH/xELprkf7h+UBunu62zDxY3O5+hQf+0jlCW14+6++S5UrI
	 qMSBnkGesH5TjL7VYhtVxTkUuRxTPd4+wPG3FvSjLKTnWmLRoqXPiB+Q+7vP6aEOaZ
	 Flqc2fkT7LGUD+adEtT7TdVI9JbdAT2ROXBTLzjO3meMTcDkTpomYgG9luQhh+Nq8C
	 gzv6eJhVtTCovC1/06Q87FhLVP8SkOxblIKGOrseEjDhITkyx7i9TgUg3n1q6T3Z7W
	 xTfhzlbChfTOSuALrl8+lTERvErKIj+Kta3SjfDnrJNy5+GcsNp2EJB13Ww6DVvM2+
	 jHmRFCCAgf4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBECCA0EE6
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524839358.29907.752810910671008486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eca1ccc2a963fe9342b7940191576fdd8a346c5dd412bed33aaec0e7a72e648
Date: Fri, 15 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755248393
