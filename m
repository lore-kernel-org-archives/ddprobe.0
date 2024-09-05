Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A045005
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725556554; cv=none; b=hSX4yodeCl7tPIXrDAafZ6OYDAt9jKsVNceJRtyTi0Ovv5oTCZwRRevt0ktXbj4rMvg98BvzxgfHcalEdA/y9plplIkg7KaxfGiWTjZuzKCAT0NqsyTjJHAHqaXsmO4aFMX7lzKUfdqOzbCBeF/v+yUN0VXM5sq3VmpQULh0YY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725556554; c=relaxed/simple;
	bh=wV8I/c9L/6UNU4vbyEYodH+p3Klx66B1I1kXm2SVt5Q=;
	h=To:Subject:From:Message-Id:Date; b=TYTplNko0src1NbTBDiQ4TLwXyM+l/N6M9ULk8SnShiJRrbREMMNJrqM/0jo5OYw6gM0RbOS9mnxCtJZf6HH/haeMx0o2VuT+XQnGFo72rYrsOeZRlBD4YK/PJkXVJ5g8ueWYtWmd4U6B+QWQUQlBnXa/RBeqnaZfcJBX+sdP4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKCvDdIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKCvDdIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF637C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725556553;
	bh=wV8I/c9L/6UNU4vbyEYodH+p3Klx66B1I1kXm2SVt5Q=;
	h=To:Subject:From:Date:From;
	b=EKCvDdItULUBr0q+45n3NA3DQKhWtpWANvXLap4sM75jQ8kEZjxdr6OS4epsBEKqK
	 Okc6MsrLX4f6rtJayGbIWHWIa+GUpD78ktaJKBFNzX+KammK7jfQwfrzjTiyNH3DON
	 iUFawqWfFw5uWO3c6w47ce/gPh13yDwg4VjEW1S5QjKAlVcN9kw1IiX7BbXGQZvvac
	 MgmgxnEBM+1qOMvUoEoN3bYAii3oHZQv/QZvezhWak+WEG/0FOlfXh6Do8vMQnbeLm
	 OTs0NJRLHrHNzrdP6G4w3hQuxip36BNIyS14hQ4QOfz48wMVqZx3xYZaVdMszJSYKx
	 cjNTIIyQKX4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999FCD6E56
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172555655361.6361.12559651447172845774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407b4ccdf6beff695b909f17568f4deb0bfc35fa5e498f6cf00b491282151172
Date: Thu, 05 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725556553
