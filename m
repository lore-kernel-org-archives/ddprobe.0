Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECA730AAAF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768319634; cv=none; b=EKhbUllrFOOtI+keTc/Qy26EBv2BQgt+7QRvBFxJgAAnM/vLYinkhu27hRxDGoyIeyaMY3v8pFHHzxQJ9CYEyu5kavrDHpl32gk2nBPtYvBKtsRkB3oenTIwiy5TU81V9ig+tQ5K5j3cVNd6Xku/pTjPCc4DPUrE0QeDOxpgHwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768319634; c=relaxed/simple;
	bh=oubHLNn4rIe/rP6Qp7JP+zXPjxJkLUqk5vRVhiMj/js=;
	h=To:Subject:From:Message-Id:Date; b=LQWWIBoBVD1WhrJDLBomVYuL0lUOAc74dOzybpuL66Ccdzi04UViOZ0uW3gCZveemA+AnUm8G3/Ta8ZUrZ0kBrdTfZW3eqGYg6rmvjmIK8NEx3c207E0ZTy8KFTjWbH6he7hSlZLuj5b0iCzi57ky1pzjsy0ueuzOS2cjMvDtTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8EQJsJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8EQJsJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA0EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768319633;
	bh=oubHLNn4rIe/rP6Qp7JP+zXPjxJkLUqk5vRVhiMj/js=;
	h=To:Subject:From:Date:From;
	b=D8EQJsJHN5ubyw73KiufBuYUGXdZYYJ00iytJippB09l+cMAA2WlP8Roh7EW2qj0b
	 P6uOot6mFsq36BU9ybPQlqgChAeoi9vOGIN2kxJgde+ob9d+f9lzy/WvIIyfM+tjV/
	 6pz1NeMcCvTZOTH+mSyII+O17knv7N7WsQeUonsppZu08iJp6GIoYs23H0pify2tod
	 yqGyTGJRqKTGLyLta8gD4JzzMzRJfhvLSP3sSy5Ixt26QNrwvRHyoNV8KHeDfBDYdQ
	 kD55TWgM1cdL/N06Qz5DqPmkasslAXLnYhpyLBC10H7m+akChji6f51xGxyJJH7A6O
	 0ubdNKxLNhNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209BD2F338
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831963357.24810.5015471050459528253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f027a753ca93fd814c4023f5620d4559b937039294d586b3226d976d96e8158
Date: Tue, 13 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768319633
