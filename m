Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CE1EAF6
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728617153; cv=none; b=FHKxFEQ9YgIIgxGWPrF9zGEOzjD6azXY3MsEZkqnqVV+PZOINdCwj7Rj45vnQOlgUV5R/EIV23cLzc3UpF8S7bkYzlLBPpzOi3UUlcpcVlN46Sn+D6LN79HXjZxznvEZgBT46NiU9v+kACTCqz7hFRw5VeHOYwMuhA7jhdLgDaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728617153; c=relaxed/simple;
	bh=Yj6U4zfzN88k5wguN9QypUKaIrIBVaDO7RsNAM0J/z4=;
	h=To:Subject:From:Message-Id:Date; b=E8mr+C71dwvggW1JldF+gqUMGIAXMR+e1HhFjCUfZxj4UYwO4JnyGVc04g7pLmXKKZ81MQyeLD1yInIsRlggPi5Bxq0aSp9suyiar5aC3Zh+rVN51Lcxks+SpX6CYPMk/A2w+SHLUSZWa7K/dj+i5IT5yUODTXUjt6k22WQuNbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm99LQoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm99LQoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB620C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728617153;
	bh=Yj6U4zfzN88k5wguN9QypUKaIrIBVaDO7RsNAM0J/z4=;
	h=To:Subject:From:Date:From;
	b=bm99LQoS+gEJ2GQpRvJ5KJQzLBjb3jUfo+0uM50ttxHrcYIEAjbhN4z1BQN9tmWGK
	 Hshj5NyYvZw4YokJxdA8vqBjO1MyD1S7I+nTo9One8l9Ft79lm09Gc+X32pEOK4Pr5
	 QPKTyBGmFBmHsAHjQOkbEu+y/bavVaLH3oc0qF/BzcZtUYfrQ6CIYEJm0ugYYkUaG4
	 04N30uSFd/sqYtWbcXwWN+9cr/c7vzgbRUJj7vYbpjKOszeS1/QJ7ku3/EKIdKVCYW
	 noGEJM6fREjBGX0SChvFYmMv5OlFi/b7m0MB8pguwzoL6+QEANs3I3fcZiQWdDiupJ
	 WVFiOzIrFbkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C967D24463
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861715363.4381.16660354066735867164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326f7fdf8d32b302d684f6e248b8a5a4e075c1dafc6829182b6c77f298553123
Date: Fri, 11 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728617153
