Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BD8155726
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723808754; cv=none; b=JaZvnbYQqsxHJPNMhoKYASjTzhW7R4SkkEf4pJvvmM0ceVcivlygy9qJSysL5YfZFc4eCfb+Y0rEe1c3X946gSo49qkHVM7qQCGHU0Dc4WPW3fDRGYyhkdoAWlyo8kudiw1sKx4HQUnjKhsch0dMvjy/1QmPBnFGZEPuOppNiVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723808754; c=relaxed/simple;
	bh=zbuSVwSQzaBj/5iNAecg75ExBFRhp20tywFzi05ojOo=;
	h=To:Subject:From:Message-Id:Date; b=ezJxqY2eG1etzGIpRq+xJvxFhO66DrL5wCehFtlnGUVtSobKnapDXdtyRhCgxVLDNz26RqM8pWmMp7jmlW63WE8OiY72/cEwymBIIeLb9bmg77hVZeqdFP6B1wCzAUg1A6t5RHaYnZ3LFFxI4inQxYcjOV5kh8oGO7OuqV4cRe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx22AMZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx22AMZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BD5C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723808753;
	bh=zbuSVwSQzaBj/5iNAecg75ExBFRhp20tywFzi05ojOo=;
	h=To:Subject:From:Date:From;
	b=Vx22AMZOEkIq7gm7xti5/4MmNQpvLk0khINg35GKz+kWN/lG7Vuw/WZs3NLq8yPlq
	 iWH8YTQT/TcEu/88CCxALN4MQkjH5F9lIS1Wf5q9VTXYUxqc8zTJHzlEZqwLlslU8A
	 dGM0KqFHI+Sh3n2sm4vgHli9bpXLefbc7G6cc2ag8NCBncVEG//fXyFLKfBQbp/si/
	 445O7dpvrlWCxcwLMEis+nv5gX3eD9iuLnbnajCZ2re4ACDu5YP+aKUSu+mc20xcR3
	 iYuE41fPk0rObMneAh/7Nkw9dL80oigXwXMWA4X3DHBZ/MjKkHHByVyGih++ptpfeF
	 nrVo3M81k5Fyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE747C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380875367.22019.8997656662733539837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6880cffa8445784846a68688f1e92f24b633098304262372df7f60b66feb02a
Date: Fri, 16 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723808753
